---
id: 94
title: 'Configuring secure *nix SSH automated jobs with passphrase-less keys'
date: 2013-12-18T03:13:09+00:00
author: John Pitchko
excerpt: |
  <p>Phew what a mouthful!</p>

guid: https://www.johnpitchko-wp.pitchko.com/2013/12/18/configuring-secure-nix-ssh-automated-jobs-with-passphrase-less-keys/
permalink: /configuring-secure-nix-ssh-automated-jobs-with-passphrase-less-keys/
categories:
  - Uncategorized
---
<p>Phew what a mouthful!</p>

<p>So, you want to run some automated SSH/SCP jobs (say from another script or from the crontab) but you don’t want to use a passphrase-less SSH key? Here are instructions to help!</p>

<ol>n  </p>
<li>n
<p>These instructions assume that you have the SSH package installed on your local machine. I believe its pretty much standard on all distros. If not, consult your package manager documentation to download and install it. For Debian/Raspbian/Ubuntu, the command is:</p>
<p>nn    </p>
<p>sudo apt-get install ssh</p>
<p>n  </li>
<p>n</ol>

<p>(At least, I am pretty sure that is the correct package name.)</p>

<ol>n  </p>
<li>n
<p>Generate your SSH key on your local machine.</p>
<p>nn    </p>
<p>ssh-keygen -t rsa</p>
<p>n  </li>
<p>n</ol>

<p>Your new SSH private key will be stored at /home/$user/.ssh/id_rsa. The public key will be in the same directory and called /home/$user/.ssh/id_rsa.pub.</p>

<ol>n  </p>
<li>n
<p>Copy the public key to the remote machine.</p>
<p>nn    </p>
<p>ssh-copy-id -i /home/$user/.ssh/id_rsa.pub $user@$host</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Install the keychain package.</p>
<p>nn    </p>
<p>sudo apt-get install keychain</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Add the following lines to your code before your SSH command.</p>
<p>nn    </p>
<p>/usr/bin/keychain $HOME/.ssh/id_dsan source $HOME/.keychain/$HOSTNAME-sh</p>
<p>n  </li>
<p>n</ol>

<p>These should be written to be executed as shell commands. In Perl, they would be written like this:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>my $keychainCommand = "/usr/bin/keychain ~/.ssh/id_rsa";nmy $environmentConfigCommand = "source ~/.keychain/raspberrypi-sh"; nmy $scpCommand = "scp ./boincstatus.txt pitchkoc@www.pitchko.com:~/public_html/boinc";nnsystem("bash -c '$keychainCommand; $environmentConfigCommand; $scpCommand'");n</code></pre>
</div>
</div>

<p>I needed to add the bash -c because the source command is only available by bash. The default interpreter in Debian is /bin/dash shell, which does not have the source command.</p>

<p>The detailed explanation can be found in my <a href="http://www.pitchko.com/2013/12/19/update-issue-with-automated-ssh-jobs-with-passphrase-less-keys/">subsequent post</a>.</p>

<p>You can also add these to your shell profile so that any SSH commands you manually execute in your terminal will use your SSH keys and not require a passphrase. In Debian/Raspbian/Ubunutu world, your profile is ~/.bashrc. Assuming that you use bash, of course.</p>

<p>Thanks to <a href="http://www.cyberciti.biz/faq/ssh-passwordless-login-with-keychain-for-scripts/http://">NixCraft</a> for providing this information.</p>
