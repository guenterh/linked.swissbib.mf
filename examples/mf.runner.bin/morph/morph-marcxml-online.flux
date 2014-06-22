default idn = "1021191485";

//idn|
//template("https://portal.dnb.de/opac.htm?method=requestMarcXml&idn=${o}")|
//open-http|
//decode-xml|
default file = FLUX_DIR + "Test_DNB_Mono.xml";

file|
open-file|
decode-xml|
handle-marcxml|
morph(FLUX_DIR + "morph-marc21.xml")|
stream-to-xml(roottag="rdf:RDF", recordtag="hallo")|
write("stdout");

//stream-tee | {
//        encode-stats(filename=FLUX_DIR + "tmp.stats.csv")
//}{
//    encode-formeta(style="multiline")|
//    write("stdout");}
//};

