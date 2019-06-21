---
id: 61
title: How to Score 100 on Google PageSpeed with Jekyll and Github Pages
date: 2017-07-12T06:00:00+00:00
author: John Pitchko
excerpt: |
  <p>Since at least 2010, how fast a webpage loads in a users web browser affects how high it ranks on Google search result pages. Pages that load faster will outrank pages that load slower, assuming both pages score the same on other factors, such as relevancy and authority. Although Google admits that loading speed is less significant in determining ranking than other factors, web masters should optimize speed as much as possible both for search engine ranking but for creating an ideal user experience.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2017/07/12/how-to-score-100-on-google-pagespeed-with-jekyll-and-github-pages/
permalink: /how-to-score-100-on-google-pagespeed-with-jekyll-and-github-pages/
image: /wp-content/uploads/2017/07/How-to-Score-100-on-Google-PageSpeed-with-Jekyll-and-Github-Pages.png
categories:
  - Uncategorized
---
Since at least 2010, how fast a webpage loads in a users web browser affects how high it ranks on Google search result pages. Pages that load faster will outrank pages that load slower, assuming both pages score the same on other factors, such as relevancy and authority. <a href="https://webmasters.googleblog.com/2010/04/using-site-speed-in-web-search-ranking.html">Although Google admits that loading speed is less significant in determining ranking than other factors</a>, web masters should optimize speed as much as possible both for search engine ranking but for creating an ideal user experience.

Many guides and blog posts already exist that describe numerous ways to optimize static sites and web applications hosted on shared hosting, VPS’es, or the cloud. However, few guides exist which explain how to optimize load speed for Jekyll sites hosted on Github Pages. The challenge with using Github Pages is the inability to manage hosting configuration, typically done by modifying the <code class="highlighter-rouge">.htaccess</code> or web server configuration. Despite that limitation, it is possible to easily score near perfect on Google PageSpeed without using any non-standard hacks or custom plugins.
<h2 id="use-cloudflare-cdn">Use CloudFlare CDN</h2>
<em>Fixes <strong>Enable compression</strong> and <strong>Minify CSS/HTML/JS</strong> optimization</em>

CloudFlare is a leading content-delivery network that increased speed and security of websites. They offer a free tier of basic services that webmasters can utilize that will significantly decrease page load time.

Navigate to CloudFlare, set up a new account, and register your site. The process is fairly straight-forward. Part of the registration process involves configuring your domain to use the CloudFlare nameservers. Once this is enabled, your site will start to benefit from CloudFlare’s incredible network of high-performing routing.

Once nameserver configuration is complete, make the following changes:

Under <strong>Speed</strong> tab:

In the <strong>Auto Minify</strong> section, tick the boxes next to <strong>JavaScript</strong>, <strong>CSS</strong>, and <strong>HTML</strong>.

In the <strong>Enable Accelerated Mobile Links</strong> section, set <strong>Enable Accelerated Mobile Links</strong> to <strong>On</strong>.

Under <strong>Caching</strong> tab:

Set <strong>Browser Cache Expiration</strong> to <strong>8 days</strong>.

Under <strong>Page Rules</strong> tab:

<strong>Create Page Rule</strong>, input domain <strong>http://*.mydomain.com/</strong>, add setting <strong>Always Use HTTPS</strong>.
<h2 id="inline-critical-css">Inline Critical CSS</h2>
<em>Fixes <strong>Eliminate render-blocking JavaScript and CSS in above-the-fold content</strong> and <strong>Prioritize visible content</strong> optimization</em>

Typically, CSS are stored in files within a website, typically in a <code class="highlighter-rouge">/css</code> folder, with a link in the HTML file to the CSS document. Separating content from styling is typically a best practice. Unfortunately, when a web browser renders a web page with a linked stylesheet, it must pause rendering to initiate a separate connection to the web server to download the CSS file. This additional connection slows page load speed, delaying display of the page to the user for a few extra milliseconds.

To resolve this issue, and increase page load speed, webmasters can choose to insert style code directly into the HTML file. The browser can then immediately render the page as soon as it downloads the HTML file because all necessary styling is available. Of course, one should not embed <em>all</em> styling in the HTML file, as this violates the best practice mentioned above. Ideally, only styling that is critical to rendering the ‘above-the-fold’ content (i.e. all the content displayed in a browser window upon page load without requiring scrolling) be embedded in the HTML file.

Identifying CSS critical to above-the-fold content would normally be pretty painful. However, front-end developer <a href="http://twitter.com/pocketjoso">Jonas Ohlsson</a> developed a <a href="https://jonassebastianohlsson.com/criticalpathcssgenerator/">free tool that identifies critical CSS easily</a>. Simply provide your full URL and full CSS (minified or not), and the tool will return all critical CSS. Copy and paste the output CSS within <code class="highlighter-rouge">&lt;style&gt;&lt;/style&gt;</code> tags within the <code class="highlighter-rouge">&lt;head&gt;&lt;/head&gt;</code> tags in your HTML file.

Using Jekyll makes this even easier. Take the output CSS and insert it into a new file in your <code class="highlighter-rouge">_includes</code> directory (within <code class="highlighter-rouge">&lt;style&gt;&lt;/style&gt;</code> tags of course). Then, include this file using the <code class="highlighter-rouge">include</code> tag in the your layout HTML. This method keeps the critical CSS (which can be lengthy) out of your main layout file, making it more manageable to work with.
<h2 id="place-non-critical-css-and-javascript-references-at-the-bottom">Place Non-critical CSS and Javascript References at the Bottom</h2>
<em>Fixes <strong>Eliminate render-blocking JavaScript and CSS in above-the-fold content</strong> optimization</em>

As mentioned above, loading separate CSS and Javascript files in to an HTML document blocks rendering until files are fully downloaded by the web browser. Placing all CSS critical to the above-the-fold content inline the HTML allows the browser to display the initial content immediately when a user access the page.

All remaining (non-critical) CSS and Javascript should then be linked at the bottom of the HTML document. Placing these <code class="highlighter-rouge">&lt;link&gt;&lt;/link&gt;</code> and <code class="highlighter-rouge">&lt;script&gt;&lt;/script&gt;</code> tags right before the closing <code class="highlighter-rouge">&lt;/body&gt;</code> tag is sufficient.

Note that you may want to place some JavaScripts, such as the Google Analytics tracking code, within the <code class="highlighter-rouge">&lt;head&gt;&lt;/head&gt;</code> tags rather than before the closing <code class="highlighter-rouge">&lt;/body&gt;</code> tag. Doing so will ensure that Google Analytics immediately records the page view when the user accesses the page. This is likely not an issue for fast loading pages, but is a best practice recommended by Google. Also, if you use Google Tag Assistant to validate your Google Analytics tags, it will report a warning if it cannot detect the tag in the <code class="highlighter-rouge">&lt;head&gt;&lt;/head&gt;</code> section.
<h2 id="serving-google-analytics-locally">Serving Google Analytics Locally</h2>
<em>Fixes <strong>Leverage browser caching</strong> optimization</em>

A typical website using Google Analytics will include the necessary Javascript file via a link to Google’s servers. Since rendering of the webpage is paused until the script is downloaded from Google, which was flagged in PageSpeed as being sub-optimal (which yes seems odd because that implementation is how Google recommends serving Analytics Javascript). A solution is to instead download the script and host it on your web server.

Download the file by running this command from your terminal, then move it to whatever folder holds your JavaScripts. For this example, I have them in <code class="highlighter-rouge">/static/js/</code>
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>curl http://google-analytics.com/ga.js &gt; ga.js</code></pre>
</div>
</div>
Next, find the Google Analytics snippet in your HTML file, and locate the following line:
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');</code></pre>
</div>
</div>
Change it to point instead to the local copy of your Google Analytics:
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>n})(window,document,'script','{{ site.baseurl }}/static/js/analytics.js','ga');</code></pre>
</div>
</div>
Now your site will use a local copy of the Google Analytics tracker rather than downloading it from Google. One drawback of this approach is that your website has no way of utilizing any updates to the Analytics Javascript published to the Google servers. One solution I saw was to write a small <code class="highlighter-rouge">cron</code> job to download the latest version of the script on a scheduled basis. This solution will not work for sites using Github Pages, unfortunately.

Honestly, I cannot expect Google making significant changes to the tracking script often, so I am not very worried about this issue. One can always re-download the script before pushing new versions of the site to Github.

Another advantage to hosting the Analytics script locally is that execution of the script will no longer be blocked by ad blockers. Browser extensions such as Ghostery, AdBlock Plus, and Unblock Origin, stop the browser from executing scripts hosted on third-party servers, meaning that any users with these extensions will not be recorded in Google Analytics. By hosting the script on the same server as the website, these extensions should allow execution of the script and tracking of the session as normal. <em>Note</em> that I did not test this, but read it on the internet, so take the advice with a grain of salt.
<h2 id="concatenate-javascripts-and-load-asynchronously">Concatenate JavaScripts and Load Asynchronously</h2>
<em>Fixes <strong>Remove render-blocking JavaScript</strong> optimization</em>

A recommended fix for dealing with render-blocking JavaScript is to load it asynchronously using the <code class="highlighter-rouge">&lt;script async src=...&gt;&lt;/script&gt;</code> tag. Unfortunately, this fix does not work well for sites that use multiple scripts that have dependencies. For example, this site uses <a href="www.getbootstrap.com">Bootstrap</a>, which has a dependency on <a href="www.jquery.com">JQuery</a>. If one tries to load both scripts asynchronously, a race condition is created. The Bootstrap script may load before the JQuery script is fully loaded. Bootstrap will then report an error in the console and some functionality may not work or the the page may not render properly.

I resolved this issue in a very inelegant way. I concatenated all my JavaScripts together into a single file, then loaded that one file asynchronously. With the latest Bootstrap and JQuery scripts downloaded to my machine, the command to do this is pretty simple:
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>$ cat jquery-3.2.1.min.js &lt;(echo) bootstrap-3.3.7.min.js &lt;(echo) main.js &gt; all.js</code></pre>
</div>
</div>
The <code class="highlighter-rouge">&lt;(echo)</code> commands are added to separate each file in <code class="highlighter-rouge">all.js</code> by a newline, ensuring no syntax errors are created when the browser parses the file.

Once this file is created, I used the following line to include it in my HTML:
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>  &lt;script async src="/static/js/all.js"&gt;&lt;/script&gt;n</code></pre>
</div>
</div>
Now all required JQuery, Bootstrap, and other JavaScripts are loaded without blocking page rendering, but while also ensuring that all dependencies are fully loaded first.
<h2 id="conclusion-and-next-steps">Conclusion and Next Steps</h2>
Here is some proof that these tips in fact work.

PageSpeed score for the mobile version of the site:

PageSpeed score the for desktop version of the site:

These are the steps I took to improve the PageSpeed score of my website to over 90 for both web and mobile. Remember to apply these steps to all pages on your website (or at least your landing pages) and not to only your root domain. Since PageSpeed score does affect Google ranking, all landing pages should be optimized in order to rank as high as possible in Google searches. Through the use of shared layouts, Jekyll makes this easy. Optimizing a single common layout HTML file should apply to most, if not all, pages on a site. For example, this site uses a layout called <code class="highlighter-rouge">_layout.html</code> file, which all other layout files (<code class="highlighter-rouge">_page.html</code> and <code class="highlighter-rouge">_post.html</code>) inherit.

Some of the tips specified above promote hosting external CSS and Javascript locally rather than using a CDN. There are several advantages of using CDN. Firstly, a user may actually load content from a CDN faster than from your website, ultimately rendering the page faster. Secondly, if a user has already accessed a website that uses the same content from the same CDN, their web browser will load the cached version of that content on their local machine when they render your website rather than downloading a separate copy from your web server, thus decreasing page load time. Keep in mind that the reason this guide instructs webmasters to serve these files locally is because PageSpeed was to address certain issues, such as suboptimal browser caching and blocking content. Implementing these improvements may result in a high PageSpeed score (which is the point of this post), but may not necessarily create an optimal experience for users. In most cases, the improvement in page load speed by these resources on a CDN is likely minimal.

After many hours spent optimizing this site and analyzing the improvements, I ultimately decided to <em>not</em> store the Google Analytics script locally. Since the script is likely tightly bound to the data collection and transmission process to Google Analytics, and I highly value accurate analytics data, I wanted to ensure that changes made to the script on Google’s servers are instantly applied to my website.
<h2 id="further-reading">Further Reading</h2>
For more information, please seek the following resources (who I thank for providing this key information):
<ul>
 	<li style="list-style-type: none">
<ul>
 	<li><a href="http://garthdb.com/writings/i-am-a-jekyll-god/">I am a Jekyll God</a></li>
</ul>
</li>
</ul>
<ul>
 	<li style="list-style-type: none">
<ul>
 	<li><a href="https://chrishallahan.com/blog/pass-google-pagespeed-performance-test">HOW TO GET YOUR JEKYLL + GITHUB PAGES WEBSITE TO PASS GOOGLE’S PAGESPEED TESTS</a></li>
</ul>
</li>
</ul>
<ul>
 	<li style="list-style-type: none">
<ul>
 	<li><a href="http://diywpblog.com/leverage-browser-cache-optimize-google-analytics/">Leverage Browser Cache Optimize Google Analytics</a></li>
</ul>
</li>
</ul>