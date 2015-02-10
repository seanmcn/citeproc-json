#!/bin/bash

./test.py -Z
cp citeproc_zotero.js ~/src/zotero-processor/chrome/content/citeproc.js

cat citeproc_zotero.js \
  | sed -s 's/this\.development_extensions\.main_title_from_short_title = false/this\.development_extensions\.main_title_from_short_title = true/' \
  | sed -s 's/this\.development_extensions\.uppercase_subtitles = false/this\.development_extensions\.uppercase_subtitles = true/' \
  > ~/src/zotero-uppercase-subtitles/chrome/content/citeproc.js

mv citeproc_zotero.js ~/src/zotero/chrome/content/zotero/xpcom/citeproc.js
