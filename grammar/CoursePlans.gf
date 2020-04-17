abstract CoursePlans = CSEGrammar ** {

cat
  Plan ;
  Paragraph ;
  Line ;
  [Line] ;

fun
  MkPlan :
    Line ->
    Paragraph ->
    Paragraph ->
    Paragraph ->
    Paragraph ->
    Paragraph ->
    Paragraph ->
    Paragraph ->
    Paragraph ->
      Plan ;

  MkParagraph : [Line] -> Paragraph ;

  UttLine : Utt -> Line ;
  BulletLine : Utt -> Line ;
  LineFullstop : Utt -> Line ;
  LineColon : Utt -> Line ;

}