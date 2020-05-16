--# -path=.:alltenses:swedish:gf-wordnet

concrete CSETranslatorSwe of CSETranslator =
  CoursePlansSwe,
  TermsSwe,
  ParseSwe 

**
  open SyntaxSwe, ParadigmsSwe

  in {

lin
  CSECN cn = cn ;
  CSEN n = n ;
  CSEAP ap = ap ;
  CSEV v = v ;
  CSEV2 v = mkV2 v ;
  CSEVS v = mkVS v ;
  CSEVV v = mkVV v ;
  CSEAdv adv = adv ;
  
}