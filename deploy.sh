#! /bin/sh

# Sync prodution AWS with local

rsync -av --delete --exclude=.git ./_site/ johnpitchko@aws:/var/www/johnpitchko.com
