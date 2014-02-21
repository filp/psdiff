# psdiff

This is a proof of concept project attempting to ever so slightly improve git workflows involving large PSD (Photoshop) files.

*psdiff* uses git hooks and the lovely [psd.rb](https://github.com/layervault/psd.rb)
library to automagically generate up-to-date image files from PSDs in the repository,
allowing you to easily preview them and make use of github's image diff tools.

While it's generally not a good idea to have large binary files in your git repository, PSD files are a common exception (since it's often convenient to keep them alongside the rest of the project).

## author

This tiny library was developed by [Filipe Dobreira](https://github.com/filp)