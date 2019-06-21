---
id: 64
title: SOLVED Time Machine volume not mounting in OSX
date: 2016-06-22T04:11:13+00:00
author: John Pitchko
excerpt: |
  <p>I use an external USB drive to store my Time Machine backups, as most people do. The drive is split into two partitions; one for  Time Machine, the other for general data. Every few weeks/months, OSX will no longer mount the Time Machine volume. The volume appears in Disk Utility, but greyed out. The Mount option in Disk Utility is also greyed out. Overall, it appears that OSX can detect and identify the volume, but does not present any option for actually mounting it (at least through the GUI)…</p>

guid: https://www.johnpitchko-wp.pitchko.com/2016/06/22/solved-time-machine-volume-not-mounting-in-osx/
permalink: /solved-time-machine-volume-not-mounting-in-osx/
categories:
  - Uncategorized
---
I use an external USB drive to store my Time Machine backups, as most people do. The drive is split into two partitions; one for  Time Machine, the other for general data. Every few weeks/months, OSX will no longer mount the Time Machine volume. The volume appears in Disk Utility, but greyed out. The Mount option in Disk Utility is also greyed out. Overall, it appears that OSX can detect and identify the volume, but does not present any option for actually mounting it (at least through the GUI)…

The issue is caused because my Time Machine volume is encrypted. Encrypting your Time Machine backups prevents malicious people who gains access to the backup image will be unable to view the data (or at least it will take them quite a long time to break the encryption). The encryption option is available through the Time Machine area in System Preferences, and is highly recommended.

For whatever reason, OSX ‘forgets’ how to decrypt the volume in order to mount it. The solution is pretty straightforward, but will require use of terminal.

To find the UUID of the encrypted Time Machine volume, execute this command in a terminal:
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ diskutil cs listn</code></pre>
</div>
</div>
Within the results returned, find the UUID of the logical volume used for Time Machine. Look for the LV Name field that matches the name of your Time Machine drive.

To unlock the volume, execute this command in a terminal:
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ diskutil cs unlockVolume &lt;span style="text-decoration: underline;"&gt;UUID&lt;/span&gt; -passphrase &lt;span style="text-decoration: underline;"&gt;PASSPHRASE&lt;/span&gt;n</code></pre>
</div>
</div>
where PASSPHRASE is the password/key for the volume.

If this command executes successfully, OSX will unlock and mount the volume. You can then resume Time Machine backups as normal.