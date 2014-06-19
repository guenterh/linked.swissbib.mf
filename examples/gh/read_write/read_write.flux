default in = FLUX_DIR + "console-output-a.txt";
default out = "stdout";

in
|open-file
|as-lines
|write(out);

