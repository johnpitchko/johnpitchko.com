---
id: 102
title: 'Setting up a clean dev environment: perl, MySQL, and Dancer'
date: 2014-04-08T19:01:15+00:00
author: John Pitchko
excerpt: |
  <p>Big accomplishments today. It took a few hours, but I finally got my ODMP (OSX, Dancer, MySQL, Perl) environment setup. Learned a lot through the process! Here are my notes:</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/04/08/setting-up-a-clean-dev-environment-perl-mysql-and-dancer/
permalink: /setting-up-a-clean-dev-environment-perl-mysql-and-dancer/
categories:
  - Uncategorized
---
<p>Big accomplishments today. It took a few hours, but I finally got my ODMP (OSX, Dancer, MySQL, Perl) environment setup. Learned a lot through the process! Here are my notes:</p>

<h1 id="install-perl-via-perlbrew">Install perl via perlbrew</h1>

<p>OSX is shipped with perl pre-installed. The general rule of thumb with system-supplied tools is not to use them for development work. In your experimentation, you might end up deleting a critical library or corrupting some configuration file that renders this program useless. This can be a pain because certain other programs on your computer may be relying on this program in order to run.</p>

<p><a href="http://perlbrew.pl/">Perlbrew</a> to the rescue! Perlbrew is a convenient way to install a new, clean version of perl that is totally segregated from your system perl and its libraries. Another awesome feature is that you can install modules via CPAN or CPANMinus without having to sudo or run as root.</p>

<p>Install perlbrew by executing the following command:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;code&gt;$ curl -L http://install.perlbrew.pl | bash&lt;/code&gt;n</code></pre>
</div>
</div>

<p>Once Perlbrew is installed, execute two more commands:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;code&gt;$ perlbrew install perl-5.16.0n$ perlbrew switch perl-5.16.0&lt;/code&gt;n</code></pre>
</div>
</div>

<p>These commands will download, compile, and install perl 5.16.0 from source, then configure your environment to refer to this instance of perl and its libraries.</p>

<p>The program will then ask you to add the following line to your ~/.bash_profile:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ source ~/perl5/perlbrew/etc/bashrcn</code></pre>
</div>
</div>

<h1 id="install-mysql">Install MySQL</h1>

<p>In order to connect to a MySQL database, you need to download and install MySQL. It seems like a pain, but just do it; the database libraries in perl need to be built with some libraries and header files from a local MySQL.</p>

<p>Download and install the binary instance of MySQL from the MySQL website. On OSX, this is a pretty straightforward process. MySQL provides you with precompiled binaries and a convenient installer program.</p>

<h2 id="fix-a-missing-library-reference-in-mysql-for-osx">Fix a Missing Library Reference in MySQL for OSX</h2>

<p>There is a bug in the current version of MySQL for OSX. I read that it will be fixed in the new version. Thanks to Mark Phillips at his <a href="http://probably.co.uk/problems-installing-dbdmysql-on-os-x-snow-leopard.html">website</a> for posting the fix.</p>

<p>Execute the following command. Note the directory paths and filenames, as they may be different based on the version of MySQL that you download. These commands are correct as of version 5.6.17</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ sudo install_name_tool -id /usr/local/mysql-5.6.17-osx10.7-x86_64/lib/libmysqlclient.18.dylib /usr/local/mysql-5.6.17-osx10.7-x86_64/lib/libmysqlclient.18.dylibn</code></pre>
</div>
</div>

<h1 id="install-cpanminus">Install cpanminus</h1>

<p>I wrote about this yesterday, but here again are the commands.</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ cpanncpan[1]&gt; install App::cpanminusn</code></pre>
</div>
</div>

<h1 id="install-dbdmysql">Install DBD::mysql</h1>

<p>This is the connector between perl and the MySQL database. Be sure to install it before Dancer’s database plugin.</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ cpanm DBD::mysqln</code></pre>
</div>
</div>

<h1 id="install-dancer">Install Dancer</h1>

<p>I also wrote about installing Dancer recently. You can follow those instructions, or you can install via cpanminus.</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ cpanm Dancern</code></pre>
</div>
</div>

<h1 id="install-dancerplugindatabase">Install Dancer::Plugin::Database</h1>

<p>Once Dancer is installed, go and install its database plugin. You can read about it on <a href="https://metacpan.org/pod/Dancer::Plugin::Database">Metacpan</a>. Once again, cpanm makes the installation simple.</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ cpanm Dancer::Plugin::Databasen</code></pre>
</div>
</div>

<h1 id="create-your-apps-skeleton">Create your app’s skeleton</h1>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ dancer -a MyWeb::Appn</code></pre>
</div>
</div>

<h1 id="start-your-dancer-web-app">Start your Dancer web app</h1>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ cd MyWeb-Appn$ ./bin/appl.pln</code></pre>
</div>
</div>
