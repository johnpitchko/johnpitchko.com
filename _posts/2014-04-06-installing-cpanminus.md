---
id: 93
title: Installing cpanminus
date: 2014-04-06T21:30:02+00:00
author: John Pitchko
excerpt: |
  <p>As I’ve said before, I’m still pretty newb with Linux, and even more newbie with cpan, the perl essential. cpan is a console utility for downloading, compiling, and installing perl modules and perl-related binaries. I have not used it much, but it seems now that most people use another binary called cpanminus.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/04/06/installing-cpanminus/
permalink: /installing-cpanminus/
categories:
  - Uncategorized
---
<p>As I’ve said before, I’m still pretty newb with Linux, and even more newbie with cpan, the perl essential. cpan is a console utility for downloading, compiling, and installing perl modules and perl-related binaries. I have not used it much, but it seems now that most people use another binary called cpanminus.</p>

<p>As far as I can tell, cpanminus works pretty much the same as cpan, but with more convenience. For example, to install a module with cpan, one would input</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ sudo cpann</code></pre>
</div>
</div>

<p>to launch cpan, and then</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>cpan[1]&gt;  install Module::Namen</code></pre>
</div>
</div>

<p>to install the module. The screen will go cattywompas as the utility shows all text as it finds, downloads, compiles, installs the stuff. I guess it looks pretty cool and might impress your less savvy computer friends, but does one really care to see all that stuff? Personally, I’m more interested in warnings and errors.</p>

<p>To do the same with cpanminus is pretty simple. Just input</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ sudo cpanm Module::Namen</code></pre>
</div>
</div>

<p>and in a non-verbose mode, cpanminus will install your code.</p>

<p>So now you want to install cpanminus. Just execute</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ sudo cpanncpan[1]&gt; install App::cpanminusn</code></pre>
</div>
</div>
