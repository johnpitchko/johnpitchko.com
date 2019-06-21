---
id: 89
title: Removing MySQL from Mac OSX
date: 2014-11-11T18:05:29+00:00
author: John Pitchko
excerpt: |
  <p>Oracle provides a nice guide for installing MySQL on Mac, but no guide for removing it.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/11/11/removing-mysql-from-mac-osx/
permalink: /removing-mysql-from-mac-osx/
categories:
  - Uncategorized
---
<p>Oracle provides a nice guide for installing MySQL on Mac, but no guide for removing it.</p>

<p>Rob Allen provides a nice guide on his <a href="http://akrabat.com/computing/uninstalling-mysql-on-mac-os-x-leopard/">website</a>. The steps are below:</p>

<p>Use mysqldump to backup your databases to text files!</p>

<p>Stop the database server</p>

<p> </p>

<p>[bash]sudo rm /usr/local/mysql</p>

<p>sudo rm -rf /usr/local/mysql*</p>

<p>sudo rm -rf /Library/StartupItems/MySQLCOM</p>

<p>sudo rm -rf /Library/PreferencePanes/My*</p>

<p>edit /etc/hostconfig and remove the line MYSQLCOM=-YES-</p>

<p>rm -rf ~/Library/PreferencePanes/My*</p>

<p>sudo rm -rf /Library/Receipts/mysql*</p>

<p>sudo rm -rf /Library/Receipts/MySQL*</p>

<p>sudo rm -rf /private/var/db/receipts/<em>mysql</em>[/bash]</p>

<p>I would further advise running a find command in terminal to see if any MySQL files remain. When I performed the steps above, I missed a few files, probably because I typed in a directory incorrectly.</p>

<table>n  </p>
<tbody>n    </p>
<tr>n      </p>
<td>[bash]sudo find /</td>
<p>n      </p>
<td>grep -i mysql[/bash]</td>
<p>n    </tr>
<p>n  </tbody>
<p>n</table>

<p>Remove any straggling files by hand, or repeat the appropriate step from above.</p>
