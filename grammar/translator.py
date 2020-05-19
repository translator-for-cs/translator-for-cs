import pgf
import sys

def trim(s0):
    s = s0.strip()
    if not(s):
        return s
    s = (s[0].lower() + s[1:])
    r = ""
    for c in s:
        if c in [',','.',':','(',')']:
            r = r + ' ' + c + ' '
        else:
            r = r + c
    return r

def markMissing(eng,s):
  ws = s.split()
  ms = []
  ts = []
  for w in ws:
    if not eng.lookupMorpho(w) and not recognizeSymb(w) and not w in ["a","an"]:  # strange behaviour of eng
      ms = ms + [w]
      ts = ts + ["[["+w+"]]"]
    else:
      ts = ts + [w]
  return (ms,ts)

def recognizeSymb(w):
  return (w[0:2] == "[[")

def main():
  if len(sys.argv) < 4:
    print("  usage: python3 translator.py <pgf-file-prefix> <from-lang-suffix> <to-lang-suffix> -debug?")
    print("  e.g. python3 translator.py CSETranslator Eng Swe")
    print("  The program reads and writes stdio line by line, e.g")
    print("    cat ../course_plans/TIN214Eng.txt | python3 translator.py CSEShallow Eng Swe")
    return
  pgfm = sys.argv[1]
  pgff = pgfm + ".pgf"
  ceng = pgfm + sys.argv[2]
  cswe = pgfm + sys.argv[3]
  debug = len(sys.argv) == 5 and sys.argv[4] == "-debug"
  gr = pgf.readPGF(pgff)
  eng = gr.languages[ceng]
  swe = gr.languages[cswe]
  print("#","translating with",pgff,"from",ceng,"to",cswe)
  while True:
    try:
        line = input("")
    except EOFError:
        break
    tr = trim(line)
    (ms,ts) = markMissing(eng,tr)
    t = ' '.join(ts)
    if not(t):
        pass
    else:
          try:
              px = eng.parse(t, heuristics=0.2, callbacks=[("Symb", lambda w: recognizeSymb(w))])
              p,e = px.__next__()
              if debug: print("# TREE", e)
              print(swe.linearize(e))
          except pgf.ParseError:
              print("# NO PARSE", t)
              if debug: print("# MISSING", ms)

main()


