--# -path=.:alltenses:swedish

concrete CoursePlansSwe of CoursePlans = CSEGrammarSwe **

  open
    SyntaxSwe,
    ParadigmsSwe,
    MarkupSwe
  in {

lincat
  Plan = Text ;
  Paragraph = Text ;
  Line = Text ;
  [Line] = Text ;

lin
  MkPlan title
    prerequisites
    goals
    learning
    knowledge
    competence
    judgement
    content
    organization =
      MarkupText (mkMark "html") (
        MarkupText (mkMark "body") (
          (mkText
	     (MarkupUtt h1_Mark title) (mkText
	     (titledParagraph "Förkunskaper" prerequisites) (mkText
	     (titledParagraph "Mål" goals) (mkText
	     (titledParagraph "Lärandemål" learning) (mkText
	     (titledParagraph2 "Kunskap och förståelse" knowledge) (mkText
	     (titledParagraph2 "Kompetens och färdigheter" competence) (mkText
	     (titledParagraph2 "Bedömning och tillvägagångssätt" judgement) (mkText
	     (titledParagraph "Kursinnehåll" content) 
	     (titledParagraph2 "Organisation" organization)
       )))))))))) ;

  MkParagraph ls = ls ;

  UttLine u = mkText u ;
----  BulletLine u = mkText ;
----  LineFullstop : Utt -> Line ;
----  LineColon : Utt -> Line ;


  BaseLine = emptyText ;
  ConsLine l ls = mkText l ls ;


oper
  titledParagraph : Str -> Paragraph -> Text = \title,para ->
       mkText (MarkupText h1_Mark (lin Text {s = title}))
              (MarkupText p_Mark para) ;
  titledParagraph2 : Str -> Paragraph -> Text = \title,para ->
       mkText (MarkupText h2_Mark (lin Text {s = title}))
              (MarkupText p_Mark para) ;

}