#!/bin/bash
set -e
markdown text.md >tmp.html
awk '/<main class="container">/ {
  print
  while ((getline line < "tmp.html") > 0) print line
    close("tmp.html")
  next
}
{ print }
' template.html >index.html
rm tmp.html
