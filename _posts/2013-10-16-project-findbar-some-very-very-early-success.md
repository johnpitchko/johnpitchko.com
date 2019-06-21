---
id: 104
title: 'Project Findbar: some (very, very) early success'
date: 2013-10-16T02:41:28+00:00
author: John Pitchko
excerpt: |
  <p>I have been struggling with Project Findbar lately. Once I had Komodo and “make’ set up, I thought I could dive right in. Unfortunately, when I tried to apply my rudimentary knowledge of the Mozilla UI code (called XUL), I crashed and burned. I tried adding a simple check box to the find bar, but could not get it to work.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2013/10/16/project-findbar-some-very-very-early-success/
permalink: /project-findbar-some-very-very-early-success/
categories:
  - Uncategorized
---
<p>I have been struggling with Project Findbar lately. Once I had Komodo and “make’ set up, I thought I could dive right in. Unfortunately, when I tried to apply my rudimentary knowledge of the Mozilla UI code (called XUL), I crashed and burned. I tried adding a simple check box to the find bar, but could not get it to work.</p>

<p>I was getting pretty frustrated when I remembered that good programmers code, but great programmers or steal (or something like that; I don’t really remember what it was but you get the point). I found another addon called <a href="https://addons.mozilla.org/en-US/firefox/addon/findbar-tweak/?src=search">Findbar Tweak</a>. It manipulated the find bar UI the same way that I am planning to. I remembered from the previous tutorials that Firefox addon files (XPIs) are just zips of the raw source code. So I changed the file extension from XPI to ZIP, uncompressed the file, and looked at the code.</p>

<p>The best way to learn exactly how the Findbar Tweak code works where mine failed is to follow the basic debugging process familiar to all computer science students; the good old comment-out-sections-of-code-and-see-what-changed. In order to do that efficiently, I wanted to be able to manipulate, build, and install the code all through Komodo.</p>

<p>I ran into a number of problems when getting this set up. The makefile wasn’t including all the files initially. Also, the built extension was not getting named properly. It took me about 90 minutes, but I figured it all out. Now I have a fully working Komodo dev environment with integration into my dev instance of Firefox.</p>

<p>I’m rather exhausted now from struggling through all this, but now I am in a good position to do some real debugging. However, I did learn some more about Komodo and makefiles.</p>
