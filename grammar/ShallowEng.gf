--# -path=.:gf-wordnet

concrete ShallowEng of Shallow =

--  BackupsEng,
  WordNetEng,
  ChunkEng, -- [VPS,VPI],

 PhraseEng [
    Utt,S,QS,Adv,NP,Pol,Imp,
    UttS      , -- S  -> Utt ;         -- John walks
    UttQS     , -- QS -> Utt ;         -- does John walk
    UttNP     , -- NP -> Utt ;         -- John
    UttAdv ,    -- Adv -> Utt ;        -- in the house
    UttImpSg   -- Pol -> Imp -> Utt ;  -- (do not) walk ----s
    ],

ExtendEng [
    VPS,VPI,ListVPS,ListVPI,
    MkVPS,    --    : Temp -> Pol -> VP -> VPS ;  -- hasn't slept
    ExistS,
    ConjVPS,  --    : Conj -> [VPS] -> VPS ;      -- has walked and won't sleep
    PredVPS,  --    : NP   -> VPS -> S ;          -- she [has walked and won't sleep]

    MkVPI,     --  : VP -> VPI ;                   -- to sleep (TODO: Ant and Pol)
    ConjVPI,   -- : Conj -> [VPI] -> VPI ;         -- to sleep and to walk
    
    BaseVPS, ConsVPS,
    BaseVPI, ConsVPI,
---- TODO: Extend cannot form QS yet
    CompoundN 

    ],
    
 SentenceEng [
    S,QS,Cl,QCl,NP,Temp,Pol,VP,Imp,
    ImpVP ,      -- VP -> Imp ;                 -- walk / do not walk
    AdvS ,
    ExtAdvS
    ],
    
 VerbEng [
    VP,AdV,Adv,AP,Comp,V,
    UseV      , -- V   -> VP ;             -- sleep
    UseComp,
    CompAP,
    CompAdv,
    CompNP,
    AdvVP    , -- VP -> Adv -> VP ;       -- sleep here
    AdVVP
    ],
    
 NounEng [
    NP,CN,AP,Adv,Ord,RS,Pron,PN,Det,Numeral,N,
    DetCN     , -- Det -> CN -> NP ;       -- the man
    UsePN     , -- PN -> NP ;              -- John
    UsePron   , -- Pron -> NP ;            -- he
    MassNP    , -- CN -> NP ;              -- milk
    UseN      , -- N -> CN ;               -- house
    AdjCN,       -- AP -> CN -> CN ;        -- big house
    OrdNumeral,
    RelCN,
    AdvCN
    ],
    
 AdjectiveEng [
    AP,AdA,A,Ord,
    PositA    , -- A  -> AP ;              -- warm
    UseComparA,
    AdAP,
    AdjOrd
    ],
    
 AdverbEng [
    Prep,NP,Adv,Subj,S,
    PrepNP    , -- Prep -> NP -> Adv ;     -- in the house
    SubjS,
    PositAdvAdj -- A -> Adv  --- not sure if this should be used

    ],

IdiomEng [
    VP,
    ProgrVP
----    ExistNP
    ],

 ConjunctionEng,
 RelativeEng,
 QuestionEng,
 NumeralEng,

 TenseX - [CAdv,Pol]

** open SyntaxEng, (P=ParadigmsEng), (R=ResEng) in {

  lincat
    PP = SyntaxEng.Adv ;
    Punct = {s : Str} ; ---- SyntaxEng.Punct has no concrete words
    
  lin
    UseV2 v = mkVP <lin V v : V> ;
    UseV3 v = mkVP <lin V v : V> ;
    UseVA v = mkVP <lin V v : V> ;
    UseVS v = mkVP <lin V v : V> ;
    UseV2V v = mkVP <lin V v : V> ;

    
  lin
    AddNPtoVP vp np = mkVP vp (mkAdv (P.mkPrep []) np) ;
    AddPPtoVP vp pp = mkVP vp pp ;
    AddStoVP vp s = R.insertExtra (R.conjThat ++ s.s) vp ; 
    AddVPItoVP vp vpi = R.insertObj (\\a => vpi.s ! R.VVInf ! a) vp ; 
    AddVPItoAuxVP vp vpi = R.insertObj (\\a => vpi.s ! R.VVAux ! a) vp ;

    PassVP v = passiveVP (P.mkV2 v) ;
    
    PrepPP prep np = mkAdv prep np ;

    QuantSgCN quant cn = mkNP quant cn ;
    QuantPlCN quant cn = mkNP quant pluralNum cn ;
    CardCN num cn = mkNP num cn ;
    PossSgNP pron cn = mkNP (mkQuant pron) cn ;
    PossPlNP pron cn = mkNP (mkQuant pron) pluralNum cn ;

    PunctUttText utt punct = lin Text {s = utt.s ++ punct.s} ; 
    UttText utt = lin Text utt ;

    fullstop_Punct = {s = "."} ;
    comma_Punct = {s = ","} ;
    questionmark_Punct = {s = "?"} ;
    exclmark_Punct = {s = "!"} ;

    a_Det = SyntaxEng.a_Det ;
    aPl_Det = SyntaxEng.aPl_Det ;
    the_Det = SyntaxEng.the_Det ;
    thePl_Det = SyntaxEng.thePl_Det ;

    FlatPN mads dam = dam ** {s = \\c => mads.s ! R.Nom ++ dam.s ! c} ;

---- needed in lack of QuestVPS

  QuestNPVP np vp = mkQCl (mkCl np vp) ;
  QuestIAdvNPVP iadv np vp = mkQCl iadv (mkCl np vp) ;
  QuestQCl t p qcl = mkQS t p qcl ;

----
---    PunctBackup p = uttBackup p ;

  VPS_Chunk vps = mkUtt (ExtendEng.PredVPS emptNP vps) ;
  VPI_Chunk vpi = {s = vpi.s ! (R.VVInf | R.VVPresPart) ! R.AgP3Sg R.Masc} ; ----

oper
  emptNP = mkNP (P.mkPN []) ;

}