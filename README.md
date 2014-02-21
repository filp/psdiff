# psdiff

*psdiff* uses git hooks and the lovely [psd.rb](https://github.com/layervault/psd.rb)
library to automagically generate up-to-date image files from PSDs in the repository,
allowing you to easily preview them and make use of github's image diff tools.

![Diff Example](http://i.imgur.com/jCOBI2H.png)
**Check out an example diff**: https://github.com/filp/psdiff/commit/44b6b0466fe707396cfd6c771e5d744025e66196?diff-0=1-42

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

## Warning

It's **really** not a good idea to keep large PSD files in your repositories - this project
is just a proof of concept/half-assed joke.

If you're a designer looking for a version control solution, check out
[LayerVault](https://layervault.com)

## Installing

1. Install the `psd` gem: `gem install psd`
2. *(optional)* Install the `psd_native` gem if you're on Ruby MRI: `gem install psd_native`
3. Copy `git/hooks/pre-commit` to your project's `.git/hooks` directory, any
future changes to `psd` files will trigger `psdiff` to generate image files.

## Author

This tiny library was developed by [Filipe Dobreira](https://github.com/filp)
