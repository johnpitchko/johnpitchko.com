---
id: 86
title: 'Resolved: “Playgrounds targeting OS X are not supported in this version of Xcode.”'
date: 2014-10-03T13:13:45+00:00
author: John Pitchko
excerpt: |
  <p>Was working through some tutorials at www.raywenderlich.com when I encountered this error when trying to open the provided playground file in Xcode:</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/10/03/resolved-playgrounds-targeting-os-x-are-not-supported-in-this-version-of-xcode/
permalink: /resolved-playgrounds-targeting-os-x-are-not-supported-in-this-version-of-xcode/
categories:
  - Uncategorized
---
<p>Was working through some tutorials at <a href="http://www.raywenderlich.com">www.raywenderlich.com</a> when I encountered this error when trying to open the provided playground file in Xcode:</p>

<p>Playgrounds targeting OS X are not supported in this version of Xcode.</p>

<p>Google returned only a few results when searching for this error, but one did contain the resolution. I’m posting here so it is forever locatable on the internet.</p>

<ol>n  </p>
<li>n
<p>Right-click on the playground file in Finder. Select <strong>Show Package Contents </strong></p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Open the <strong>contents.xcplayground</strong> file with any basic text editor (e.g. TextEdit)</p>
<p>n  </li>
<p>n  </p>
<li>n
<p>Change the line</p>
<p>nn    <playground version="3.0" sdk="macosx">nnn</playground>n  </li>
<p>n</ol>
<p>n</p>
<p>to</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;playground version='3.0' sdk='iphonesimulator'&gt;n</code></pre>
</div>
</div>

<ol>n  </p>
<li>Save and close</li>
<p>n</ol>
