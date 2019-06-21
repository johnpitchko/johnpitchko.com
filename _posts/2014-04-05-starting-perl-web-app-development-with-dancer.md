---
id: 100
title: Starting Perl web app development with Dancer
date: 2014-04-05T17:28:26+00:00
author: John Pitchko
excerpt: |
  <p>I’m starting to build a web-app with Perl. After some reading, I was recommended to use Dancer as an all-in-one web server and MVC framework for Perl. Below is the steps I followed to install and launch Dancer.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/04/05/starting-perl-web-app-development-with-dancer/
permalink: /starting-perl-web-app-development-with-dancer/
categories:
  - Uncategorized
---
<p>I’m starting to build a web-app with Perl. After some reading, I was recommended to use <a href="http://perldancer.org/">Dancer</a> as an all-in-one web server and MVC framework for Perl. Below is the steps I followed to install and launch Dancer.</p>

<p>Install YAML (you can do this after you install Dancer, but doing it first will prevent you from receiving an ugly warning message):</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ curl -L http://cpanmin.us | perl - --sudo YAMLn</code></pre>
</div>
</div>

<p>To install Dancer:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ curl -L http://cpanmin.us | perl - --sudo Dancern</code></pre>
</div>
</div>

<p>Navigate to the directory where you want to create your app:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ cd $pathn</code></pre>
</div>
</div>

<p>Use the dancer helper app to setup the folder structure:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ dancer -a $web_app_namen</code></pre>
</div>
</div>

<p>I received a bunch of warnings that the program was trying to create files that already existed. Very weird because it was creating files in a brand new directory for the first time. Anyways, I suppose that I should report this as a bug.</p>

<p>Navigate to your new directory with your web-app:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ cd $web_app_namen</code></pre>
</div>
</div>

<p>Launch the webserver:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ ./bin/app.pln</code></pre>
</div>
</div>

<p>You can access it by navigating your web browser to:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>http://0.0.0.0:3000n</code></pre>
</div>
</div>

<p>Overall, I’m** extremely** impressed with how user-friendly the installation and launch process was. I am still pretty noob at *nix. My experience with building software from source has usually been a nightmare due to missing dependencies and compilation errors, along with having to install a bunch of stuff that I don’t understand to directories that I have never heard of (and will probably never find again).</p>

<p>Hats off to the Dancer dev team and community for a great product so far. I’m looking forward to experimenting (and hopefully making money) from it!</p>
