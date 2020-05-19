import pgf
import sys

# comment out one of these:
#more precise, slower
#pgfm = "CSETranslator"

#less precise, faster
#pgfm = "CSEShallow"

#pgff = pgfm + ".pgf"
#ceng = pgfm + "Eng"
#cswe = pgfm + "Swe"

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

def main():
  if len(sys.argv) != 4:
    print("  usage: python3 translator.py <pgf-file-prefix> <from-lang-suffix> <to-lang-suffix>")
    print("  e.g. python3 translator.py CSETranslator Eng Swe")
    print("  The program reads and writes stdio line by line, e.g")
    print("    cat ../course_plans/TIN214Eng.txt | python3 translator.py CSEShallow Eng Swe")
    return
  pgfm = sys.argv[1]
  pgff = pgfm + ".pgf"
  ceng = pgfm + sys.argv[2]
  cswe = pgfm + sys.argv[3]
  gr = pgf.readPGF(pgff)
  eng = gr.languages[ceng]
  swe = gr.languages[cswe]
  print("#","translating with",pgff,"from",ceng,"to",cswe)
  while True:
    try:
        line = input("")
    except EOFError:
        break
    t = trim(line)
    if not(t):
        pass
    else:
          try:
              px = eng.parse(t)
              p,e = px.__next__()
              print(swe.linearize(e))
          except pgf.ParseError:
              print("# NO PARSE", t)

main()


