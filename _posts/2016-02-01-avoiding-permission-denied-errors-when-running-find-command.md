---
id: 70
title: Avoiding ‘permission denied’ errors when running find command
date: 2016-02-01T20:12:08+00:00
author: John Pitchko
excerpt: |
  <p>Spotlight in OSX is not good for finding files on your Mac. It will return things like documents, videos, and songs, but the tool is not useful for finding things like basic text files in non-user directories. Enter the find CLI command.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2016/02/01/avoiding-permission-denied-errors-when-running-find-command/
permalink: /avoiding-permission-denied-errors-when-running-find-command/
categories:
  - Uncategorized
---
<p>Spotlight in OSX is not good for finding files on your Mac. It will return things like documents, videos, and songs, but the tool is not useful for finding things like basic text files in non-user directories. Enter the find CLI command.</p>

<p>When find tries to enter a directory the current user does not have access to, it will return a error like <code class="highlighter-rouge">find: /.Trashes: Permission denied</code>. These error can quickly take up all the space on your terminal screen, making valid results difficult to see. One can get around this by executing find using sudo, but why elevate privilege when you don’t need to?</p>

<p>The solution is to run the command with the <code class="highlighter-rouge">-print</code> option. Using this option, the command can be instructed to toss out all the error messages in stderr by directing them to /dev/null.</p>

<p>An example to run a case-insensitive search for items with iTunes in their name: n<code class="highlighter-rouge">$ find / -iname iTunes -print 2&gt;/dev/null</code></p>
