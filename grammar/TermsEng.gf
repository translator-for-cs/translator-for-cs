--# -path=.:alltenses:english

concrete TermsEng of Terms = CatEng **
  open
    MakeTermEng, ParadigmsEng, SyntaxEng

in {

lincat
  Term = Utt ;

lin
  CNSgTerm cn = mkUtt cn ;
  CNPlTerm cn = mkUtt (mkNP aPl_Det cn) ;
  APTerm ap = mkUtt ap ;

-- example lexicon
lin
  course_N = mkN "course" ;
  prerequisite_N = mkN "prerequisite" ;
  computer_N = mkN "computer" ;
  organization_N = mkN "organization" ;
  design_N = mkN "design" ;
  foundation_N = mkN "foundation" ;
  basic_AP = mkAP basic_A ;
  architecture_N = mkN "architecture" ;
  principle_N = mkN "principle" ;
  memory_N = mkN "memory" ;
  aim_N = mkN "aim" ;
  component_N = mkN "component" ;
  technical_AP = mkAP technical_A ;
  system_N = mkN "system" ;
  functional_AP = mkAP functional_A ;
  fast_Adv = mkAdv (mkA "fast") ;
  fast_AP = mkAP fast_A ;
  power_N = mkN "power" ;
  efficient_AP = mkAP efficient_A ;
  performance_N = mkN "performance" ;
  progress_N = mkN "progress" ;
  engineering_N = mkN "engineering" ;
  convert_V2 = mkV2 (mkV "convert") ;
  raw_N = mkN "raw" ;
  speed_N = mkN "speed" ;
  transistor_N = mkN "transistor" ;
  application_N = mkN "application" ;
  software_N = mkN "software" ;
  structure_N = mkN "structure" ;
  parallelism_N = mkN "parallelism" ;
  high_AP = mkAP high_A ;
  outcome_N = mkN "outcome" ;
  completion_N = mkN "completion" ;
  master_N = mkN "master" ;
  concept_N = mkN "concept" ;
  modern_AP = mkAP modern_A ;
  order_N = mkN "order" ;
  research_N = mkN "research" ;
  advance_N = mkN "advance" ;
  field_N = mkN "field" ;
  microprocessor_N = mkN "microprocessor" ;
  advance_V2 = mkV2 (mkV "advance") ;
  technique_N = mkN "technique" ;
  instruction_N = mkN "instruction" ;
  parallel_N = mkN "parallel" ;
  parallel_AP = mkAP parallel_A ;
  establish_V2 = mkV2 (mkV "establish") ;
  hierarchy_N = mkN "hierarchy" ;
  assess_V2 = mkV2 (mkV "assess") ;
  proficiency_N = mkN "proficiency" ;
  quantitative_AP = mkAP quantitative_A ;
  impact_N = mkN "impact" ;
  architectural_AP = mkAP architectural_A ;
  state_N = mkN "state" ;
  simulation_N = mkN "simulation" ;
  tool_N = mkN "tool" ;
  content_N = mkN "content" ;
  essential_N = mkN "essential" ;
  achieve_V2 = makeV2 (mkV "achieve") ;
  base_V2 = mkV2 (mkV "base") ;
  analysis_N = mkN "analysis" ;
  method_N = mkN "method" ;
  assessment_N = mkN "assessment" ;
  consumption_N = mkN "consumption" ;
  part_N = mkN "part" ;
  affect_V2 = mkV2 (mkV "affect") ;
  evolution_N = mkN "evolution" ;
  technology_N = mkN "technology" ;
  include_VV = mkVV (mkV "include") ;
  law_N = mkN "law" ;
  execution_N = mkN "execution" ;
  time_N = mkN "time" ;
  throughput_N = mkN "throughput" ;
  fundamental_N = mkN "fundamental" ;
  locality_N = mkN "locality" ;
  reference_N = mkN "reference" ;
  evaluate_V2 = mkV2 (mkV "evaluate") ;
  level_N = mkN "level" ;
  define_V2 = mkV2 (mkV "define") ;
  limit_N = mkN "limit" ;
  category_N = mkN "category" ;
  dynamic_AP = mkAP dynamic_A ;
  dynamic_N = mkN "dynamic" ;
  static_AP = mkAP static_A ;
  algorithm_N = mkN "algorithm" ;
  branch_N = mkN "branch" ;
  prediction_N = mkN "prediction" ;
  speculation_N = mkN "speculation" ;
  loop_N = mkN "loop" ;
  different_AP = mkAP different_A ;
  source_N = mkN "source" ;
  bottleneck_N = mkN "bottleneck" ;
  reduce_V2 = mkV2 (mkV "reduce") ;
  miss_N = mkN "miss" ;
  penalty_N = mkN "penalty" ;
  hit_N = mkN "hit" ;
  example_N = mkN "example" ;
  free_N = mkN "free" ;
  virtual_AP = mkAP virtual_A ;
  address_V2 = mkV2 (mkV "address") ;
  address_N = mkN "address" ;
  knowledge_N = mkN "knowledge" ;
  linear_AP = mkAP linear_A ;
  algebra_N = mkN "algebra" ;
  probability_N = mkN "probability" ;
  theory_N = mkN "theory" ;
  program_V2V = mkV2V (mkV "program") ;
  desirable_AP = mkAP desirable_A ;
  image_N = mkN "image" ;
  overview_N = mkN "overview" ;
  practical_AP = mkAP practical_A ;
  application_N = mkN "application" ;
  measurement_N = mkN "measurement" ;
  develop_V2 = mkV2 (mkV "develop") ;
  solve_V2 = mkV2 (mkV "solve") ;
  problem_N = mkN "problem" ;
  derive_V2 = mkV2 (mkV "derive") ;
  science_N = mkN "science" ;
  geometry_N = mkN "geometry" ;
  optimization_N = mkN "optimization" ;
  statistics_N = mkN "statistics" ;
  grade_V2 = mkV2 (mkV "grade") ;
  camera_N = mkN "camera" ;
  modelling_N = mkN "modelling" ;
  stereo_N = mkN "stereo" ;
  mathematical_AP = mkAP mathematical_A ;
  central_N = mkN "central" ;
  algorithm_N = mkN "algorithm" ;
  square_N = mkN "square" ;
  apply_VV = mkVV (mkV "apply") ;
  terminology_N = mkN "terminology" ;
  structure_V2 = mkV2 (mkV "structure") ;
  logic_N = mkN "logic" ;
  solution_N = mkN "solution" ;
  geometric_AP = mkAP geometric_A ;
  camera_N = mkN "camera" ;
  class_N = mkN "class" ;
  exercise_N = mkN "exercise" ;
  session_N = mkN "session" ;
  pair_N = mkN "pair" ;
  project_N = mkN "project" ;
  submission_N = mkN "submission" ;
  report_N = mkN "report" ;
  result_N = mkN "result" ;
  lecture_N = mkN "lecture" ;
  article_N = mkN "article" ;
  university_N = mkN "university" ;
  element_N = mkN "element" ;
  address_N = mkN "address" ;
  programming_N = mkN "programming" ;
  model_N = mkN "model" ;
  processor_N = mkN "processor" ;
  core_N = mkN "core" ;
  chip_N = mkN "chip" ;
  share_V2 = mkV2 (mkV "share") ;
  thread_N = mkN "thread" ;
  resource_N = mkN "resource" ;
  project_N = mkN "project" ;
  document_V2 = mkV2 (mkV "document") ;
  scientific_AP = mkAP scientific_A ;
  literature_N = mkN "literature" ;
  session_N = mkN "session" ;
  sequence_N = mkN "sequence" ;
  lab_N = mkN "lab" ;
  methodology_N = mkN "methodology" ;
  systematically_Adv = mkAdv (mkA "systematically") ;
  assembly_N = mkN "assembly" ;
  language_N = mkN "language" ;
  sustainability_N = mkN "sustainability" ;
  compute_V2 = mkV2 (mkV "compute") ;
  level_N = mkN "level" ;
  sustainable_AP = mkAP sustainable_A ;
  electrical_AP = mkAP electrical_A ;
  mechanism_N = mkN "mechanism" ;
  circuit_N = mkN "circuit" ;
  storage_N = mkN "storage" ;
  energy_N = mkN "energy" ;
  operate_V2 = mkV2 (mkV "operate") ;
  device_N = mkN "device" ;
  component_N = mkN "component" ;
  configuration_N = mkN "configuration" ;
  class_N = mkN "class" ;
  optimize_V2 = mkV2 (mkV "optimize") ;
  interpret_V2 = mkV2 (mkV "interpret") ;
  requirement_N = mkN "requirement" ;
  electronic_AP = mkAP electronic_A ;
  data_N = mkN "data" ;
  instance_N = mkN "instance" ;
  measure_V2 = mkV2 (mkV "measure") ;
  estimate_VS = mkVS estimate_VS ;
  save_V2 = mkV2 (mkV "save") ;
  lecture_N = mkN "lecture" ;
  result_N = mkN "result" ;
  future_AP = mkAP future_A ;
  generation_N = mkN "generation" ;
  theory_N = mkN "theory" ;
  practice_N = mkN "practice" ;
  discrete_AP = mkAP discrete_A ;
  linear_AP = mkAP linear_A ;
  science_N = mkN "science" ;
  complexity_N = mkN "complexity" ;
  kind_N = mkN "kind" ;
  context_N = mkN "context" ;
  transportation_N = mkN "transportation" ;
  telecommunication_N = mkN "telecommunication" ;
  industrial_AP = mkAP industrial_A ;
  linear_AP = mkAP linear_A ;
  algebra_N = mkN "algebra" ;
  probability_N = mkN "probability" ;
  theory_N = mkN "theory" ;
  desirable_AP = mkAP desirable_A ;
  image_N = mkN "image" ;
  overview_N = mkN "overview" ;
  practical_AP = mkAP practical_A ;
  application_N = mkN "application" ;
  measurement_N = mkN "measurement" ;
  problem_N = mkN "problem" ;
  science_N = mkN "science" ;
  geometry_N = mkN "geometry" ;
  optimization_N = mkN "optimization" ;
  statistics_N = mkN "statistics" ;
  camera_N = mkN "camera" ;
  modelling_N = mkN "modelling" ;
  stereo_N = mkN "stereo" ;
  structure_N = mkN "structure" ;
  mathematical_AP = mkAP mathematical_A ;
  central_N = mkN "central" ;
  algorithm_N = mkN "algorithm" ;
  square_N = mkN "square" ;
  terminology_N = mkN "terminology" ;
  logic_N = mkN "logic" ;
  solution_N = mkN "solution" ;
  geometric_AP = mkAP geometric_A ;
  camera_N = mkN "camera" ;
  class_N = mkN "class" ;
  exercise_N = mkN "exercise" ;
  session_N = mkN "session" ;
  pair_N = mkN "pair" ;
  project_N = mkN "project" ;
  submission_N = mkN "submission" ;
  report_N = mkN "report" ;
  result_N = mkN "result" ;
  lecture_N = mkN "lecture" ;
  article_N = mkN "article" ;
  university_N = mkN "university" ;
  element_N = mkN "element" ;
  physics_N = mkN "physics" ;
  numerical_AP = mkAP numerical_A ;
  modeling_N = mkN "modeling" ;
  integrate_V2 = mkV2 (mkV "integrate") ;
  equation_N = mkN "equation" ;
  molecular_AP = mkAP molecular_A ;
  dynamic_N = mkN "dynamic" ;
  integration_N = mkN "integration" ;
  planning_N = mkN "planning" ;
  hardware_N = mkN "hardware" ;
  property_N = mkN "property" ;
  algorithmic_AP = mkAP algorithmic_A ;
  optimal_AP = mkAP optimal_A ;
  domain_N = mkN "domain" ;
  formulate_V2 = mkV2 (mkV "formulate") ;
  model_V2 = mkV2 (mkV "model") ;
  manageable_AP = mkAP manageable_A ;
  relate_V2 = mkV2 (mkV "relate") ;
  generic_AP = mkAP generic_A ;
  additional_AP = mkAP additional_A ;
  heuristic_N = mkN "heuristic" ;
  dual_AP = mkAP dual_A ;
  obtain_V2 = mkV2 (mkV "obtain") ;
  integer_N = mkN "integer" ;
  special_AP = mkAP special_A ;
  graph_N = mkN "graph" ;
  separate_V2 = mkV2 (mkV "separate") ;
  list_N = mkN "list" ;
  scale_N = mkN "scale" ;
  network_N = mkN "network" ;
  communication_N = mkN "communication" ;
  protocol_N = mkN "protocol" ;
  stack_N = mkN "stack" ;
  internet_N = mkN "internet" ;
  distribute_V2 = mkV2 (mkV "distribute") ;
  service_N = mkN "service" ;
  summarize_V2 = mkV2 (mkV "summarize") ;
  introduce_V2 = mkV2 (mkV "introduce") ;
  development_N = mkN "development" ;
  setting_N = mkN "setting" ;
  link_N = mkN "link" ;
  limit_V2V = mkV2V (mkV "limit") ;
  bandwidth_N = mkN "bandwidth" ;
  scalability_N = mkN "scalability" ;
  imperative_AP = mkAP imperative_A ;
  vector_N = mkN "vector" ;
  dimension_N = mkN "dimension" ;
  graphic_N = mkN "graphic" ;
  implement_V2 = mkV2 (mkV "implement") ;
  process_N = mkN "process" ;
  functionality_N = mkN "functionality" ;
  strict_AP = mkAP strict_A ;
  matrix_N = mkN "matrix" ;
  bachelor_N = mkN "bachelor" ;
  dimensional_AP = mkAP dimensional_A ;
  hardware_N = mkN "hardware" ;
  image_N = mkN "image" ;
  model_N = mkN "model" ;
  rendering_N = mkN "rendering" ;
  shadow_N = mkN "shadow" ;
  design_V2V = mkV2V (mkV "design") ;
  function_N = mkN "function" ;
  mechanical_AP = mkAP mechanical_A ;
  safety_N = mkN "safety" ;
  multimedia_N = mkN "multimedia" ;
  execute_V2 = mkV2 (mkV "execute") ;
  abstraction_N = mkN "abstraction" ;
  implement_N = mkN "implement" ;
  synchronization_N = mkN "synchronization" ;
  language_N = mkN "language" ;
  kernel_N = mkN "kernel" ;
  protocol_N = mkN "protocol" ;
  node_N = mkN "node" ;
  topology_N = mkN "topology" ;
  course_N = mkN "course" ;
  machine_N = mkN "machine" ;
  orient_V2 = mkV2 (mkV "orient") ;
  embed_V2 = mkV2 (mkV "embed") ;
  perform_V2 = mkV2 (mkV "perform") ;
  function_N = mkN "function" ;
  mechanical_AP = mkAP mechanical_A ;
  safety_N = mkN "safety" ;
  behavior_N = mkN "behavior" ;
  example_N = mkN "example" ;
  game_N = mkN "game" ;
  multimedia_N = mkN "multimedia" ;
  interface_N = mkN "interface" ;
  run_VS = mkVS run_VS ;
  verify_V2 = mkV2 (mkV "verify") ;
  set_N = mkN "set" ;
  good_AP = mkAP good_A ;
  --during_Prep = mkPrep (mkA "during") ;
  task_N = mkN "task" ;
  decompose_V2 = mkV2 (mkV "decompose") ;
  library_N = mkN "library" ;
  synchronization_N = mkN "synchronization" ;
  language_N = mkN "language" ;
  general_AP = mkAP general_A ;
  kernel_N = mkN "kernel" ;
  available_AP = mkAP available_A ;
  capacity_N = mkN "capacity" ;
  cyclic_AP = mkAP cyclic_A ;
  priority_N = mkN "priority" ;
  protocol_N = mkN "protocol" ;
  node_N = mkN "node" ;
  topology_N = mkN "topology" ;
  access_N = mkN "access" ;
  response_N = mkN "response" ;
  conjunction_N = mkN "conjunction" ;
  account_N = mkN "account" ;
  maximum_N = mkN "maximum" ;
  theory_N = mkN "theory" ;
  low_Adv = mkAdv (mkA "low") ;
  delay_N = mkN "delay" ;
  correctness_N = mkN "correctness" ;
  abstraction_N = mkN "abstraction" ;
  philosophy_N = mkN "philosophy" ;
  complex_AP = mkAP complex_A ;
  maintain_VS = mkVS maintain_VS ;
  environment_N = mkN "environment" ;
  semaphore_N = mkN "semaphore" ;
  syntax_N = mkN "syntax" ;
  tree_N = mkN "tree" ;
  semantics_N = mkN "semantics" ;
  compiler_N = mkN "compiler" ;
  induction_N = mkN "induction" ;
  proof_N = mkN "proof" ;
  read_VS = mkVS read_VS ;
  finite_AP = mkAP finite_A ;
  formal_AP = mkAP formal_A ;
  type_N = mkN "type" ;
  algebraic_AP = mkAP algebraic_A ;
  monad_N = mkN "monad" ;
  transformer_N = mkN "transformer" ;
  specification_N = mkN "specification" ;
  construction_N = mkN "construction" ;
  construct_V2 = mkV2 (mkV "construct") ;
  quick_AP = mkAP quick_A ;
  exception_N = mkN "exception" ;
  cryptography_N = mkN "cryptography" ;
  security_N = mkN "security" ;
  implementation_N = mkN "implementation" ;
  vulnerability_N = mkN "vulnerability" ;
  permutation_N = mkN "permutation" ;
  artificial_intelligence_CN = makeCN artificial_A intelligence_N ;
  cipher_N = mkN "cipher" ;
  cryptanalysis_N = mkN "cryptanalysis" ;
  symmetric_AP = mkAP symmetric_A ;
  programming_N = mkN "programming" ;
  function_N = mkN "function" ;
  model_N = mkN "model" ;
  software_development_CN = makeCN software_N development_N ;
  algorithm_N = mkN "algorithm" ;
  application_software_CN = makeCN application_N software_N ;
  data_structure_CN = makeCN data_N structure_N ;
  artificial_AP = mkAP artificial_A ;
  intelligence_N = mkN "intelligence" ;
  automata_theory_CN = makeCN automata_N theory_N ;
  binary_AP = mkAP binary_A ;
  binary_search_algorithm_CN = makeCN binary_A search_N algorithm_N ;
  bit_N = mkN "bit" ;
  bit_rate_CN = makeCN bit_N rate_N ;
  byte_N = mkN "byte" ;
  class_N = mkN "class" ;
  computer_science_CN = makeCN computer_N science_N ;
  cloud_computing_CN = makeCN cloud_N computing_N ;
  program_library_CN = makeCN program_N library_N ;
  coding_theory_CN = makeCN coding_N theory_N ;
  cognitive_science_CN = makeCN cognitive_A science_N ;
  compiler_N = mkN "compiler" ;
  computability_theory_CN = makeCN computability_N theory_N ;
  computational_biology_CN = makeCN computational_A biology_N ;
  computational_chemistry_CN = makeCN computational_A chemistry_N ;
  computational_physics_CN = makeCN computational_A physics_N ;
  computer_architecture_CN = makeCN computer_N architecture_N ;
  computer_data_storage_CN = makeCN computer_N data_N storage_N ;
  computer_graphics_CN = makeCN computer_N graphics_N ;
  computer_network_CN = makeCN computer_N network_N ;
  computer_science_CN = makeCN computer_N science_N ;
  computer_scientist_CN = makeCN computer_N scientist_N ;
  computer_security_CN = makeCN computer_N security_N ;
  concurrency_N = mkN "concurrency" ;
  control_flow_CN = makeCN control_N flow_N ;
  cryptography_N = mkN "cryptography" ;
  cyberbullying_N = mkN "cyberbullying" ;
  cyberspace_N = mkN "cyberspace" ;
  data_center_CN = makeCN data_N center_N ;
  database_N = mkN "database" ;
  data_mining_CN = makeCN data_N mining_N ;
  data_type_CN = makeCN data_N type_N ;
  digital_AP = mkAP digital_A ;
  signal_processing_CN = makeCN signal_N processing_N ;
  domain_name_system_CN = makeCN domain_N name_N system_N ;
  download_N = mkN "download" ;
  encryption_N = mkN "encryption" ;
  event_N = mkN "event" ;
  --executable_AP = mkAP executable_A ;
  file_N = mkN "file" ;
  exception_handling_CN = makeCN exception_N handling_N ;
  feasibility_study_CN = makeCN feasibility_N study_N ;
  filename_extension_CN = makeCN filename_N extension_N ;
  formal_AP = mkAP formal_A ;
  method_N = mkN "method" ;
  verification_N = mkN "verification" ;
  functional_AP = mkAP functional_A ;
  game_theory_CN = makeCN game_N theory_N ;
  gigabyte_N = mkN "gigabyte" ;
  graph_theory_CN = makeCN graph_N theory_N ;
  hash_function_CN = makeCN hash_N function_N ;
  hash_table_CN = makeCN hash_N table_N ;
  heapsort_N = mkN "heapsort" ;
  --human-computer_interation_CN = makeCN human-computer_N interation_N ;
  integrated_development_environment_CN = makeCN integrated_A development_N environment_N ;
  imperative_programming_CN = makeCN imperative_A programming_N ;
  inheritance_N = mkN "inheritance" ;
  insertion_sort_CN = makeCN insertion_N sort_N ;
  ascii_N = mkN "ascii" ;
  array_N = mkN "array" ;
  binary_tree_CN = makeCN binary_A tree_N ;
  bioinformatics_N = mkN "bioinformatics" ;
  boolean_data_type_CN = makeCN boolean_A data_N type_N ;
  crypto_N = mkN "crypto" ;
  computer_vision_CN = makeCN computer_N vision_N ;
  concatenation_N = mkN "concatenation" ;
  intelligent_AP = mkAP intelligent_A ;
  agent_N = mkN "agent" ;
  interface_N = mkN "interface" ;
  invariant_AP = mkAP invariant_A ;
  iteration_N = mkN "iteration" ;
  Java_N = mkN "Java" ;
  programming_language_CN = makeCN programming_N language_N ;
  kernel_N = mkN "kernel" ;
  linear_search_CN = makeCN linear_A search_N ;
  linked_list_CN = makeCN linked_A list_N ;
  logic_programming_CN = makeCN logic_N programming_N ;
  machine_learning_CN = makeCN machine_N learning_N ;
  matrix_N = mkN "matrix" ;
  modem_N = mkN "modem" ;
  number_theory_CN = makeCN number_N theory_N ;
  numerical_AP = mkAP numerical_A ;
  analysis_N = mkN "analysis" ;
  numerical_analysis_CN = makeCN numerical_A analysis_N ;
  operating_system_CN = makeCN operating_A system_N ;
  optical_fiber_CN = makeCN optical_N fiber_N ;
  pair_programming_CN = makeCN pair_N programming_N ;
  peripheral_N = mkN "peripheral" ;
  priority_queue_CN = makeCN priority_N queue_N ;
  quantum_computer_CN = makeCN quantum_N computer_N ;
  queue_N = mkN "queue" ;
  recursion_N = mkN "recursion" ;
  relational_database_CN = makeCN relational_A database_N ;
  requirements_analysis_CN = makeCN requirements_N analysis_N ;
  router_N = mkN "router" ;
  routing_table_CN = makeCN routing_N table_N ;
  selection_sort_CN = makeCN selection_N sort_N ;
  software_deployment_CN = makeCN software_N deployment_N ;
  software_development_CN = makeCN software_N development_N ;
  sorting_algorithm_CN = makeCN sorting_N algorithm_N ;
  source_code_CN = makeCN source_N code_N ;
  string_N = mkN "string" ;
  user_agent_CN = makeCN user_N agent_N ;
  user_interface_CN = makeCN user_N interface_N ;
  waterfall_model_CN = makeCN waterfall_N model_N ;
  --Wi-Fi_N = mkN "Wi-Fi" ;
  XHTML_N = mkN "XHTML" ;
  mathematical_model_CN = makeCN mathematical_A model_N ;
  generalization_N = mkN "generalization" ;
  blueprint_N = mkN "blueprint" ;
  customer_N = mkN "customer" ;
  end_user_CN = makeCN end_N user_N ;
  calculation_N = mkN "calculation" ;
  productivity_N = mkN "productivity" ;
  dynamic_programming_CN = makeCN dynamic_A programming_N ;
  computer_interaction_CN = makeCN computer_N interaction_N ;
  development_environment_CN = makeCN development_N environment_N ;
  list_N = mkN "list" ;
  mathematical_AP = mkAP mathematical_A ;
  parallel_computing_CN = makeCN parallel_A computing_N ;
  computer_program_CN = makeCN computer_N program_N ;
  programmer_N = mkN "programmer" ;
  word_processor_CN = makeCN word_N processor_N ;
  spreadsheet_N = mkN "spreadsheet" ;
  accounting_software_CN = makeCN accounting_N software_N ;
  web_browser_CN = makeCN web_N browser_N ;
  media_player_CN = makeCN media_N player_N ;
  flight_simulator_CN = makeCN flight_N simulator_N ;
  use_case_CN = makeCN use_N case_N ;
  class_diagram_CN = makeCN class_N diagram_N ;
  theoretical_AP = mkAP theoretical_A ;
  discreet_AP = mkAP discreet_A ;
  mathematics_N = mkN "mathematics" ;
  discrete_mathematics_CN = makeCN discrete_A mathematics_N ;
  philosophy_N = mkN "philosophy" ;
  probability_distribution_CN = makeCN probability_N distribution_N ;
  time_complexity_CN = makeCN time_N complexity_N ;
  number_N = mkN "number" ;
  set_theory_CN = makeCN set_N theory_N ;
  empty_set_CN = makeCN empty_A set_N ;
  software_tool_CN = makeCN software_N tool_N ;
  biology_N = mkN "biology" ;
  statistics_N = mkN "statistics" ;
  information_N = mkN "information" ;
  communication_N = mkN "communication" ;
  telecommunications_N = mkN "telecommunications" ;
  access_control_CN = makeCN access_N control_N ;
  domain_name_CN = makeCN domain_N name_N ;
  --ip-adress_N = mkN "ip-adress" ;
  whitelist_N = mkN "whitelist" ;
  graphics_card_CN = makeCN graphics_N card_N ;
  truth_value_CN = makeCN truth_N value_N ;
  variable_N = mkN "variable" ;
  conjunction_N = mkN "conjunction" ;
  disjunction_N = mkN "disjunction" ;
  negation_N = mkN "negation" ;
  hard_drive_CN = makeCN hard_A drive_N ;
  instruction_N = mkN "instruction" ;
  arithmetic_N = mkN "arithmetic" ;
  control_unit_CN = makeCN control_N unit_N ;
  server_N = mkN "server" ;
  code_N = mkN "code" ;
  information_theory_CN = makeCN information_N theory_N ;
  electronics_N = mkN "electronics" ;
  linguistics_N = mkN "linguistics" ;
  science_N = mkN "science" ;
  memory_N = mkN "memory" ;
  table_N = mkN "table" ;
  file_format_CN = makeCN file_N format_N ;
  computer_engineering_CN = makeCN computer_N engineering_N ;
  video_N = mkN "video" ;
  engineering_N = mkN "engineering" ;
  technology_N = mkN "technology" ;
  power_supply_CN = makeCN power_N supply_N ;
  information_system_CN = makeCN information_N system_N ;
  digital_signal_processor_CN = makeCN digital_A signal_N processor_N ;
  simulation_N = mkN "simulation" ;
  network_N = mkN "network" ;
  web_server_CN = makeCN web_N server_N ;
  programming_paradigm_CN = makeCN programming_N paradigm_N ;
  sensor_N = mkN "sensor" ;
  thread_N = mkN "thread" ;
  graphic_AP = mkAP graphic_A ;
  web_application_CN = makeCN web_N application_N ;
  device_driver_CN = makeCN device_N driver_N ;
  instruction_set_architecture_CN = makeCN instruction_N set_N architecture_N ;
  parser_N = mkN "parser" ;
  execution_N = mkN "execution" ;
  interruption_N = mkN "interruption" ;
  --inter-process_communication_CN = makeCN inter-process_A communication_N ;
  operator_N = mkN "operator" ;
  mathematical_AP = mkAP mathematical_A ;
  expression_N = mkN "expression" ;
  environment_N = mkN "environment" ;
  value_N = mkN "value" ;
  file_name_CN = makeCN file_N name_N ;
  proof_N = mkN "proof" ;
  --command-line_interpreter_CN = makeCN command-line_N interpreter_N ;
  unique_key_CN = makeCN unique_A key_N ;
  integer_N = mkN "integer" ;
  virtual_AP = mkAP virtual_A ;
  debugger_N = mkN "debugger" ;
  touchscreen_N = mkN "touchscreen" ;
  documentation_N = mkN "documentation" ;
  scripting_language_CN = makeCN scripting_N language_N ;
  bug_N = mkN "bug" ;
  formal_AP = mkAP formal_A ;
  LED_N = mkN "LED" ;
  speech_recognition_CN = makeCN speech_N recognition_N ;
  memory_address_CN = makeCN memory_N address_N ;
  computer_engineering_CN = makeCN computer_N engineering_N ;
  operation_N = mkN "operation" ;
  unit_N = mkN "unit" ;
  symbol_N = mkN "symbol" ;
  reference_N = mkN "reference" ;
  personal_computer_CN = makeCN personal_A computer_N ;
  bot_N = mkN "bot" ;
  wireless_AP = mkAP wireless_A ;
  web_page_CN = makeCN web_N page_N ;
  user_N = mkN "user" ;
  scripting_N = mkN "scripting" ;
  routing_N = mkN "routing" ;
  requirements_N = mkN "requirements" ;
  computing_N = mkN "computing" ;
  optical_N = mkN "optical" ;
  fiber_N = mkN "fiber" ;
  operating_A = mkA "operating" ;
  linked_A = mkA "linked" ;
  integrated_A = mkA "integrated" ;
  executable_A = mkA executable_A ;
  center_N = mkN "center" ;
  computability_N = mkN "computability" ;
  coding_N = mkN "coding" ;
  boolean_A = mkA "boolean" ;
  automata_N = mkN "automata" ;
  agile_AP = mkAP agile_A ;
}
