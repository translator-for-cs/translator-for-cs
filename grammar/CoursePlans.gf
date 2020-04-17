abstract CoursePlans = CSEGrammar ** {

cat
  Plan ;
  Paragraph ;
  Line ;
  [Line] ;

fun
  MkPlan : Line -> (
    prerequisites,
    goals,
    learning,
    knowledge,
    competence,
    judgement,
    content,
    organization : Paragraph
    ) -> Plan ;

  MkParagraph : [Line] -> Paragraph ;

  UttLine : Utt -> Line ;
  BulletLine : Utt -> Line ;
  LineFullstop : Utt -> Line ;
  LineColon : Utt -> Line ;

}