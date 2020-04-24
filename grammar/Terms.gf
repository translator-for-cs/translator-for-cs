abstract Terms = Cat ** {

cat
  Term ;

fun
  CNSgTerm : CN -> Term ;
  CNPlTerm : CN -> Term ;
  APTerm : AP -> Term ;

-- example lexicon
fun
  prerequisite_CN : CN ;
  goal_CN : CN ;
  computer_programming_CN : CN ;
  basic_skill_CN : CN ;
  relevant_AP : AP ;
  graphical_AP : AP ;
  computer_science_CN : CN ;
  web_page_CN : CN ;
  web_N: N;
  page_N: N;
  speech_recognition_CN: CN;
  memory_address_CN : CN;
  computer_engineering: CN;
  wireless_AP: AP;
}
