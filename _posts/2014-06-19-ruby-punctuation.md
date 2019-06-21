---
id: 90
title: Ruby punctuation ?!
date: 2014-06-19T03:07:31+00:00
author: John Pitchko
excerpt: |
  <p>I noticed that methods in Ruby are sometimes followed by some punctuation characters, particularly the ? and ! characters. Finally took a moment to learn about them, and wanted to share with everyone.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/06/19/ruby-punctuation/
permalink: /ruby-punctuation/
categories:
  - Uncategorized
---
<p>I noticed that methods in Ruby are sometimes followed by some punctuation characters, particularly the ? and ! characters. Finally took a moment to learn about them, and wanted to share with everyone.</p>

<h1 id="method">.method!</h1>

<p>In Ruby, calling most methods on an object will return a modified version of an object, rather than modifying the object itself. This is known to be “safe”, in that if you unintentionally call a method on an object, you will not have to worry about a potentially dangerous change to a piece of data.</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ irbn2.1.1 :001 &gt; my_string = "Hello, world!"n =&gt; "Hello, world!"n2.1.1 :002 &gt; puts my_stringnHello, world!n =&gt; niln2.1.1 :003 &gt; my_string.upcasen =&gt; "HELLO, WORLD!"n2.1.1 :004 &gt; puts my_stringnHello, world!n =&gt; niln</code></pre>
</div>
</div>

<p>In the code above, we create a string called <strong>my_string</strong> and set it to the value <strong>Hello, world!</strong>. We then call the <strong>.upcase</strong> method on <strong>my_string</strong>, which prints the string in all upper case letters. However, when we print <strong>my_string</strong> out again using <strong>puts</strong>, the string remains in its original format.</p>

<p>Now, let’s try <strong>.upcase</strong> again, but add the ! at the end:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>2.1.1 :005 &gt; my_string.upcase!n =&gt; "HELLO, WORLD!"n2.1.1 :006 &gt; puts my_stringnHELLO, WORLD!n =&gt; niln2.1.1 :007 &gt;n</code></pre>
</div>
</div>

<p><strong>my_string</strong> was modified to all upper case letters. The contents of the original variable were modified.</p>

<h1 id="method-1">.method?</h1>

<p>The question mark in Ruby is more of a naming convention than a method modification. The ? is used to denote that the method will return a true or false value. In other programming languages, this convention is typically implemented by adding the <strong>is_</strong> or <strong>is</strong> prefix to the method name. I’ve also seen <strong>has_</strong> or <strong>has</strong> prefix for boolean tests of different sort.</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>2.1.1 :007 &gt; my_string.empty?n =&gt; falsen</code></pre>
</div>
</div>

<p>Calling <strong>.empty</strong> on <strong>my_string</strong> returns false because <strong>my_string</strong> contains a value (“HELLO, WORLD!”). Note that there is no <strong>.empty</strong> method on a string:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>2.1.1 :008 &gt; my_string.emptynNoMethodError: undefined method `empty' for "HELLO, WORLD!":Stringn    from (irb):8n    from /Users/johnpitchko/.rvm/rubies/ruby-2.1.1/bin/irb:11:in `&lt;main&gt;'n</code></pre>
</div>
</div>

<p>Unlike the ! operator, you simply can’t add ? to any method name. It is, in fact, part of the method name. Consult <a href="http://www.ruby-doc.org/core-2.1.2">RDoc</a> for a list of all method names built into Ruby.</p>
