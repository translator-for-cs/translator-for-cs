import pgf

pgfm = "CSETranslator"
pgff = pgfm + ".pgf"
ceng = pgfm + "Eng"
cswe = pgfm + "Swe"

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
  gr = pgf.readPGF(pgff)
  eng = gr.languages[cswe]
  swe = gr.languages[ceng]
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
              print("# no parse", t)

main()


