# psdiff

This is a proof of concept project attempting to ever so slightly improve git workflows involving large PSD (Photoshop) files.

*psdiff* uses git hooks and the lovely [psd.rb](https://github.com/layervault/psd.rb)
library to automagically generate up-to-date image files from PSDs in the repository,
allowing you to easily preview them and make use of github's image diff tools.

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

While it's generally not a good idea to have large binary files in your git repository, PSD files are a common exception (since it's often convenient to keep them alongside the rest of the project).

If you're a designer looking for a version control solution, check out
[LayerVault](https://layervault.com)

## Installing

1. Install the `psd` gem: `gem install psd`
2. *(optional)* Install the `psd_native` gem if you're on Ruby MRI: `gem install psd_native`
3. Copy `git/hooks/pre-commit` to your project's `.git/hooks` directory, any
future changes to `psd` files will trigger `psdiff` to generate image files.

## Author

This tiny library was developed by [Filipe Dobreira](https://github.com/filp)