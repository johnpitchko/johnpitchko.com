---
id: 92
title: has_and_belongs_to_many
date: 2014-07-24T03:49:37+00:00
author: John Pitchko
excerpt: |
  <p>My Rails work is going pretty well. I am making progress and feel like I am learning quite a bit. I must say that the guides on guides.rubyonrails.com are quite excellent. They cover all the necessary details without going overboard and provide an excellent starter tutorial.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2014/07/24/has_and_belongs_to_many/
permalink: /has_and_belongs_to_many/
categories:
  - Uncategorized
---
<p>My Rails work is going pretty well. I am making progress and feel like I am learning quite a bit. I must say that the guides on guides.rubyonrails.com are quite excellent. They cover all the necessary details without going overboard and provide an excellent starter tutorial.</p>

<p>My accomplishment for tonight was figuring out how to use the has_and_belongs_to_many model association. This association creates many-to-many relationships between models. For example, a music playlist contains multiple songs, and any single song can belong to multiple playlists. This association</p>

<p>Here is how to create these associations.</p>

<h1 id="1-generate-your-models">1. Generate your models</h1>

<p>Or re-use models that you’ve already created.</p>

<h1 id="2-add-the-association-keyword">2. Add the association keyword</h1>

<p>Add has_and_belongs_to_many keyword to each of your models, followed by the name of the model to associate to.</p>

<h1 id="3-create-the-migration">3. Create the migration</h1>

<p>The join table, which associates the links the ids from the two models, must be created as a migration. Create a migration called CreateXXXYYYJoinTable where XXX is the name of the first model and YYY is the name of the second model. Inside the model, add a create_table block following the template below:</p>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>      create_table :xxxs_yyys, id: false do |t|n          t.integer :xxx_idn          t.integer :yyy_idn      endn</code></pre>
</div>
</div>

<p>Note the pluralized model names in the name of the block.</p>

<h1 id="4-run-the-migration">4. Run the migration</h1>

<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>rake:db_migraten</code></pre>
</div>
</div>
