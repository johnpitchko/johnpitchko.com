---
id: 762
title: 'RESOLVED &#8220;Method &#8216;method-name&#8217; not found [404]&#8221; in Meteor'
date: 2018-10-19T04:25:56+00:00
author: John Pitchko

guid: http://www.johnpitchko.com/?p=762
permalink: /resolved-method-method-name-not-found-404-in-meteor/
categories:
  - Meteor
  - Software Development
---
Playing around in [Meteor](https://www.meteor.com) again as I had an idea for a simple web app to build. As a Meteor-novice, I am using the [simple-todos tutorial](https://www.meteor.com/tutorials/blaze/creating-an-app) (using [Blaze](http://blazejs.org)) as an example of how to build a working app. Tonight, I encountered this error when I tried to call a Meteor method:

```
Error invoking Method 'assets.insert'
error: 404
errorType: "Meteor.Error"
isClientSafe: true
message: "Method 'assets.insert' not found [404]"
reason: "Method 'assets.insert' not found"
```

The cause of the issue was that the file defining the `assets.insert` method was not available on the server-side, which explains the 404 error message. Methods in Meteor need to be imported in the main server code as these are intended to run on the server only. I don't recall the concept of having to import code/modules when I last worked in Meteor two years ago. The adoption of [ECMAScript 6](https://www.w3schools.com/js/js_es6.asp) and associated best practices have means that [code stored in other files should be explicitly imported in Meteor applications](https://guide.meteor.com/structure.html#intro-to-import-export), instead of being globally scoped (which I believe it was before).

To fix this error, I needed to import the method definition on the server.

In _server/main.js_, I added the following import statement:
`import '../imports/api/assets.js';`

Now, this method call executes correctly. So the lesson here is _ensure all server-side Meteor methods are imported on the server_. Troubleshooting this error was confusing, because the code was running on the client. Inserting a simple `console.log('Hello world')` would print that message in the Javascript console in the browser, along with the error message. But it was not executing on the server because the code could not be found.