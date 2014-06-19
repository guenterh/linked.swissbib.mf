// opens file 'fileName', interprets the content as marc21 and writes to stdout

default fileName = FLUX_DIR + "hbz_zvdd_collections_marc_example.xml";

fileName|
open-file|
decode-xml|
handle-marcxml |
encode-formeta(style="multiline")|
write("stdout");



