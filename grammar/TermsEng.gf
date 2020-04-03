--# -path=.:alltenses:english

concrete TermsEng of Terms = CatEng **
  open
    MakeTermEng, ParadigmsEng, SyntaxEng 

in {

lincat
  Term = Utt ;

lin
  CNSgTerm cn = mkUtt cn ;
  CNPlTerm cn = mkUtt (mkNP aPl_Det cn) ;
  APTerm ap = mkUtt ap ;

-- example lexicon
lin
  prerequisite_CN = makeCN prerequisite_N ;
  goal_CN = makeCN goal_N ;
  computer_programming_CN = makeCN computer_N programming_N ;
  basic_skill_CN = makeCN basic_A skill_N ;
  relevant_AP = mkAP relevant_A ;
  graphical_AP = mkAP graphical_A ;
  computer_science_CN = makeCN computer_N science_N ;
  web_N = mkN "web";
  page_N = mkN "page";
  web_page_CN = makeCN web_N page_N;
}