---
id: 98
title: Fixing ssh connection timeouts
date: 2013-12-20T19:14:07+00:00
author: John Pitchko
excerpt: |
  <p>Quick post on what to do if your ssh connects get killed too quickly when idle.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2013/12/20/fixing-ssh-connection-timeouts/
permalink: /fixing-ssh-connection-timeouts/
categories:
  - Uncategorized
---
<p>Quick post on what to do if your ssh connects get killed too quickly when idle.</p>

<p>My problem was that I would ssh into my Pi, step away for 2 minutes, and find that the connection was frozen when I returned. You can fix this by increasing the timeout value of your ssh connection.</p>

<p>Two options to increase the timeout value:</p>

<ol>n  </p>
<li>n
<p>In the ssh connection command</p>
<p>nn    </p>
<p>ssh -o ServerAliveInterval=10 keepsdroppingme.com</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>In your personal remote ssh config</p>
<p>nn    </p>
<p># This is ~/.ssh/confign # For all hostsn ServerAliveInterval 10n # For a selection of hostsn Host keepsdroppingme.com alsokeepsdroppingme.com ServerAliveInterval 10</p>
<p>n  </li>
<p>n</ol>

<p>Thanks to <a href="http://www.quora.com/How-can-I-configure-my-terminal-on-Mac-OS-X-to-keep-SSH-connections-alive-even-when-they-are-idle#">Quora</a> for the help.</p>
