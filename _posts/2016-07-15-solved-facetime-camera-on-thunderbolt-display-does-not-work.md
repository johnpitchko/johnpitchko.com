---
id: 62
title: SOLVED FaceTime camera on Thunderbolt Display does not work
date: 2016-07-15T04:09:20+00:00
author: John Pitchko
excerpt: |
  <p>Ran into an issue this evening trying to use my FaceTime camera via my Thunderbolt Display. After launching the video conference software and connecting to the call, camera would not share any video. It simply showed a black screen.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2016/07/15/solved-facetime-camera-on-thunderbolt-display-does-not-work/
permalink: /solved-facetime-camera-on-thunderbolt-display-does-not-work/
categories:
  - Uncategorized
---
Ran into an issue this evening trying to use my FaceTime camera via my Thunderbolt Display. After launching the video conference software and connecting to the call, camera would not share any video. It simply showed a black screen.

Some quick Googling revealed the answer. Run this command in your terminal:

<code class="highlighter-rouge">$ sudo killall VDCAssistant</code>

Then restart your video conference software (FaceTime, Skype, whatever). Your camera should begin sharing video right away.