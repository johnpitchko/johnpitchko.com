---
id: 69
title: Deploy code using git
date: 2016-08-04T22:25:03+00:00
author: John Pitchko
excerpt: |
  <p>It is common amongst developers to deploy code using git. However, I have never done this before. I am (generally) familiar with git and source code management concepts, but using git for a deployment is something I always wanted to do. BitBucket (and I expect other repo services) allow users to add a deployment key to their repo. This key is read-only, so you can be confident when you upload it to your remote host, no malicious user can use it to modify your code.</p>

guid: https://www.johnpitchko-wp.pitchko.com/2016/08/04/deploy-code-using-git/
permalink: /deploy-code-using-git/
categories:
  - Uncategorized
---
It is common among developers to deploy code using <a href="https://git-scm.com/">git</a>. However, I have never done this before. I am (generally) familiar with git and source code management concepts, but using git for a deployment is something I always wanted to do. <a href="https://bitbucket.org">BitBucket</a> (and I expect other repo services) allow users to add a deployment key to their repo. This key is read-only, so you can be confident when you upload it to your remote host, no malicious user can use it to modify your code.

These instructions are written for BitBucket (which is the remote repo that I use), but should apply in a general sense to all remote repos.
<h1 id="generate-a-new-publicprivate-key-pair">Generate a new public/private key pair</h1>
<code class="highlighter-rouge">$ ssh-keygen -t rsa</code>

Be sure to set a passphrase, for maximum security. After all, you will be uploading the private key to a 3rd party, so make sure a passphrase is required so anyone who accesses your key cannot access your code.
<h1 id="upload-public-key-to-bitbucket-as-deployment-key">Upload public key to BitBucket as deployment key</h1>
Navigate to your repo on the BitBucket website. Under <em>Navigation</em> in the left-side bar, click <em>Settings</em>, <em>Deployment keys</em>. Click the <em>Add key</em> button, and follow the prompts.
<h1 id="copy-private-key-to-host">Copy private key to host</h1>
<code class="highlighter-rouge">$ scp ~/.ssh/deployment-key hostname:~/.ssh/deployment-key</code>
<h1 id="configure-ssh-identity-on-host">Configure ssh identity on host</h1>
Edit the <code class="highlighter-rouge">~/.ssh/config</code> file on the host, using vi/vim/nano/emacs/whatever is available to configure ssh to use the private key when authenticating git requests with BitBucket.

Add the following line:
<div class="highlighter-rouge">
<div class="highlight">
<pre class="highlight"><code>Host bitbucket.orgnIdentityFile ~/.ssh/deployment-key</code></pre>
</div>
</div>
<h1 id="set-permissions-for-private-key-on-host">Set permissions for private key on host</h1>
When I tried to clone my repo, Git on my host alerted me to a security concern that the private key had excessive privileges. Run the following command to ensure that the private key is only accessible to your user:

<code class="highlighter-rouge">chmod 600 ~/.ssh/deployment-key</code>
<h1 id="clone-repository">Clone repository</h1>
<code class="highlighter-rouge">git clone git@bitbucket.org:account-name/repo-name.git local-directory-name</code>

<em>Note</em> these instructions assume you want to deploy the master branch. If you want a different branch, then add the <code class="highlighter-rouge">-b branch-name</code> flag to the clone command.

That’s it! Once the repo is cloned, you can simply run <code class="highlighter-rouge">git pull</code> to grab the updates in BitBucket. Follow these instructions each time you wish to deploy code using git.