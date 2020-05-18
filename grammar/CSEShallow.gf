abstract CSEShallow =
  CoursePlans,
  Terms,
  Shallow


** {

flags startcat = Text ;

-- to use CSE terms in generic syntax
fun
  CSECN  : CNCSE -> CN ;
  CSEAP  : APCSE -> AP ;
  CSEV   : VCSE -> V ;
--  CSEV2  : VCSE -> V2 ;
--  CSEVS  : VCSE -> VS ;
--  CSEVV  : VCSE -> VV ;
  CSEAdv : AdvCSE -> Adv ;

-- todo: recognize generic words as terms for the sake of annotation?
  

}