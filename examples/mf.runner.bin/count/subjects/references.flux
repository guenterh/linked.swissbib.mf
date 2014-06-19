
default counts="myflux/counts.dat";
default catalogue = FLUX_DIR + "10.pica";
default subjectsOut = FLUX_DIR + "subjects.dat";

//count references
"counting references in " + catalogue | write("stdout");

catalogue|
open-file|
as-lines|
catch-object-exception|
decode-pica|
morph(FLUX_DIR + "references.xml")|
stream-to-triples|
count-triples(countBy="object")|

write(subjectsOut);


