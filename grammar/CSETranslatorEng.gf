--# -path=.:alltenses:morphodict:gf-wordnet

concrete CSETranslatorEng of CSETranslator =
  CoursePlansEng,
  TermsEng,
  ParseEng 
**
  open SyntaxEng,ParadigmsEng
  in {

lin
  CSECN cn = cn ;
  CSEAP ap = ap ;
  CSEV v = v ;
  CSEV2 v = mkV2 v ;
  CSEVS v = mkVS v ;
  CSEVV v = mkVV v ;
  CSEAdv adv = adv ; 

}