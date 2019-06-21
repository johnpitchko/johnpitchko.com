---
id: 54
title: 'What is the <!doctype> HTML tag?'
date: 2017-03-31T04:04:48+00:00
author: John Pitchko
excerpt: |
  <p>I have written a fair amount of HTML code in my day. Often times, this was quick and ugly, which served the purpose of a simple test or last minute school assignment. I usually did not follow best practices or defined standards. One standard that I have recently been encountering when viewing sample HTML code from experts on the web, yet have never fully understood, was the &lt;!doctype&gt; tag.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2017/03/31/what-is-the-doctype-html-tag/
permalink: /what-is-the-doctype-html-tag/
categories:
  - Uncategorized
---
I have written a fair amount of HTML code in my day. Often times, this was quick and ugly, which served the purpose of a simple test or last minute school assignment. I usually did not follow best practices or defined standards. One standard that I have recently been encountering when viewing sample HTML code from experts on the web, yet have never fully understood, was the <code class="highlighter-rouge">&lt;!doctype&gt;</code> tag.

I figured since all true HTML documents are wrapped in <code class="highlighter-rouge"><span class="nt">&lt;html&gt;&lt;/html&gt;</span></code> tags, specifying an additional document type tag was unnecessary. In this post, I will dive deeper into the purpose of the <code class="highlighter-rouge">&lt;!doctype&gt;</code> tag, and why its inclusion in an HTML document is vital to its proper rendering in a user’s web browser.
<h2 id="what-is-the-doctype-tag">What is the <code class="highlighter-rouge">&lt;!doctype&gt;</code> tag?</h2>
The first line of every HTML file <em>should</em> be the <code class="highlighter-rouge">&lt;!doctype&gt;</code> tag. This tag provides information to web browsers about the type of document it is processing, and instructs the browser to render content differently depending on the type.
<h2 id="example">Example</h2>
Below is an example of a valid HTML 5 document using the <code class="highlighter-rouge">&lt;!doctype&gt;</code> tag:
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code><span class="cp">&lt;!doctype html&gt;
</span><span class="nt">&lt;html&gt;
</span> <span class="nt">&lt;head&gt;
</span><span class="nt">&lt;title&gt;</span>Hello, world!<span class="nt">&lt;/title&gt;
</span><span class="nt">&lt;/head&gt;</span> 

<span class="nt">&lt;body&gt;
</span><span class="nt">&lt;p&gt;</span>This is a paragraph.<span class="nt">&lt;/p&gt;
</span><span class="nt">&lt;/body&gt;
</span> <span class="nt">&lt;/html&gt;</span></code></pre>
</div>
</div>
As you can see in this basic example, the very first tag is the <code class="highlighter-rouge">&lt;!doctype&gt;</code> tag. Immediately following is the enclosing <code class="highlighter-rouge"><span class="nt">&lt;html&gt;&lt;/html&gt;</span></code> tags with the rest of the content for the page.
<h2 id="implementation">Implementation</h2>
<h3 id="html-5">HTML 5</h3>
The current and most recent version of HTML, which is HTML 5, requires a very basic statement:
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;!doctype html&gt;</code></pre>
</div>
</div>
The <code class="highlighter-rouge">html</code> attribute specifies that the document should be rendered following HTML5 specification. In HTML5, no additional attributes or parameters are required. Nice and easy!
<h3 id="html-401-strict">HTML 4.01 Strict</h3>
Older versions of HTML, such as HTML 4.01, require the <code class="highlighter-rouge">&lt;!doctype&gt;</code> tag to refer to the specific DTD the document adheres to. The DTDs are hosted by <a href="http://www.w3.org">w3.org</a>.

There are multiple versions of the HTML 4.01 DTD. The <em>strict</em> version only includes valid HTML 4.01 tags and nothing that from previous versions that has been deprecated.
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"&gt;</code></pre>
</div>
</div>
<h3 id="html-401-transitional">HTML 4.01 Transitional</h3>
The <em>transitional</em> DTD includes all valid HTML 4.01 tags plus all deprecated tags. Use this if you are using really old, deprecated HTML (which I guess may exist somewhere).
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"&gt;</code></pre>
</div>
</div>
<h2 id="why-is-the-doctype-tag-important">Why is the &lt;!doctype&gt; Tag Important?</h2>
Modern web browsers support multiple modes for parsing and rendering content. When the browser observes the <code class="highlighter-rouge">&lt;!doctype html&gt;</code> statement (or the appropriate equivalent for HTML 4 and older), it renders the page in <strong>Standard mode</strong>. In this mode, the browser will render the page following the specified HTML and CSS specification.

If this tag is not present, or is malformed, it will instead render the page in <a href="https://en.wikipedia.org/wiki/Quirks_mode">Quirks mode</a>. This mode is available in web browsers in order to support old content published before adoption of standard HTML and CSS specifications. In those times (15+ years ago), most web browsers did not implement complete HTML and CSS specifications. It was common for browsers to only implement a subset of the specification, or implement features that did not quite match the specification. There was no guarantee web browsers would render HTML and CSS precisely the same as each other. Because some of that old (practically ancient) content may still exist on the internet, quirks mode is available in browsers.
<h2 id="conclusion">Conclusion</h2>
The <code class="highlighter-rouge">&lt;!doctype&gt;</code> is important for two reasons. Firstly, including it forces the browser to process the page using the appropriate render mode, increasing confidence that the browser will present the document to users as the creator expects. Secondly, including it adheres to the HTML specification from the <a href="http://www.w3.org">W3</a>, which is something all quality web developers and web content authors should strive toward.

Including the the tag is not necessary for the browser to render the HTML document (i.e. the content will still display). This creates a challenge (and one that I experience), because it can be quite easy to forget to include it since pages without it will, most likely, appear correct when testing. Therefore, everyone writing web content should remember to include the tag and make inclusion part of their standard process.