---
id: 97
title: Installing MySQL on OSX
date: 2014-04-18T15:28:55+00:00
author: John Pitchko
excerpt: |
  <p>I’ve been making great progress on my app! However, I have noticed some issues where my local Dancer server has issues connecting to the MySQL database hosted by my web host. Browser requests made to Dancer just kind of freeze.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/04/18/installing-mysql-on-osx/
permalink: /installing-mysql-on-osx/
categories:
  - Uncategorized
---
<p>I’ve been making great progress on my app! However, I have noticed some issues where my local Dancer server has issues connecting to the MySQL database hosted by my web host. Browser requests made to Dancer just kind of freeze.</p>

<p>I decided then to install and use a local copy of MySQL. Not only will this stop the hung request issue, but I can now work on the project offline and learn a bit about database and MySQL administration.</p>

<p>Here are the instructions that I followed:</p>

<h1 id="install-mysql-from-binary-pkg">Install MySQL from binary pkg</h1>

<p>Download the binary .DMG file from MySQL and install the database .PKG.</p>

<h1 id="install-the-mysql-startup-item">Install the MySQL startup item</h1>

<p>I admit that I don’t really know what this is or where it goes, but its probably some convenience daemon or something to start the MySQL database on system start up, if one so chooses. The installer is in the same .DMG file.</p>

<h1 id="install-the-mysql-preference-pane">Install the MySQL preference pane</h1>

<p>A handy interface accessible from System Preferences for starting and stopping the database. The installer is in the same .DMG file.</p>

<h1 id="update-your-path-or-add-aliases">Update your PATH, or add aliases</h1>

<p>The /usr/local/mysql/bin has the applications for running and administering your database. Add it to your path so you can easily run these applications.</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>shell&gt; vi ~/.bash_profilen</code></pre>
</div>
</div>

<p>Then add the line:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>export PATH=$PATH:/usr/local/mysql/binn</code></pre>
</div>
</div>

<p>Run your profile:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>shell&gt; source ~/.bash_profilen</code></pre>
</div>
</div>

<h1 id="update-the-database-root-password">Update the database root password</h1>

<p>For security, you know.</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>shell&gt; mysqladmin -u root password "newpwd"n</code></pre>
</div>
</div>

<p>Double-quotes are optional.</p>
