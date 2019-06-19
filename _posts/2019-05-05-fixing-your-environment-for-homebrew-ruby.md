---
title: Fixing your Environment for Homebrew Ruby
---

Although Ruby is included in MacOS, it is an old version that you probably don't want to mess around with since a few MacOS apps rely on it. To get around this, you can install Ruby via Homebrew.

I encountered two issues after installing Ruby via Homebrew:
1. Binaries that were installed via `gem` are not found on the terminal.
2. Gems were not being installed in the correct directory. According to the message presented after Homebrew installs Ruby, all gems *will* be installed to `/usr/local/lib/ruby/gems/2.6.0`, with their binaries in `/usr/local/lib/ruby/gems/2.6.0/bin`

After thorough (and confusing analysis), here are the directories you should be aware of when installing Homebrew Ruby and any subsequent gems:

1. `/usr/local/opt/ruby/bin` is where Homebrew installs the essential Ruby binaries.
1. `/usr/local/lib/ruby/gems/2.6.0/bin` is where `gem` *should* install binaries.
1. `/usr/local/opt/ruby/lib/ruby/gems/2.6.0` is where `gem` *actually* installs binaries. Placing binaries here is ideal because they will persist even if Ruby is uninstalled or updated to a new version.

To resolve this problem, you will need to modify some environment variables. Add the following to your .bash_profile:

```
# Put gem binaries on system path. These have priority of the binaries included in Ruby deployment
export PATH=/usr/local/lib/ruby/gems/2.6.0/bin:$PATH

# Put Homebrew's Ruby on system path
export PATH=/usr/local/opt/ruby/bin:$PATH

# Install Ruby gems in a distinct directory, so they will persist if Homebrew Ruby is uninstalled
export GEM_HOME=/usr/local/lib/ruby/gems/2.6.0
export GEM_PATH=/usr/local/lib/ruby/gems/2.6.0
```

Now your gems will install to the expected directory, you can access binaries installed via `gem` from the command line, and calls to `ruby` will use Homebrew's version of Ruby rather than the outdated version included in MacOS.
