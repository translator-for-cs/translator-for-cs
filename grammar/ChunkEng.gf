concrete ChunkEng of Chunk = CatEng, SymbolEng [Symb] ** 
  ChunkFunctor - [Det_Chunk]
    with (Syntax = SyntaxEng), (Extend = ExtendEng) **
  open 
    SyntaxEng, (E = ExtendEng), Prelude, 
    (R = ResEng), (P = ParadigmsEng) in {

lin
  Det_Chunk det =  lin Utt {
    s = case det.n of {
       R.Sg => det.s ;
       R.Pl => det.sp ! R.Neutr ! False ! R.NCase R.Nom
       }
    } ;

  NP_Acc_Chunk np = ss (np.s ! R.NPAcc) ;
  NP_Gen_Chunk np = ss (np.s ! R.NCase R.Gen) | ss (np.s ! R.NPNomPoss) ;


lin
  copula_inf_Chunk = ss "to be" | ss "be" ;
  refl_SgP1_Chunk = ss "myself" ;
  refl_SgP2_Chunk = ss "yourself" ;
  refl_SgP3_Chunk = ss "himself" | ss "herself" | ss "itself" ;
  refl_PlP1_Chunk = ss "ourselves" ;
  refl_PlP2_Chunk = ss "yourselves" ;
  refl_PlP3_Chunk = ss "themselves" ;
  neg_Chunk = ss "not" | ss "doesn't" | ss "don't" ;
  copula_Chunk = ss "is" | ss "are" | ss "am" ; ---- | ss (Predef.BIND ++ "'s") | ss (Predef.BIND ++ "'re") ;
  copula_neg_Chunk = ss "isn't" | ss "aren't" ;
  past_copula_Chunk = ss "was" | ss "were" ;
  past_copula_neg_Chunk = ss "wasn't" | ss "weren't" ;
  future_Chunk = ss "will" ;
  future_neg_Chunk = ss "won't" ;
  cond_Chunk = ss "would" ;
  cond_neg_Chunk = ss "wouldn't" ;
  perfect_Chunk = ss "has" | ss "have" ;
  perfect_neg_Chunk = ss "hasn't" | ss "haven't" ;
  past_perfect_Chunk = ss "had" ;
  past_perfect_neg_Chunk = ss "hadn't" ;
  

}