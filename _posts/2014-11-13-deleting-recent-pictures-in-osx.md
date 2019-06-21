---
id: 91
title: Deleting Recent Pictures in OSX
date: 2014-11-13T16:07:56+00:00
author: John Pitchko
excerpt: |
  <p>Certain programs (such as iChat and Messages and 1Password oddly enough) have access to something called Recent Pictures on your Mac. These programs use Recent Pictures as part of a dialog box to include pictures in the program. For example, when you change your profile picture in Messages, you can access the Recent Pictures and select one of the images stored there.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/11/13/deleting-recent-pictures-in-osx/
permalink: /deleting-recent-pictures-in-osx/
categories:
  - Uncategorized
---
<p>Certain programs (such as iChat and Messages and 1Password oddly enough) have access to something called Recent Pictures on your Mac. These programs use Recent Pictures as part of a dialog box to include pictures in the program. For example, when you change your profile picture in Messages, you can access the Recent Pictures and select one of the images stored there.</p>

<p>I have no idea how images are added to Recent Images; I think OSX just adds them or extracts them from other programs randomly. I also do not like that there is no easy way to clear them out (e.g. if you want to delete duplicates).</p>

<p>This <a href="http://forums.macrumors.com/showthread.php?t=1238669">thread on MacRumors forums</a> helped me clear them out. To delete these images, find the folder below and clear out the contents:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>~/Library/Containers/com.apple.ImageKit.RecentPictureService/Data/Library/Images/Recent Picturesnnnnn~/ Library/Images/iChat Recent Picturesn</code></pre>
</div>
</div>
