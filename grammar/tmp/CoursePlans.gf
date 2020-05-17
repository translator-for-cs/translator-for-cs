abstract CoursePlans =

  CSEGrammar, -- verified CSE terms
  WordNet - [   -- back-up dictionary
  accelerate_V2, achieve_V2, acoustic_N, acronym_N, act_VA, ad_N, algebra_N, algorithm_N, although_Subj, analog_N, and_Conj, ant_N, arithmetic_N, availability_N, bandwidth_N, baud_N, because_Subj, blacklist_N, bot_N, broker_N, bulletin_N, byte_N, cache_V2, central_N, classroom_N, clock_V2, commercial_N, common_N, complexity_N, compute_V2, concept_N, consumer_N, container_N, copyright_N, countermeasure_N, creativity_N, crosstalk_N, cybernetics_N, data_N, database_N, debugger_N, diagram_N, dictionary_N, download_N, during_Prep, dynamic_N, dynamics_N, electronics_N, employee_N, encode_V2, encrypt_V2, encryption_N, enhancement_N, entity_N, equipment_N, essential_N, ethernet_N, every_Det, expert_N, express_Adv, fault_V2, fedora_N, feed_N, firmware_N, for_Prep, free_N, functionality_N, gateway_N, geography_N, geometry_N, gigabit_N, grammar_N, graphic_N, handshake_N, hard_Adv, he_Pron, heuristic_N, hint_VS, histogram_N, human_N, hyperlink_N, hypertext_N, i_Pron, identifier_N, if_Subj, imagery_N, implement_N, inference_N, inspection_N, institute_N, integer_N, inter_V2, internet_N, kilobit_N, kilohertz_N, knowledge_N, lab_N, laptop_N, laser_N, learn_VV, locality_N, low_Adv, mathematics_N, measurement_N, media_N, megabit_N, megahertz_N, microprocessor_N, modem_N, multimedia_N, multiple_N, or_Conj, overview_N, parallelism_N, parser_N, password_N, peer_V, peripheral_N, power_V2, precision_N, prerequisite_N, prevention_N, processing_N, program_N, query_N, raw_N, reasoning_N, recursion_N, report_VS, robot_N, robotics_N, runtime_N, scalability_N, semaphore_N, sensor_N, she_Pron, silicon_N, software_N, space_V2, spreadsheet_N, statistics_N, structure_V2, subset_N, subsystem_N, sustainability_N, telephony_N, terminology_N, they_Pron, throughput_N, toolbox_N, transaction_N, transformer_N, transistor_N, true_N, uniform_N, very_AdA, want_VV, warehouse_N, we_Pron, webcam_N, when_IAdv, when_Subj, where_IAdv, whoSg_IP, why_IAdv, with_Prep, youPl_Pron, youPol_Pron, youSg_Pron
  ]
** {

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