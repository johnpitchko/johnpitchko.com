---
id: 58
title: How to Enable LinkedIn company pages in WordPress Jetpack plugin
date: 2017-03-05T01:18:44+00:00
author: John Pitchko
excerpt: |
  <p>The Jetpack plugin is installed by default in virtually all WordPress deployments. The plugin, developed by Automattic, provides some extremely useful functions that most bloggers and WordPress site owners want to add to their website. By combining these common functionalities into a single plugin, Automattic saves site owners time by no longer having to scour the internet for compatible, reliable plugins that provide basic functions.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2017/03/05/how-to-enable-linkedin-company-pages-in-wordpress-jetpack-plugin/
permalink: /how-to-enable-linkedin-company-pages-in-wordpress-jetpack-plugin/
categories:
  - Uncategorized
---
The <a href="https://jetpack.com/">Jetpack</a> plugin is installed by default in virtually all WordPress deployments. The plugin, developed by <a href="https://automattic.com/">Automattic</a>, provides some extremely useful functions that most bloggers and WordPress site owners want to add to their website. By combining these common functionalities into a single plugin, Automattic saves site owners time by no longer having to scour the internet for compatible, reliable plugins that provide basic functions.

One of these basic functions is the <a href="https://jetpack.com/support/extra-sidebar-widgets/social-media-icons/">Social Media Icons</a> widget. Adding this widget places common social media icons on a WordPress site, along with links to specific social media profiles. The widget supports Facebook, Twitter, LinkedIn, Google+, Instagram, Pinterest, and several other popular social media platforms.

Unfortunately, this widget was designed to support personal social media profiles and not company profiles. Because LinkedIn uses a <em>slightly</em> different URL structure for company pages, any company pages added to the LinkedIn field in this widget will not work. Below are instructions to remedy this problem. Note that this will involve editing the code of your WordPress theme, so those without previous experience doing so may want to seek help from a more experienced person.
<ol>
 	<li>Add the following code to the functions.php file in your themenThis can be accomplished either through the WordPress admin page (<em>Appearance</em> &gt; <em>Editor</em>), or through a text editor on your webhost (such as vim or emacs).</li>
</ol>
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>function jetpackme_linkedin_company_icon( $html_array ) {  
return  $html_array + array(
    25 =&gt;    // This key can be modified to change the order the new item will appear in the list
    '&lt;a title="Pitchko Media" '
        . 'href="https://www.linkedin.com/company/pitchko-media" '
        . 'class="genericon genericon-linkedin" target="_blank"&gt;'
        . '&lt;span class="screen-reader-text"&gt;Pitchko Media Company Profile&lt;/span&gt;&lt;/a&gt;'
  );
}
add_filter( 'jetpack_social_media_icons_widget_array', 'jetpackme_linkedin_company_icon' );</code></pre>
</div>
</div>
<ol>
 	<li>Find your LinkedIn company page URL codenThis is usually the name of your company separated by dashes rather than spaces. For example if your company name is <em><a href="http://www.pitchkomedia.com/">Pitchko Media</a></em>, the URL code will be <code class="highlighter-rouge">pitchko-media</code>.</li>
 	<li>Insert your LinkedIn company page URL code into the codenIn the example above, replace <code class="highlighter-rouge">href="https://www.linkedin.com/company/pitchko-media"</code> with <code class="highlighter-rouge">href="https://www.linkedin.com/company/your-company-page-url"</code>.</li>
 	<li>Change the title and screen reader to your company namenAgain, in the example above, replace <code class="highlighter-rouge">&lt;a title="Pitchko Media"</code> with <code class="highlighter-rouge">&lt;a title="Your Company Name"</code>.

To support screen readers, you should also replace <code class="highlighter-rouge">&lt;span class="screen-reader-text"&gt;Pitchko Media Company Profile&lt;/span&gt;</code> with <code class="highlighter-rouge">&lt;span class="screen-reader-text"&gt;Your Company Name Company Profile&lt;/span&gt;</code>&nbsp;</li>
 	<li>Save your changes and refresh your page.

If you are using the WordPress built-in editor, press <em>Update File</em>. If you are using a text editor, save your file normally (ESC,:wq) for you vim-types.

Upon refreshing your site, you should see the LinkedIn icon wherever you placed the Social Media Icons widget. Clicking on the icon should take you to your company page.

<span style="font-size: 1rem;">This is a quick and dirty method for supporting company pages in the Social Media Icons widget in Jetpack. The original code can be found on the </span><a style="font-size: 1rem;" href="https://wordpress.org/support/topic/workaround-for-linkedin-url-problems/">WordPress.org support forum</a><span style="font-size: 1rem;">. It would be nice if Automattic built this support into the widget so it can be edited through the widget user interface rather than the code editor. However, since WordPress seems to maintain its focus on individual users and personal blogs, I do not expect to see company/business support any time soon.</span></li>
</ol>
Did this work for you? Please leave a comment or send me an email and let me know how you made out. If you need help, please contact me as I would be happy to help you.