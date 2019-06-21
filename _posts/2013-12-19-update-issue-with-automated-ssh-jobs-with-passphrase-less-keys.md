---
id: 96
title: 'Update: issue with automated SSH jobs with passphrase-less keys'
date: 2013-12-19T23:24:18+00:00
author: John Pitchko
excerpt: |
  <p>I found an issue with the code I posted last night that explained how to use passphrase-less keys for SSH jobs in perl. I’ll update the previous post, but post more details here.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2013/12/19/update-issue-with-automated-ssh-jobs-with-passphrase-less-keys/
permalink: /update-issue-with-automated-ssh-jobs-with-passphrase-less-keys/
categories:
  - Uncategorized
---
<p>I found an issue with the code I posted last night that explained how to use passphrase-less keys for SSH jobs in perl. I’ll update the previous post, but post more details here.</p>

<p>The issue is due to a combination of factors. My lack of strong knowledge of Linux further compounds the issue. However, I’ll explain things as best that I can.</p>

<h1 id="issue">Issue</h1>

<p>The issue was that my Perl script was not properly executing the environment variable configuration script that keychain generates.</p>

<p>When keychain is run, it outputs a script to ~/.keychain/$keyname-sh. When run, the script loads two environment variables:</p>

<ol>n  </p>
<li>n
<p>SSH_AUTH_SOCK</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>SSH_AGENT_PID (the process ID of ssh-agent, which holds the SSH keys)</p>
<p>n  </li>
<p>n</ol>

<p>I don’t really know how keychain works, or why these variables are required. But I’m sure you can search the internet for more details. The key message is that both of these environment variables are required in order for ssh to work without prompting the user to input a passphrase.</p>

<p>I included a line in my perl script</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>system "bash -c 'source ~/.keychain/raspberrypi-sh'";n</code></pre>
</div>
</div>

<p>that used the system() function to use the bash interpreter to load the environment variables using the source command. However, my understanding is that the life of environment variables is the same as the life of the interpreter used to load them. When the above mentioned system() function complete, the bash shell was terminated and the environment variables were erased.</p>

<h1 id="solution">Solution</h1>

<p>What I needed was a way to run all the system calls within a single system() function AND within a single bash interpreter.</p>

<p>Here is the code:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>my $keychainCommand = "/usr/bin/keychain ~/.ssh/id_rsa";nmy $environmentConfigCommand = "source ~/.keychain/raspberrypi-sh"; nmy $scpCommand = "scp ./boincstatus.txt pitchkoc@www.pitchko.com:~/public_html/boinc";n nsystem("bash -c '$keychainCommand; $environmentConfigCommand; $scpCommand'");n</code></pre>
</div>
</div>

<h1 id="result">Result</h1>

<p>Code tested multiple times and was successful! The next step now is to set this up as a cron job. Once that is done, I’ll be able to monitor my Pi’s BOINC status from anywhere with a web browser!</p>
