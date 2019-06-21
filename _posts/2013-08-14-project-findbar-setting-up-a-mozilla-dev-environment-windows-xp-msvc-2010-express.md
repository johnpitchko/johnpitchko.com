---
id: 109
title: 'Project Findbar: setting up a Mozilla dev environment (Windows XP, MSVC++ 2010 Express)'
date: 2013-08-14T03:57:26+00:00
author: John Pitchko
excerpt: |
  <p>I’ve renamed my Mozilla findbar project to Project Findbar. Clever hey?</p>

guid: https://www.johnpitchko-wp.pitchko.com/2013/08/14/project-findbar-setting-up-a-mozilla-dev-environment-windows-xp-msvc-2010-express/
permalink: /project-findbar-setting-up-a-mozilla-dev-environment-windows-xp-msvc-2010-express/
categories:
  - Uncategorized
---
<p>I’ve renamed my Mozilla findbar project to Project Findbar. Clever hey?</p>

<p>I wanted to have a dedicated development environment for doing this work. I have some good reasons for doing this. Firstly, I didn’t want to fill my host system with a bunch of SDKs and source &amp; binary folders. Who knows what some of those SDKs do to my registry or other system configuration. I was especially concerned about what installing the DirectX SDK would do to the version of DirectX that I use for gaming. Keeping the dev environment separate keeps everything nice and clean. No cross over between my stable host system and my “experimental” dev environment.</p>

<p>Secondly, I want to be able to tear down and archive the environment once it is set up. I do not plan on doing any additional Mozilla development after I get the findbar improvement completed. However, as new versions of Firefox are published in the future, I may need to reapply and re-test my modifcations. That is assuming that the Mozilla gods do not accept my submission into the main distro, which I think is what is going to happen. Since the environment will be virtual, I can shut it down, move it to a different computer or drive, and restore it without issue.</p>

<p>Mozilla publishes some <a href="https://developer.mozilla.org/en-US/docs/Developer_Guide/Build_Instructions/Windows_Prerequisites">great instructions on setting up the software required for building Mozilla</a>.</p>

<p>So here are the instructions that I followed to set up a basic Mozilla development environment:</p>

<p>Materials:</p>

<ol>n  </p>
<li>n
<p>Windows XPnI used Windows XP, so all the instructions below will be for that version. Newer versions of Windows (7&amp;8) can use the 2012 version of Visual Studio.</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>VirtualBox</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Visual Studio 2010 Express</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Mozilla Build</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Mozilla source (you will acquire this as part of the steps below)</p>
<p>n  </li>
<p>n</ol>

<p>Steps:</p>

<ol>n  </p>
<li>n
<p>Install VirtualBox.</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Launch VirtualBox. Create a new virtual machine. The default options should suffice.</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Insert the Windows CD. Start the virtual machine. Set the CD drive to be the startup disk in the virtual machine.</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Switch to Scale Mode (optional)nThis is personal preference. Scale mode will allow you to increase the size of the virtual machine window and its contents. The virtual machine screen will be much easier to read.</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Install Windows as normal. The default options should suffice.</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>After Windows installs and launches, run Windows Update at least once. The system will download a whole bunch of updates that will make your life a heck of a lot easier (such as a newer version of Internet Explorer).</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Set up shared folders and clipboard in the virtual machine (optional)nShared folders will allow you to easily move files and folders between your host system and the virtual machine. Sharing the clipboard (from host to virtual machine/guest) will allow you to copy text (such as a URL) from a web browser on your host to your guest.</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Install Visual Studio C++ 2010 Express. The default options should suffice.</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Install Mozilla Build. The default options should suffice.</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Launch the Mozilla build command prompt.nOpen a console windows and execute:</p>
<p>n  </li>
<p>n</ol>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>start-msvc10.batn</code></pre>
</div>
</div>

<ol>n  </p>
<li>Create the source folders:</li>
<p>n</ol>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>cd /c; mkdir mozilla-source; cd mozilla-sourcen</code></pre>
</div>
</div>

<ol>n  </p>
<li>Download the Mozilla source:</li>
<p>n</ol>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>hg clone https://hg.mozilla.org/mozilla-centraln</code></pre>
</div>
</div>

<ol>n  </p>
<li>Start the build process:</li>
<p>n</ol>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>cd mozilla-centralnnnnn./mach buildn</code></pre>
</div>
</div>

<p>You may be asked to confirm the build</p>

<p>That is as far as I am now. I will update more when I complete it.</p>

<p>Todo:</p>

<ul>n  </p>
<li>n
<p>Installing guest additions</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Installing Windows XP SP3</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Building the source</p>
<p>n  </li>
<p>n</ul>
