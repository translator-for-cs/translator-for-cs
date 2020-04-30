--# -path=.:alltenses:english

concrete CoursePlansEng of CoursePlans = CSEGrammarEng **

  open
    SyntaxEng,
    ParadigmsEng,
    MarkupEng
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
	     (titledParagraph "Prerequisites" prerequisites) (mkText
	     (titledParagraph "Goals" goals) (mkText
	     (titledParagraph "Learning outcomes" learning) (mkText
	     (titledParagraph2 "Knowledge and understanding" knowledge) (mkText
	     (titledParagraph2 "Competence and skills" competence) (mkText
	     (titledParagraph2 "Judgement and approach" judgement) (mkText
	     (titledParagraph "Course content" content) 
	     (titledParagraph2 "Organization" organization)
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