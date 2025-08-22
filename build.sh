#!/bin/bash
set -e
markdown text.md >tmp.html
awk '/<div id="content">/ {
  print
  while ((getline line < "tmp.html") > 0) print line
    close("tmp.html")
  next
}
{ print }
' template.html >site/index.html
rm tmp.html
