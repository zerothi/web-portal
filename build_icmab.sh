#!/bin/sh
#
# Commands to build the Siesta website from the Jekyll sources
#
# For the ICMAB site
# (Still marginally non-optimal, due to the long baseurl)
#
jekyll build --config _config_icmab.yml
rsync -av _site/ internal.icmab.es:siesta-jekyll
ssh internal.icmab.es "chgrp -R www-data siesta-jekyll"
#
# For the GitHub pages site
# (an implicit 'jekyll build' will be done automatically, using the
#  default _config.yml file)
#
# For local development
#
#jekyll build --config _config_dev.yml


