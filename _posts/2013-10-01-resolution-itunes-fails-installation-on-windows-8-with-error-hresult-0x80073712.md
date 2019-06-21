---
id: 103
title: 'Resolution: iTunes fails installation on Windows 8 with error HRESULT: 0x80073712'
date: 2013-10-01T02:49:02+00:00
author: John Pitchko
excerpt: |
  <p>Recently, I tried re-installing iTunes on my Windows 8 laptop, but encountered an error:</p>

guid: https://www.johnpitchko-wp.pitchko.com/2013/10/01/resolution-itunes-fails-installation-on-windows-8-with-error-hresult-0x80073712/
permalink: /resolution-itunes-fails-installation-on-windows-8-with-error-hresult-0x80073712/
categories:
  - Uncategorized
---
<p>Recently, I tried re-installing iTunes on my Windows 8 laptop, but encountered an error:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>Microsoft.vc80.CRT,public KeynToken="1fc8b3b9a1e18e3b",type="win32",version="8.0.50727.762" processorArchitecture="x86" nPlease refer to help and support for more information. HRESULT: 0x80073712n</code></pre>
</div>
</div>

<p>I was able to resolve it eventually. Below is the post that I made on the Apple support forums, which I am storing here for future reference.</p>

<blockquote><p>I am running Windows 8. I encountered this issue while trying to install iTunes 11.1 x64 version. After some troubleshooting, I discovered that the real issue was trying to install the Apple Mobile Device service.nnMy resolution was installing the Microsoft Visual C++ 2005 Redistributable Package. It is available from Microsoft. A search on Google should reveal it. However, here is the latest link that I used: [https://www.microsoft.com/en-us/download/details.aspx?displaylang=en&amp;id=14431](https://www.microsoft.com/en-us/download/details.aspx?displaylang=en&amp;id=14431)nnNote that redistributable packages for more recent versions of Visual C++ (eg 2008, 2010) will NOT work. Only 2005 version worked for me.nnGood luck!</p></blockquote>
