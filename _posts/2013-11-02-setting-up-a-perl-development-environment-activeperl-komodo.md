---
id: 99
title: Setting up a Perl development environment (ActivePerl + Komodo)
date: 2013-11-02T19:56:52+00:00
author: John Pitchko
excerpt: |
  <p>I wanted to do some Perl coding. More accurately, I wanted to resume work on an old Perl project. Details on that may follow. I needed to set up a Perl dev environment. I used Eclipse for Perl dev work in the past, but I wanted to try using this Komodo editor, mostly because I was already using it for Firefox development.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2013/11/02/setting-up-a-perl-development-environment-activeperl-komodo/
permalink: /setting-up-a-perl-development-environment-activeperl-komodo/
categories:
  - Software Development
---
I wanted to do some Perl coding. More accurately, I wanted to resume work on an old Perl project. Details on that may follow. I needed to set up a Perl dev environment. I used Eclipse for Perl dev work in the past, but I wanted to try using this Komodo editor, mostly because I was already using it for Firefox development.

Although, I should maybe look at doing Firefox development in Eclipse… Actually, now that I think about it, I might get more functionality out of Eclipse (eg syntax checking, perldoc, etc). I should look into that in a future lazy weekend.

Anyways, here are some notes that I made after installing Komodo and ActivePerl:
<ol>
 	<li>Install ActivePerl</li>
 	<li>Install Komodo</li>
 	<li>Configure Komodo to use the ActivePerl interpreter (/usr/local/ActivePerl-5.16/bin)</li>
 	<li>Update your .profile file to add the ActivePerl interpreter to your PATH variable (PATH=/usr/local/ActivePerl-5.x/bin:$PATH)</li>
 	<li>The .profile file is in your home directory (/Users/)</li>
 	<li>Configure Komodo to include the ActivePerl user import libraries (by default, these are stored in /Users//Library/ActivePerl-5.x)</li>
</ol>