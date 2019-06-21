---
id: 75
title: Normalization of Data in NoSQL Databases
date: 2015-12-09T18:12:01+00:00
author: John Pitchko
excerpt: |
  <p>justmeteor.com recently posted an article titled Why we don’t denormalize anymore. The article describes how author pmuens and his colleagues have stopped denormalizing data in their Meteor/MongoDB projects due to the complexity of updating data when it changes. This is in despite of his claim that “Denormalization is the “community approved standard” to deal with related data in NoSQL systems”.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2015/12/09/normalization-of-data-in-nosql-databases/
permalink: /normalization-of-data-in-nosql-databases/
categories:
  - Uncategorized
---
<p><a href="http://Denormalization is the “community approved standard” to deal with related data in NoSQL systems.">justmeteor.com</a> recently posted an article titled <em>Why we don’t denormalize anymore</em>. The article describes how author pmuens and his colleagues have stopped denormalizing data in their Meteor/MongoDB projects due to the complexity of updating data when it changes. This is in despite of his claim that <em>“Denormalization is the “community approved standard” to deal with related data in NoSQL systems”</em>.</p>

<p>Personally, I think denormalizing data is just asking for trouble. Sure it makes life a little easier in the early days of your product when the volume and variety of data items in your DB is small, but as your product (and team) grow, there is a serious risk of having data inconsistencies.</p>

<p>I have not read any further arguments for or against denormalization. I’m sure there are some clever and experienced developers that praise denormalization, but for myself and my style of development, it adds too much risk and too little value. Also, it creates unneeded complexities in the database and the processes for manipulating that data.</p>

<p>If you feel strongly one way or another, please comment below. I’m open to hearing what the community thinkgs.</p>
