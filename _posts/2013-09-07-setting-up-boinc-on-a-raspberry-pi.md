---
id: 108
title: Setting up BOINC on a Raspberry Pi
date: 2013-09-07T23:03:19+00:00
author: John Pitchko
excerpt: |
  <p>Update 2016-01-29</p>

guid: https://www.johnpitchko-wp.pitchko.com/2013/09/07/setting-up-boinc-on-a-raspberry-pi/
permalink: /setting-up-boinc-on-a-raspberry-pi/
categories:
  - Uncategorized
---
<h1 id="update-2016-01-29">Update 2016-01-29</h1>

<p>Replaced Seti@Home project with Asteroids@Home.nAdded solution for Authorization failure error.</p>

<h2 id="install-the-boinc-package">Install the BOINC package.</h2>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;code&gt;$ sudo apt-get updaten$ sudo apt-get install boincn&lt;/code&gt;n</code></pre>
</div>
</div>

<h2 id="start-the-boinc-daemon">Start the BOINC daemon</h2>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;code&gt;$ sudo /etc/init.d/boinc-client startn&lt;/code&gt;n</code></pre>
</div>
</div>

<h2 id="acquire-your-account-key">Acquire your account key</h2>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;code&gt;$ boinccmd --lookup_account http://asteroidsathome.net/boinc/ your-email your-passwordn&lt;/code&gt;n</code></pre>
</div>
</div>

<h2 id="attach-the-project">Attach the project</h2>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;code&gt;$ boinccmd --project_attach http://asteroidsathome.net/boinc/ your-account-keyn&lt;/code&gt;n</code></pre>
</div>
</div>

<p>Shortly, your Pi should start downloading and computing a work unit. To verify, run <code class="highlighter-rouge">$ boinccmd --get_tasks</code>. The active task list will be displayed on your terminal. You should see the Asteroids@Home task listed under <strong>project_url</strong> and the current action of the project under <strong>active_task_state</strong>.</p>

<h1 id="other-handy-commands">Other Handy Commands</h1>

<p>To stop the BOINC daemon: <code class="highlighter-rouge">$ sudo /etc/init.d/boinc-client stop</code></p>

<p>To restart/bounce the BOINC daemon: <code class="highlighter-rouge">$ sudo /etc/init.d/boinc-client restart</code></p>

<p>To check the status of the daemon: <code class="highlighter-rouge">$ sudo /etc/init.d/boinc-client status</code></p>

<p>To view diagnostic and error messages: <code class="highlighter-rouge">$ boinccmd --get_messages</code></p>

<h1 id="troubleshooting">Troubleshooting</h1>

<h2 id="receive-error-authorization-failure--155-when-executing-boinccmd">Receive error Authorization failure: -155 when executing boinccmd</h2>

<p>boinccmd is a command line management tool for managing the boinc client, which actually computes the work units. boinccmd communicates via boinc using GUI RPC (Graphical User Interface Remote Procedure Call). A single boinccmd tool can manage multiple boinc clients on multple machines, both local and remote. A password is used to authenticate requests between a tool/manager and the boinc client. More details available <a href="http://boinc.berkeley.edu/wiki/Controlling_BOINC_remotely">here</a>.</p>

<p>The password is stored in a file called <em>gui_rpc_auth.cfg</em>. Copies of this file are stored in three locations:</p>
<p>n</p>
<ol>n  </p>
<li>/var/lib/boinc-client/gui_rpc_auth.cfg</li>
<p>n  </p>
<li>/etc/boinc-client/gui_rpc_auth.cfg</li>
<p>n  </p>
<li>/~/gui_rpc_auth.cfg</li>
<p>n</ol>

<p>The password in the file in the user’s home directory is compared to the copy in the /var and /etc directories. Assuming you aren’t interested in securing this program, or only plan on running and administering boinc locally, the simplest resolution to this issue is just the delete all three copies. Once I did this, I no longer received this error message.</p>

<p>A workaround is to execute all boinccmd commands from the BOINC data directory (/var/lib/boinc-client).</p>
