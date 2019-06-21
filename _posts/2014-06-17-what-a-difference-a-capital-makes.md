---
id: 87
title: What a difference a capital makes….
date: 2014-06-17T03:04:15+00:00
author: John Pitchko
excerpt: |
  <p>My Ruby journey continues. I made a little web app that sends an email through an open SMTP server. Its very basic, but it works (and heck, I am proud).</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/06/17/what-a-difference-a-capital-makes/
permalink: /what-a-difference-a-capital-makes/
categories:
  - Uncategorized
---
<p>My Ruby journey continues. I made a little web app that sends an email through an open SMTP server. Its <em>very</em> basic, but it works (and heck, I am proud).</p>

<p>Ran into a weird error however. When I launched my app using rackup, I received the following error:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>/Users/johnpitchko/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/builder.rb:43:in `const_get': wrong constant name Sinatra-mail-example (NameError)n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/builder.rb:43:in `parse_file'n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/server.rb:277:in `build_app_and_options_from_config'n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/server.rb:199:in `app'n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/server.rb:314:in `wrapped_app'n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/server.rb:250:in `start'n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/lib/rack/server.rb:141:in `start'n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/gems/rack-1.5.2/bin/rackup:4:in `&lt;top (required)&gt;'n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/bin/rackup:23:in `load'n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/bin/rackup:23:in `&lt;main&gt;'n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/bin/ruby_executable_hooks:15:in `eval'n    from /Users/johnpitchko/.rvm/gems/ruby-2.1.1/bin/ruby_executable_hooks:15:in `&lt;main&gt;'nn20:59:23 [rerun] Sinatra-mail-example Launch Failedn</code></pre>
</div>
</div>

<p>When I launched the app by just calling the ruby executable, it quit immediately without any error message.</p>

<p>It turns out that I used</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>require 'Bundler'n</code></pre>
</div>
</div>

<p>instead of</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>require 'bundler'n</code></pre>
</div>
</div>

<p>So, the lesson here is to keep capitalization in mind when coding!</p>
