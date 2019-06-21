---
id: 77
title: Core Location in iOS 8
date: 2015-02-05T04:21:16+00:00
author: John Pitchko
excerpt: |
  <p>Shame on you, Apple! You left out some very critical documentation in the Core Location programming guide and CLLocationManager class references! I bet there are frustrated developers all over.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2015/02/05/core-location-in-ios-8/
permalink: /core-location-in-ios-8/
categories:
  - Uncategorized
---
<p>Shame on you, Apple! You left out some very critical documentation in the Core Location programming guide and CLLocationManager class references! I bet there are frustrated developers all over.</p>

<p>Apple changed how permissions for location services are requested in apps through Core Location. Its a fairly simple change (a new function and two new Info.plist keys), but location services will not work in your app without it!</p>

<p>Call this function from your CLLocationManager for apps using location services when in the foreground:</p>

<p><code class="highlighter-rouge">requestWhenInUseAuthorization()</code></p>

<p>Or call this function from your CLLocationManager for apps using location services at all times (even in the background):</p>

<p><code class="highlighter-rouge">requestAlwaysAuthorization()</code></p>

<p>Then add the following keys to your Info.plist:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>&lt;code&gt;&lt;key&gt;NSLocationUsageDescription&lt;/key&gt; &lt;string&gt;My App would pretty please like to use your GPS.&lt;/string&gt;nn&lt;key&gt;NSLocationWhenInUseUsageDescription&lt;/key&gt; &lt;string&gt;My App would pretty please like to use your GPS.&lt;/string&gt;n&lt;/code&gt;n</code></pre>
</div>
</div>

<p>Click the <a href="http://www.splinter.com.au/2014/09/14/ios8-corelocation/">Chris Hulbert’s page</a> for more details.</p>
