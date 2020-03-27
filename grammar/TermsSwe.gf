--# -path=.:alltenses:swedish

concrete TermsSwe of Terms = CatSwe **
  open
    MakeTermSwe, ParadigmsSwe, SyntaxSwe, (R=CommonScand)

in {

lincat
  Term = Utt ;

lin
  CNSgTerm cn = mkUtt cn | mkUtt (mkNP the_Det cn) ;
  CNPlTerm cn = mkUtt (mkNP aPl_Det cn) | mkUtt (mkNP thePl_Det cn) ;
  APTerm ap =
      mkUtt ap
    | lin Utt {s = ap.s ! R.Strong (R.GSg R.Neutr)}
    | lin Utt {s = ap.s ! R.Strong R.GPl}
    ;

-- example lexicon
lin
  prerequisite_CN = makeCN "för" kunskap_1_N ;
  goal_CN = makeCN mål_1_N ;
  computer_programming_CN = makeCN "data" programmering_1_N ;
  basic_skill_CN = makeCN grundläggande_1_A färdighet_1_N ;
  relevant_AP = mkAP relevant_1_A ;
  graphical_AP = mkAP grafisk_1_A ;
  computer_science_CN = makeCN data_1_N vetenskap_1_N ;

}