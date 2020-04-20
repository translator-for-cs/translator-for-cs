--# -path=.:alltenses:swedish

resource MakeTermSwe =
  NewDictSwe,
  ParadigmsSwe
  ** open SyntaxSwe in {

oper
  makeCN = overload {
    makeCN : N -> CN                             -- dator
      = \n -> mkCN n ;
    makeCN : A -> N -> CN                        -- funktionell programmering
      = \a,n -> mkCN a n ;
    makeCN : A -> A -> N -> CN                   -- virtuell privat nätverk
      = \a,b,n -> mkCN a (mkCN b n) ;            
    makeCN : N -> Prep -> N -> CN                -- sanning med modifikation
      = \n,p,m -> mkCN n (SyntaxSwe.mkAdv p (mkNP n)) ;
    makeCN : N -> N -> CN                        -- data + vetenskap
      = \m,n -> mkCN (mkN m n) ;
    makeCN : Str -> N -> CN                      -- webb + application
      = \s,n -> mkCN (mkN s n) ;
    } ;

  makeV2 = overload {
    makeV2 : V -> V2
      = \v -> mkV2 v ; 
  } ; 

}