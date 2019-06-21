---
id: 101
title: Dancer and TemplateToolkit
date: 2014-04-12T15:15:04+00:00
author: John Pitchko
excerpt: |
  <p>I was struggling with an issue with my Dancer work. I wrote code to pull a collection of rows from a database table and pass them into a template file for display. The template file would then iterate through each row in the collection and display the data in a new HTML table row. When I tested this out, it was not working.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/04/12/dancer-and-templatetoolkit/
permalink: /dancer-and-templatetoolkit/
categories:
  - Uncategorized
---
<p>I was struggling with an issue with my Dancer work. I wrote code to pull a collection of rows from a database table and pass them into a template file for display. The template file would then iterate through each row in the collection and display the data in a new HTML table row. When I tested this out, it was not working.</p>

<p>It turns out that the default template engine that Dancer uses (Dancer::Template::Simple) does not support parsing advanced data structures. It cannot handle listrefs or hashrefs passed to it from a Dancer controller. In order to use these data structures, you need to use a more advanced template engine, like Template Toolkit.</p>

<p>I don’t know much about Template Toolkit. It appears to be an independent template engine that many web frameworks in many different languages supports. The website with more information is <a href="http://template-toolkit.org/">here</a>.</p>

<p>Here is how to use Template Toolkit in your Dancer environment. These instructions assume that you have not installed Template Toolkit before for this environment.</p>

<h1 id="install-template-modules-from-cpan">Install Template modules from CPAN</h1>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>cpanm Templaten</code></pre>
</div>
</div>

<h1 id="change-all---to---in-your-template-files">Change all &lt;{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad} {ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}&gt; to [{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad} {ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}] in your template files</h1>

<p>If you were using the simple template, all the variables in your template files will be surrounded by &lt;{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad} and {ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}&gt; characters. Template Toolkit does not recognize these characters out of the box, so you must change them to the default [{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad} and {ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}]. I believe that you can change this in the Dancer configuration, but maybe just stick with the defaults to make life easy. This action can be performed with any decent text editor; use the global search and replace function.</p>

<h1 id="update-dancers-yaml-configuration">Update Dancer’s YAML configuration</h1>

<p>Open your config.ym file. Find and comment out the line that says template:simple. Insert the lines to enable Template Toolkit. The file should contain this now:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code># template: "simple"ntemplate: "template_toolkit"nengines:n    template_toolkit:n        start_tag: '[{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}'n        end_tag:   '{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}]'n</code></pre>
</div>
</div>

<h1 id="validate-how-you-pass-data-from-your-controller-to-your-template">Validate how you pass data from your controller to your template</h1>

<p>Simple data elements, like a hash or list, can be passed by value.</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>template 'viewWorker.tt', { worker =&gt; $worker };n</code></pre>
</div>
</div>

<p>Complex data elements, like a list of hashes, must be passed by reference (place a  in front of it).</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code># @workerList is a list of hashesntemplate 'viewWorkers.tt', { workerList =&gt; @workerList };n</code></pre>
</div>
</div>

<h1 id="access-data-in-your-templates">Access data in your templates</h1>

<p>To iterate through a complex data structure, like a list of hashes, use the FOREACH function. You can then access the data fields using dot notation.</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>[{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad} FOREACH worker IN workerList {ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}]    n   &lt;tr&gt;n        &lt;td&gt;[{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad} worker.workerId {ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}]&lt;/td&gt;n        &lt;td&gt;[{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad} worker.firstName {ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}]&lt;/td&gt;n        &lt;td&gt;[{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad} worker.lastName {ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}]&lt;/td&gt;n        &lt;td&gt;Nil&lt;/td&gt;n    &lt;td&gt;&lt;a href="/viewWorker.tt?workerId=?[{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad} worker.workerId {ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}]"&gt;View&lt;/a&gt;&lt;/td&gt;n    &lt;/tr&gt;n    [{ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad} END {ae83d9d521226808aaf5363be37edd826578aa3462b1edb98735bf6151518dad}]n</code></pre>
</div>
</div>
