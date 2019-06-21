---
id: 107
title: 'Project Findbar: Komodo Edit and “make”ing extensions'
date: 2013-09-30T16:30:14+00:00
author: John Pitchko
excerpt: |
  <p>I completed the most recent chapter in the Firefox extension tutorial from Mozilla. First I installed Komodo Edit and used it to edit my files.  I haven’t toyed around with it too much, but it looks like a pretty useful, but clean tool for development. It has the ability to run Terminal commands, and even save them for future use. That will save some time when you can compile and install from within the tool rather than having to have an open terminal window.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2013/09/30/project-findbar-komodo-edit-and-makeing-extensions/
permalink: /project-findbar-komodo-edit-and-makeing-extensions/
categories:
  - Uncategorized
---
<p>I completed the most recent chapter in the Firefox extension tutorial from Mozilla. First I installed Komodo Edit and used it to edit my files.  I haven’t toyed around with it too much, but it looks like a pretty useful, but clean tool for development. It has the ability to run Terminal commands, and even save them for future use. That will save some time when you can compile and install from within the tool rather than having to have an open terminal window.</p>

<p>I also learned how to use make (well at least a little). Not being a *nix person, I’ve only ever sporadically used make. Until this tutorial, I never looked at a makefile. I feel like I have a grasp on the basics of make and makefiles now. Following the make instructions was a bit of a pain. Maybe I did not follow the tutorial correctly, but the supplied sample code would not make install. I did some investigation and determined that it was an issue with the directories (ie looking for binaries in a directory that did not exist). I was able to fix that up and can now make install my extension. Quite a nice time saver!</p>

<p>So feeling rather proud of myself today. Learned a new software development tool and cut my teeth with building software using make (which is one of the most popular software build tools available). Now that I have the basics of extension structure, compilation, and installation, I can start learning the finer details about what UI elements can be added or changed, and how to add new or modify existing functions.</p>
