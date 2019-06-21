---
id: 112
title: Connecting my Raspberry Pi… FINALLY!
date: 2013-09-03T01:57:24+00:00
author: John Pitchko
excerpt: |
  <p>I purchased a Raspberry Pi kit from Canakits several months ago. Since that time, it was sitting on my bookshelf collecting dust, with all of the parts still in their original packaging. The package came with (almost) everything one needs to conveniently use their Pi. I say “conveniently” because the package includes a USB wifi adapter and a copy of the Raspberry Pi’s default Linux version Wheezy pre-installed on an SD card. The only thing that was missing was a case.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2013/09/03/connecting-my-raspberry-pi-finally/
permalink: /connecting-my-raspberry-pi-finally/
categories:
  - Uncategorized
---
<p>I purchased a Raspberry Pi kit from Canakits several months ago. Since that time, it was sitting on my bookshelf collecting dust, with all of the parts still in their original packaging. The package came with (almost) everything one needs to conveniently use their Pi. I say “conveniently” because the package includes a USB wifi adapter and a copy of the Raspberry Pi’s default Linux version Wheezy pre-installed on an SD card. The only thing that was missing was a case.</p>

<p>I’ve been tinkering enough with electronics and computers for long enough to know that having exposed electronics powered on is not a good idea. Many hazards in a normal household environment are deadly to electronics. Static discharge can fry the circuits. Dust or other particles can accumulate on the chips and start a fire/melt/corrode components. The safe thing to do is make sure the electronics are enclosed in a proper case.</p>

<p>To keep my Pi nice and safe, I ordered a transparent plastic case from Canakits (through Amazon). I picked it up from the loading dock at work last week and today finally put all the components together.</p>

<p>Assembling the kit was pretty each. The Pi did not come with any printed instructions (although copies are available on the internet). However, being a man, the right thing to do is to act first, and read instructions later. The Pi fit securely into the case, and the cover snapped on easily. I put the case inside my TV stand and connected the remaining components. The kit came with a HDMI cable and a power cord, which connected to my television and power bar respectively. I inserted the wifi adapter and keyboard into the two USB ports on the back. There is no power button on the Pi, so the device fires up as soon as the power flows.</p>

<p>Success! I could see the standard Linux boot gobbledegook text scroll up my screen. I was presented with a config menu in classic terminal-style. Anyone who’s worked with MS-DOS would squeel with nostalgia. I figured this was a first-time boot config, and after a quick read, determined that none of the options applied. So I selected the Exit option and was dumped to the terminal.</p>

<p>My plan was to configure the wifi and get the Pi on my network with access to the internet. From there, I would install a VNC server so I can access the Pi from any of my other computers. I figured that this would be the best way to work with the Pi, since I don’t want to buy a wireless keyboard (although I probably will because I’m a nerd who will use any reason to purchase electronics) and mouse exclusively for the Pi.</p>

<p>I’ll be the first to confess that I know the absolute basics of Linux console/terminal commands. I had to hunt the internet for what commands I needed to run next. I used the command <code class="highlighter-rouge">startx</code> to launch the GUI.</p>

<p>That’s all I care to write for now. Next I will post about configuring the wifi and downloading VNC.</p>
