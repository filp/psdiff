# psdiff
**http://filp.github.io/psdiff**

*psdiff* uses git hooks and the lovely [psd.rb](https://github.com/layervault/psd.rb)
library to automagically generate up-to-date image files from PSDs in the repository,
allowing you to easily preview them and make use of github's image diff tools.

[![Diff Example](http://i.imgur.com/jCOBI2H.png)
**[Check out an example diff](https://github.com/filp/psdiff/commit/44b6b0466fe707396cfd6c771e5d744025e66196?diff-0=1-42)**
](https://github.com/filp/psdiff/commit/44b6b0466fe707396cfd6c771e5d744025e66196?diff-0=1-42)

```bash
filp@filp-x ~/dev/myproject
> $ git status

## master
A  mock.psd

filp@filp-x ~/dev/myproject
> $ git commit -m "Add mock.psd"

psdiff: created mock.psd.png # <----------
[master 1156ea5] Add mock.psd
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 1.psd
 create mode 100644 1.psd.png
```

That's it!

## How do I install this?

Glad you asked! Couldn't be easier. Just run this in the root of a git repo:

```
bash <(curl -sSL https://raw.github.com/filp/psdiff/master/install.sh)
```

Here's what that script does:

 1. Scolds you if you don't have Ruby installed (it's required!)
 2. Checks if the `psd` gem is installed and allows you to install it if needed.
 3. Downloads the `pre-commit` hook from this repo to your `.git/hooks`.

Congrats! Any changes you make to psd files in the repository will now trigger psdiff!

### Warning

It's **really** not a good idea to keep large PSD files in your repositories - this project
is just a proof of concept/half-assed joke.

If you're a designer looking for a version control solution, check out
[LayerVault](https://layervault.com)

## Author

This tiny library was developed by [Filipe Dobreira](https://github.com/filp)
