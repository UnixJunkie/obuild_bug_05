
let () =
  (* obuild cannot use the camlzip library :( *)
  let out = Gzip.open_out "toto.gz" in
  let s = "toto titi tata\n" in
  Gzip.output_substring out s 0 (String.length s);
  Gzip.close_out out
