abstract Terms = Cat ** {

cat
  Term ;

fun
  CNSgTerm : CN -> Term ;
  CNPlTerm : CN -> Term ;
  APTerm : AP -> Term ;

-- example lexicon
fun
  --prerequisite_CN : CN ;
  --goal_CN : CN ;
  --computer_programming_CN : CN ;
  --basic_skill_CN : CN ;
  --relevant_AP : AP ;
  --graphical_AP : AP ;
  --computer_science_CN : CN ;
  --web_page_CN : CN ;
  --web_N: N;
  --page_N: N;
  --speech_recognition_CN: CN;
  --memory_address_CN : CN;
  --computer_engineering: CN;
  --wireless_AP: AP;
  --course_N: N;
  boolean_AP: AP;
  course_N: N;
  prerequisite_N: N;
  computer_N: N;
  organization_N: N;
  design_N: N;
  foundation_N: N;
  basic_AP: AP;
  architecture_N: N;
  principle_N: N;
  memory_N: N;
  aim_N: N;
  component_N: N;
  technical_AP: AP;
  system_N: N;
  functional_AP: AP;
  --execute_V2: V2;
  --fast_Adv: Adv;
  fast_AP: AP;
  power_N: N;
  efficient_AP: AP;
  performance_N: N;
  progress_N: N;
  engineering_N: N;
  --convert_V2: V2;
  raw_N: N;
  speed_N: N;
  transistor_N: N;
  application_N: N;
  software_N: N;
  structure_N: N;
  parallelism_N: N;
  high_AP: AP;
  outcome_N: N;
  completion_N: N;
  master_N: N;
  concept_N: N;
  modern_AP: AP;
  order_N: N;
  research_N: N;
  advance_N: N;
  field_N: N;
  microprocessor_N: N;
  --advance_V2: V2;
  technique_N: N;
  instruction_N: N;
  parallel_N: N;
  parallel_AP: AP;
  --establish_V2: V2;
  hierarchy_N: N;
  --assess_V2: V2;
  proficiency_N: N;
  quantitative_AP: AP;
  --establish_V2: V2;
  impact_N: N;
  architectural_AP: AP;
  state_N: N;
  simulation_N: N;
  tool_N: N;
  content_N: N;
  essential_N: N;
  --achieve_V2: V2;
  --base_V2: V2;
  analysis_N: N;
  method_N: N;
  assessment_N: N;
  consumption_N: N;
  part_N: N;
  --affect_V2: V2;
  evolution_N: N;
  technology_N: N;
  --include_VV: VV;
  law_N: N;
  execution_N: N;
  time_N: N;
  throughput_N: N;
  fundamental_N: N;
  locality_N: N;
  reference_N: N;
  --evaluate_V2: V2;
  level_N: N;
  --define_V2: V2;
  limit_N: N;
  category_N: N;
  dynamic_AP: AP;
  dynamic_N: N;
  static_AP: AP;
  algorithm_N: N;
  branch_N: N;
  prediction_N: N;
  speculation_N: N;
  loop_N: N;
  different_AP: AP;
  source_N: N;
  bottleneck_N: N;
  --reduce_V2: V2;
  miss_N: N;
  penalty_N: N;
  hit_N: N;
  example_N: N;
  free_N: N;
  virtual_AP: AP;
  --address_V2: V2;
  address_N: N;
  knowledge_N: N;
  linear_AP: AP;
  algebra_N: N;
  probability_N: N;
  theory_N: N;
  --program_V2V: V2V;
  --desirable_AP: AP;
  image_N: N;
  overview_N: N;
  practical_AP: AP;
  application_N: N;
  measurement_N: N;
  --develop_V2: V2;
  --solve_V2: V2;
  problem_N: N;
  --derive_V2: V2;
  science_N: N;
  geometry_N: N;
  optimization_N: N;
  statistics_N: N;
  --grade_V2: V2;
  camera_N: N;
  modelling_N: N;
  stereo_N: N;
  structure_N: N;
  mathematical_AP: AP;
  central_N: N;
  algorithm_N: N;
  square_N: N;
  --apply_VV: VV;
  terminology_N: N;
  --structure_V2: V2;
  logic_N: N;
  solution_N: N;
  geometric_AP: AP;
  camera_N: N;
  class_N: N;
  exercise_N: N;
  session_N: N;
  pair_N: N;
  project_N: N;
  submission_N: N;
  report_N: N;
  result_N: N;
  lecture_N: N;
  article_N: N;
  university_N: N;
  element_N: N;
  address_N: N;
  programming_N: N;
  model_N: N;
  processor_N: N;
  core_N: N;
  chip_N: N;
  --share_V2: V2;
  thread_N: N;
  resource_N: N;
  project_N: N;
  --document_V2: V2;
  scientific_AP: AP;
  literature_N: N;
  session_N: N;
  sequence_N: N;
  lab_N: N;
  methodology_N: N;
  --systematically_Adv: Adv;
  assembly_N: N;
  language_N: N;
  sustainability_N: N;
  --compute_V2: V2;
  level_N: N;
  sustainable_AP: AP;
  electrical_AP: AP;
  mechanism_N: N;
  circuit_N: N;
  storage_N: N;
  energy_N: N;
  --operate_V2: V2;
  device_N: N;
  component_N: N;
  configuration_N: N;
  class_N: N;
  --evaluate_V2: V2;
  --interpret_V2: V2;
  requirement_N: N;
  electronic_AP: AP;
  data_N: N;
  instance_N: N;
  --measure_V2: V2;
  --estimate_VS: VS;
  --save_V2: V2;
  lecture_N: N;
  result_N: N;
  future_AP: AP;
  generation_N: N;
  optimization_N: N;
  theory_N: N;
  practice_N: N;
  discrete_AP: AP;
  linear_AP: AP;
  science_N: N;
  complexity_N: N;
  kind_N: N;
  context_N: N;
  transportation_N: N;
  telecommunication_N: N;
  industrial_AP: AP;
  linear_AP: AP;
  algebra_N: N;
  probability_N: N;
  theory_N: N;
  --program_V2V: V2V;
  desirable_AP: AP;
  image_N: N;
  overview_N: N;
  practical_AP: AP;
  application_N: N;
  measurement_N: N;
  --develop_V2: V2;
  --solve_V2: V2;
  problem_N: N;
  --derive_V2: V2;
  science_N: N;
  geometry_N: N;
  optimization_N: N;
  statistics_N: N;
  --grade_V2: V2;
  camera_N: N;
  modelling_N: N;
  stereo_N: N;
  structure_N: N;
  mathematical_AP: AP;
  central_N: N;
  algorithm_N: N;
  square_N: N;
  --apply_VV: VV;
  terminology_N: N;
  --structure_V2: V2;
  logic_N: N;
  solution_N: N;
  geometric_AP: AP;
  camera_N: N;
  class_N: N;
  exercise_N: N;
  session_N: N;
  pair_N: N;
  project_N: N;
  submission_N: N;
  report_N: N;
  result_N: N;
  lecture_N: N;
  article_N: N;
  university_N: N;
  element_N: N;
  physics_N: N;
  numerical_AP: AP;
  --apply_VV: VV;
  --develop_V2: V2;
  modeling_N: N;
  --integrate_V2: V2;
  --structure_V2: V2;
  equation_N: N;
  molecular_AP: AP;
  dynamic_N: N;
  integration_N: N;
  --apply_VV: VV;
  planning_N: N;
  hardware_N: N;
  property_N: N;
  algorithmic_AP: AP;
  optimal_AP: AP;
  domain_N: N;
  --formulate_V2: V2;
  --model_V2: V2;
  manageable_AP: AP;
  --relate_V2: V2;
  generic_AP: AP;
  additional_AP: AP;
  heuristic_N: N;
  dual_AP: AP;
  --obtain_V2: V2;
  --program_V2V: V2V;
  integer_N: N;
  special_AP: AP;
  graph_N: N;
  --separate_V2: V2;
  list_N: N;
  scale_N: N;
  network_N: N;
  communication_N: N;
  protocol_N: N;
  stack_N: N;
  internet_N: N;
  --distribute_V2: V2;
  service_N: N;
  --summarize_V2: V2;
  --introduce_V2: V2;
  development_N: N;
  setting_N: N;
  link_N: N;
  --limit_V2V: V2V;
  bandwidth_N: N;
  scalability_N: N;
  imperative_AP: AP;
  vector_N: N;
  dimension_N: N;
  graphic_N: N;
  --implement_V2: V2;
  process_N: N;
  functionality_N: N;
  strict_AP: AP;
  matrix_N: N;
  bachelor_N: N;
  dimensional_AP: AP;
  hardware_N: N;
  image_N: N;
  model_N: N;
  rendering_N: N;
  shadow_N: N;
  mathematics_N: N;
  --design_V2V: V2V;
  function_N: N;
  mechanical_AP: AP;
  safety_N: N;
  multimedia_N: N;
  --execute_V2: V2;
  abstraction_N: N;
  implement_N: N;
  synchronization_N: N;
  --implement_V2: V2;
  language_N: N;
  kernel_N: N;
  --distribute_V2: V2;
  protocol_N: N;
  node_N: N;
  topology_N: N;
  mathematics_N: N;
  course_N: N;
  machine_N: N;
  --orient_V2: V2;
  --embed_V2: V2;
  --perform_V2: V2;
  function_N: N;
  mechanical_AP: AP;
  safety_N: N;
  behavior_N: N;
  example_N: N;
  game_N: N;
  multimedia_N: N;
  interface_N: N;
  --run_VS: VS;
  --verify_V2: V2;
  set_N: N;
  good_AP: AP;
  task_N: N;
  --implement_V2: V2;
  --decompose_V2: V2;
  library_N: N;
  synchronization_N: N;
  language_N: N;
  general_AP: AP;
  --implement_V2: V2;
  kernel_N: N;
  --distribute_V2: V2;
  available_AP: AP;
  capacity_N: N;
  cyclic_AP: AP;
  priority_N: N;
  protocol_N: N;
  node_N: N;
  topology_N: N;
  access_N: N;
  response_N: N;
  conjunction_N: N;
  account_N: N;
  maximum_N: N;
  theory_N: N;
  --low_Adv: Adv;
  delay_N: N;
  --execute_V2: V2;
  correctness_N: N;
  abstraction_N: N;
  philosophy_N: N;
  complex_AP: AP;
  --maintain_VS: VS;
  environment_N: N;
  semaphore_N: N;
  syntax_N: N;
  tree_N: N;
  semantics_N: N;
  compiler_N: N;
  induction_N: N;
  proof_N: N;
  --read_VS: VS;
  finite_AP: AP;
  formal_AP: AP;
  library_N: N;
  type_N: N;
  algebraic_AP: AP;
  monad_N: N;
  transformer_N: N;
  specification_N: N;
  property_N: N;
  construction_N: N;
  --construct_V2: V2;
  quick_AP: AP;
  exception_N: N;
  cryptography_N: N;
  security_N: N;
  implementation_N: N;
  vulnerability_N: N;
  permutation_N: N;
  artificial_intelligence_CN: CN;
  cipher_N: N;
  cryptanalysis_N: N;
  symmetric_AP: AP;
  programming_N: N;
  function_N: N;
  model_N: N;
  software_development_CN: CN;
  algorithm_N: N;
  application_software_CN: CN;
  data_structure_CN: CN;
  artificial_AP: AP;
  intelligence_N: N;
  automata_theory_CN: CN;
  binary_AP: AP;
  binary_search_algorithm_CN: CN;
  bit_N: N;
  bit_rate_CN: CN;
  byte_N: N;
  class_N: N;
  computer_science_CN: CN;
  cloud_computing_CN: CN;
  coding_theory_CN: CN;
  cognitive_science_CN: CN;
  compiler_N: N;
  computability_theory_CN: CN;
  computational_biology_CN: CN;
  computational_chemistry_CN: CN;
  computational_physics_CN: CN;
  computer_architecture_CN: CN;
  computer_data_storage_CN: CN;
  computer_graphics_CN: CN;
  computer_network_CN: CN;
  computer_science_CN: CN;
  computer_scientist_CN: CN;
  computer_security_CN: CN;
  concurrency_N: N;
  control_flow_CN: CN;
  cryptography_N: N;
  cyberspace_N: N;
  data_center_CN: CN;
  database_N: N;
  data_mining_CN: CN;
  data_type_CN: CN;
  digital_AP: AP;
  signal_processing_CN: CN;
  domain_name_system_CN: CN;
  download_N: N;
  encryption_N: N;
  event_N: N;
  --executable_AP: AP;
  file_N: N;
  exception_handling_CN: CN;
  feasibility_study_CN: CN;
  filename_extension_CN: CN;
  formal_AP: AP;
  method_N: N;
  verification_N: N;
  functional_AP: AP;
  game_theory_CN: CN;
  gigabyte_N: N;
  graph_theory_CN: CN;
  hash_function_CN: CN;
  hash_table_CN: CN;
  heapsort_N: N;
  --human-computer_interation_CN: CN;
  integrated_development_environment_CN: CN;
  imperative_programming_CN: CN;
  inheritance_N: N;
  insertion_sort_CN: CN;
  ascii_N: N;
  array_N: N;
  binary_tree_CN: CN;
  bioinformatics_N: N;
  boolean_data_type_CN: CN;
  crypto_N: N;
  computer_vision_CN: CN;
  concatenation_N: N;
  intelligent_AP: AP;
  agent_N: N;
  interface_N: N;
  invariant_AP: AP;
  iteration_N: N;
  Java_N: N;
  programming_language_CN: CN;
  kernel_N: N;
  linear_search_CN: CN;
  linked_list_CN: CN;
  logic_programming_CN: CN;
  machine_learning_CN: CN;
  matrix_N: N;
  modem_N: N;
  number_theory_CN: CN;
  numerical_AP: AP;
  analysis_N: N;
  numerical_analysis_CN: CN;
  operating_system_CN: CN;
  optical_fiber_CN: CN;
  pair_programming_CN: CN;
  peripheral_N: N;
  priority_queue_CN: CN;
  quantum_computer_CN: CN;
  queue_N: N;
  recursion_N: N;
  relational_database_CN: CN;
  requirements_analysis_CN: CN;
  router_N: N;
  routing_table_CN: CN;
  selection_sort_CN: CN;
  sequence_N: N;
  software_N: N;
  software_deployment_CN: CN;
  software_development_CN: CN;
  sorting_algorithm_CN: CN;
  source_code_CN: CN;
  string_N: N;
  user_agent_CN: CN;
  user_interface_CN: CN;
  waterfall_model_CN: CN;
  --Wi-Fi_N: N;
  XHTML_N: N;
  mathematical_model_CN: CN;
  generalization_N: N;
  concept_N: N;
  blueprint_N: N;
  customer_N: N;
  end_user_CN: CN;
  calculation_N: N;
  productivity_N: N;
  dynamic_programming_CN: CN;
  computer_interaction_CN: CN;
  development_environment_CN: CN;
  list_N: N;
  mathematical_AP: AP;
  parallel_computing_CN: CN;
  computer_program_CN: CN;
  programmer_N: N;
  word_processor_CN: CN;
  spreadsheet_N: N;
  accounting_software_CN: CN;
  web_browser_CN: CN;
  media_player_CN: CN;
  flight_simulator_CN: CN;
  use_case_CN: CN;
  class_diagram_CN: CN;
  theoretical_AP: AP;
  discreet_AP: AP;
  mathematics_N: N;
  discrete_mathematics_CN: CN;
  philosophy_N: N;
  probability_distribution_CN: CN;
  time_complexity_CN: CN;
  number_N: N;
  set_theory_CN: CN;
  empty_set_CN: CN;
  software_tool_CN: CN;
  biology_N: N;
  statistics_N: N;
  information_N: N;
  communication_N: N;
  telecommunications_N: N;
  access_control_CN: CN;
  domain_name_CN: CN;
  --ip-adress_N: N;
  whitelist_N: N;
  graphics_card_CN: CN;
  truth_value_CN: CN;
  variable_N: N;
  conjunction_N: N;
  disjunction_N: N;
  negation_N: N;
  hard_drive_CN: CN;
  instruction_N: N;
  arithmetic_N: N;
  control_unit_CN: CN;
  hardware_N: N;
  server_N: N;
  code_N: N;
  information_theory_CN: CN;
  electronics_N: N;
  linguistics_N: N;
  science_N: N;
  memory_N: N;
  table_N: N;
  file_format_CN: CN;
  computer_engineering_CN: CN;
  video_N: N;
  engineering_N: N;
  technology_N: N;
  power_supply_CN: CN;
  information_system_CN: CN;
  digital_signal_processor_CN: CN;
  simulation_N: N;
  network_N: N;
  web_server_CN: CN;
  programming_paradigm_CN: CN;
  sensor_N: N;
  thread_N: N;
  graphic_AP: AP;
  web_application_CN: CN;
  device_driver_CN: CN;
  instruction_set_architecture_CN: CN;
  parser_N: N;
  execution_N: N;
  interruption_N: N;
  --inter-process_communication_CN: CN;
  operator_N: N;
  mathematical_AP: AP;
  expression_N: N;
  environment_N: N;
  value_N: N;
  file_name_CN: CN;
  proof_N: N;
  --command-line_interpreter_CN: CN;
  unique_key_CN: CN;
  integer_N: N;
  virtual_AP: AP;
  debugger_N: N;
  property_N: N;
  touchscreen_N: N;
  documentation_N: N;
  scripting_language_CN: CN;
  bug_N: N;
  formal_AP: AP;
  LED_N: N;
  speech_recognition_CN: CN;
  memory_address_CN: CN;
  computer_engineering_CN: CN;
  operation_N: N;
  unit_N: N;
  symbol_N: N;
  reference_N: N;
  personal_computer_CN: CN;
  bot_N: N;
  wireless_AP: AP;
  web_page_CN: CN;
  user_N: N;
  scripting_N: N;
  routing_N: N;
  requirements_N: N;
  computing_N: N;
  optical_N: N;
  fiber_N: N;
  operating_A: A;
  linked_AP: A;
  integrated_A: A;
  executable_A: A;
  center_N: N;
  computability_N: N;
  coding_N: N;
  automata_N: N;
}
