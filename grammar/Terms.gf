abstract Terms = Cat ** {

cat
  Term ;

fun
  CNSgTerm : CN -> Term ;
  CNPlTerm : CN -> Term ;
  APTerm : AP -> Term ;

-- example lexicon
fun
  goal_CN: CN;
  generation_N: N;
  partnership_N: N;
  project_N: N;
  encode_V2: V2;
  protocol_N: N;
  abstract_N: N;
  data_N: N;
  type_N: N;
  semantic_AP: AP;
  graph_N: N;
  syntax_N: N;
  notation_N: N;
  tree_N: N;
  window_N: N;
  toolbox_N: N;
  accelerate_V2: V2;
  graphic_N: N;
  port_N: N;
  access_N: N;
  control_N: N;
  list_N: N;
  method_N: N;
  time_N: N;
  poison_N: N;
  acknowledge_VS: VS;
  character_N: N;
  acoustic_N: N;
  coupler_N: N;
  acronym_N: N;
  letters_N: N;
  active_AP: AP;
  current_N: N;
  loop_N: N;
  directory_N: N;
  hub_N: N;
  matrix_N: N;
  liquid_N: N;
  crystal_N: N;
  display_N: N;
  monitor_N: N;
  server_N: N;
  page_N: N;
  terminator_N: N;
  object_N: N;
  actor_N: N;
  base_V2: V2;
  concurrent_AP: AP;
  language_N: N;
  adaptive_AP: AP;
  equalizer_N: N;
  replacement_N: N;
  cache_N: N;
  address_N: N;
  resolution_N: N;
  space_N: N;
  layout_N: N;
  randomization_N: N;
  administrative_AP: AP;
  domain_N: N;
  adobe_N: N;
  flash_N: N;
  audio_N: N;
  code_V2: V2;
  environment_N: N;
  configuration_N: N;
  power_N: N;
  interface_N: N;
  communication_N: N;
  procedure_N: N;
  encryption_N: N;
  standard_N: N;
  linux_N: N;
  sound_N: N;
  architecture_N: N;
  message_N: N;
  queue_V: V;
  micro_AP: AP;
  device_N: N;
  interrupt_V2: V2;
  controller_N: N;
  research_N: N;
  agency_N: N;
  technology_N: N;
  attachment_N: N;
  algorithmic_AP: AP;
  state_N: N;
  machine_N: N;
  allow_VS: VS;
  cell_N: N;
  rate_N: N;
  alternate_V2: V2;
  national_AP: AP;
  institute_N: N;
  for_Prep: Prep;
  internet_N: N;
  number_N: N;
  amoled_N: N;
  amplitude_N: N;
  compiler_N: N;
  kit_N: N;
  analog_N: N;
  digital_AP: AP;
  converter_N: N;
  anisotropic_AP: AP;
  filter_V2: V2;
  escape_N: N;
  antivirus_N: N;
  apache_N: N;
  ant_N: N;
  portable_AP: AP;
  apple_N: N;
  desktop_N: N;
  bus_N: N;
  connector_N: N;
  filing_N: N;
  lossless_AP: AP;
  worldwide_AP: AP;
  developer_N: N;
  conference_N: N;
  application_N: N;
  binary_AP: AP;
  layer_N: N;
  service_N: N;
  provider_N: N;
  specific_AP: AP;
  integrate_V2: V2;
  circuit_N: N;
  border_N: N;
  router_N: N;
  arithmetic_N: N;
  logic_N: N;
  holding_N: N;
  operate_V2: V2;
  system_N: N;
  artificial_AP: AP;
  intelligence_N: N;
  neural_AP: AP;
  network_N: N;
  ascii_N: N;
  aspect_N: N;
  orient_V2: V2;
  association_N: N;
  machinery_N: N;
  asymmetric_AP: AP;
  subscriber_N: N;
  asynchronous_AP: AP;
  balance_V2: V2;
  mode_N: N;
  transfer_N: N;
  ethernet_N: N;
  adaptation_N: N;
  attenuation_N: N;
  crosstalk_N: N;
  ratio_N: N;
  modem_N: N;
  video_N: N;
  interleave_V2: V2;
  accessibility_N: N;
  guideline_N: N;
  automate_V2: V2;
  classification_N: N;
  entity_N: N;
  security_N: N;
  enhancement_N: N;
  baud_N: N;
  detection_N: N;
  call_N: N;
  distributor_N: N;
  available_AP: AP;
  bit_N: N;
  average_N: N;
  average_AP: AP;
  bitrate_N: N;
  bandwidth_N: N;
  processor_N: N;
  basic_AP: AP;
  multilingual_AP: AP;
  plane_N: N;
  telecommunication_N: N;
  infrastructure_N: N;
  distribution_N: N;
  bidirectional_AP: AP;
  forwarding_N: N;
  directional_AP: AP;
  text_N: N;
  decimal_N: N;
  library_N: N;
  large_AP: AP;
  bind_V2: V2;
  bios_N: N;
  bipolar_AP: AP;
  junction_N: N;
  transistor_N: N;
  error_N: N;
  block_N: N;
  availability_N: N;
  map_N: N;
  screen_N: N;
  death_N: N;
  bluetooth_N: N;
  boot_V2: V2;
  gateway_N: N;
  normal_AP: AP;
  form_N: N;
  breadth_N: N;
  bulletin_N: N;
  business_N: N;
  continuity_N: N;
  execution_N: N;
  management_N: N;
  readiness_N: N;
  rate_VS: VS;
  reference_N: N;
  rule_N: N;
  alliance_N: N;
  consumer_N: N;
  employee_N: N;
  byte_N: N;
  order_N: N;
  mark_N: N;
  fault_N: N;
  tolerance_N: N;
  capability_N: N;
  maturity_N: N;
  integration_N: N;
  captcha_N: N;
  theorem_N: N;
  carriage_N: N;
  carrier_N: N;
  sense_N: N;
  multiple_N: N;
  collision_N: N;
  sheet_N: N;
  cathode_N: N;
  ray_N: N;
  tube_N: N;
  cd_N: N;
  challenge_N: N;
  handshake_N: N;
  authentication_N: N;
  chief_N: N;
  information_N: N;
  officer_N: N;
  cisco_N: N;
  discovery_N: N;
  classless_AP: AP;
  inter_V2: V2;
  client_N: N;
  close_VS: VS;
  source_N: N;
  metal_N: N;
  cloud_N: N;
  division_N: N;
  colour_N: N;
  adapter_N: N;
  command_N: N;
  line_N: N;
  comma_N: N;
  separate_V2: V2;
  value_N: N;
  commercial_N: N;
  shelf_N: N;
  common_N: N;
  request_N: N;
  broker_N: N;
  public_N: N;
  radio_N: N;
  communicate_V2: V2;
  sequential_AP: AP;
  disc_N: N;
  disk_N: N;
  compatibility_N: N;
  support_N: N;
  module_N: N;
  compatible_AP: AP;
  sharing_N: N;
  compile_V2: V2;
  function_N: N;
  complex_N: N;
  instruction_N: N;
  set_N: N;
  computer_N: N;
  computational_AP: AP;
  fluid_N: N;
  dynamics_N: N;
  independent_AP: AP;
  computation_N: N;
  compute_V2: V2;
  axial_AP: AP;
  aid_V2: V2;
  industrial_AP: AP;
  manufacture_V2: V2;
  quality_N: N;
  assist_V2: V2;
  translation_N: N;
  emergency_N: N;
  response_N: N;
  team_N: N;
  generate_V2: V2;
  imagery_N: N;
  memory_N: N;
  reservation_N: N;
  science_N: N;
  telephony_N: N;
  terminal_N: N;
  version_N: N;
  database_N: N;
  electronics_N: N;
  delivery_N: N;
  scramble_VV: VV;
  context_N: N;
  free_AP: AP;
  grammar_N: N;
  continuous_AP: AP;
  protection_N: N;
  flow_N: N;
  coordinate_V2: V2;
  universal_AP: AP;
  create_VV: VV;
  read_VS: VS;
  update_N: N;
  delete_V2: V2;
  cross_N: N;
  platform_N: N;
  site_N: N;
  forgery_N: N;
  cryptography_N: N;
  operation_N: N;
  relationship_N: N;
  cyclic_AP: AP;
  redundancy_N: N;
  check_N: N;
  cylinder_N: N;
  head_N: N;
  sector_N: N;
  daemon_N: N;
  definition_N: N;
  diagram_N: N;
  congestion_N: N;
  integrity_N: N;
  field_N: N;
  loss_N: N;
  manipulation_N: N;
  equipment_N: N;
  warehouse_N: N;
  arrival_N: N;
  packet_N: N;
  inspection_N: N;
  definitive_AP: AP;
  media_N: N;
  denial_N: N;
  attack_N: N;
  depth_N: N;
  publish_V2: V2;
  deterministic_AP: AP;
  finite_AP: AP;
  automaton_N: N;
  corporation_N: N;
  millennium_N: N;
  copyright_N: N;
  act_N: N;
  signature_N: N;
  recorder_N: N;
  visual_AP: AP;
  recovery_N: N;
  storage_N: N;
  rendering_N: N;
  manager_N: N;
  disaster_N: N;
  discretionary_AP: AP;
  distribute_V2: V2;
  document_N: N;
  specification_N: N;
  identify_V2: V2;
  dot_N: N;
  pitch_N: N;
  double_N: N;
  density_N: N;
  download_V2: V2;
  drag_V2: V2;
  drop_N: N;
  package_N: N;
  core_N: N;
  region_N: N;
  game_N: N;
  dynamic_AP: AP;
  exchange_N: N;
  host_N: N;
  link_V2: V2;
  random_AP: AP;
  international_AP: AP;
  learning_N: N;
  electronically_Adv: Adv;
  store_V2: V2;
  electronic_AP: AP;
  interchange_N: N;
  delay_N: N;
  calculator_N: N;
  frontier_N: N;
  foundation_N: N;
  identity_N: N;
  card_N: N;
  mail_N: N;
  elliptic_AP: AP;
  curve_N: N;
  elm_N: N;
  encrypt_V2: V2;
  end_N: N;
  day_N: N;
  licence_N: N;
  agreement_N: N;
  enhance_V2: V2;
  evolution_N: N;
  interior_N: N;
  resource_N: N;
  estimate_VS: VS;
  event_N: N;
  trace_V2: V2;
  format_N: N;
  expand_V2V: V2V;
  expense_N: N;
  cost_N: N;
  explicit_AP: AP;
  notification_N: N;
  industry_N: N;
  triton_N: N;
  hint_N: N;
  markup_N: N;
  meta_N: N;
  presence_N: N;
  tag_N: N;
  framework_N: N;
  exterior_N: N;
  external_AP: AP;
  sata_N: N;
  extract_N: N;
  transform_V2: V2;
  load_N: N;
  extreme_AP: AP;
  low_Adv: Adv;
  frequency_N: N;
  fear_N: N;
  uncertainty_N: N;
  doubt_N: N;
  fedora_N: N;
  antenna_N: N;
  effect_V2: V2;
  gate_N: N;
  replaceable_AP: AP;
  allocation_N: N;
  hierarchy_N: N;
  convergence_N: N;
  output_N: N;
  instance_N: N;
  assembly_N: N;
  correction_N: N;
  dictionary_N: N;
  front_N: N;
  side_N: N;
  ssh_N: N;
  full_AP: AP;
  future_AP: AP;
  garbage_N: N;
  geographic_AP: AP;
  geography_N: N;
  gigabit_N: N;
  gigabyte_N: N;
  globalization_N: N;
  global_AP: AP;
  unique_AP: AP;
  identifier_N: N;
  collection_N: N;
  documentation_N: N;
  privacy_N: N;
  guard_N: N;
  group_N: N;
  recording_N: N;
  partition_N: N;
  hard_AP: AP;
  description_N: N;
  hertz_N: N;
  hierarchical_AP: AP;
  temporal_AP: AP;
  performance_N: N;
  speed_N: N;
  throughput_N: N;
  versatile_AP: AP;
  priority_N: N;
  rapid_AP: AP;
  stream_V: V;
  interaction_N: N;
  hybrid_N: N;
  hyperlink_N: N;
  hypertext_N: N;
  monochrome_N: N;
  input_N: N;
  editor_N: N;
  facility_N: N;
  intellectual_AP: AP;
  intelligent_AP: AP;
  interactive_AP: AP;
  virtual_AP: AP;
  classroom_N: N;
  voice_N: N;
  intermediate_AP: AP;
  commission_N: N;
  internationalization_N: N;
  localization_N: N;
  internationalize_V2: V2;
  organization_N: N;
  union_N: N;
  assign_V2V: V2V;
  authority_N: N;
  connection_N: N;
  report_N: N;
  suite_N: N;
  relay_N: N;
  chat_N: N;
  storm_N: N;
  handler_N: N;
  interval_N: N;
  intrusion_N: N;
  countermeasure_N: N;
  prevention_N: N;
  panel_N: N;
  community_N: N;
  extension_N: N;
  class_N: N;
  native_N: N;
  edition_N: N;
  remote_AP: AP;
  invocation_N: N;
  job_N: N;
  entry_N: N;
  subsystem_N: N;
  test_N: N;
  action_N: N;
  compilation_N: N;
  keyboard_N: N;
  kibibyte_N: N;
  kilobit_N: N;
  kilobyte_N: N;
  kilohertz_N: N;
  knowledge_N: N;
  grid_N: N;
  scale_N: N;
  recent_AP: AP;
  significant_AP: AP;
  diode_N: N;
  lightweight_AP: AP;
  feed_N: N;
  aggregation_N: N;
  scratch_N: N;
  kernel_N: N;
  professional_AP: AP;
  silicon_N: N;
  local_AP: AP;
  logical_AP: AP;
  volume_N: N;
  term_N: N;
  insertion_N: N;
  voltage_N: N;
  magnetic_AP: AP;
  recognition_N: N;
  main_AP: AP;
  mandatory_AP: AP;
  role_N: N;
  master_N: N;
  maximum_AP: AP;
  transmission_N: N;
  medium_N: N;
  megabit_N: N;
  megabyte_N: N;
  megahertz_N: N;
  channel_N: N;
  microprocessor_N: N;
  million_N: N;
  minimum_N: N;
  ad_N: N;
  world_N: N;
  congress_N: N;
  mortality_N: N;
  medical_AP: AP;
  picture_N: N;
  expert_N: N;
  factor_N: N;
  image_N: N;
  label_N: N;
  instrument_N: N;
  negative_AP: AP;
  news_N: N;
  appliance_N: N;
  internal_AP: AP;
  uniform_N: N;
  spline_N: N;
  volatile_AP: AP;
  laptop_N: N;
  child_N: N;
  analytical_AP: AP;
  transaction_N: N;
  utility_N: N;
  path_N: N;
  initiative_N: N;
  interconnection_N: N;
  acceptance_N: N;
  convention_N: N;
  organic_AP: AP;
  original_N: N;
  original_AP: AP;
  manufacturer_N: N;
  orthogonal_AP: AP;
  password_N: N;
  express_N: N;
  instrumentation_N: N;
  peer_N: N;
  peripheral_N: N;
  interconnect_V2: V2;
  perl_N: N;
  regular_AP: AP;
  expression_N: N;
  persistent_AP: AP;
  assistant_N: N;
  php_N: N;
  microcontroller_N: N;
  pin_N: N;
  pixel_N: N;
  old_AP: AP;
  control_V2: V2;
  list_V2V: V2V;
  time_V2: V2;
  acoustic_AP: AP;
  current_AP: AP;
  liquid_AP: AP;
  display_VS: VS;
  monitor_V2: V2;
  page_V2: V2;
  object_V2: V2;
  cache_V2: V2;
  address_V2: V2;
  space_V2: V2;
  flash_V2: V2;
  power_V2: V2;
  standard_AP: AP;
  sound_V2: V2;
  research_V2: V2;
  project_VS: VS;
  state_VS: VS;
  institute_V2: V2;
  number_V2: V2;
  escape_VS: VS;
  border_V2: V2;
  transfer_V2: V2;
  call_V3: V3;
  plane_V2: V2;
  file_V2: V2;
  block_V2: V2;
  map_V2: V2;
  order_VV: VV;
  mark_V3: V3;
  fault_V2: V2;
  sense_VS: VS;
  multiple_AP: AP;
  ray_V2: V2;
  challenge_V2: V2;
  chief_AP: AP;
  command_V2: V2;
  value_V2: V2;
  commercial_AP: AP;
  common_AP: AP;
  request_VS: VS;
  public_AP: AP;
  support_VV: VV;
  function_V: V;
  complex_AP: AP;
  set_VV: VV;
  component_AP: AP;
  fluid_AP: AP;
  free_V2V: V2V;
  update_V2: V2;
  check_V2: V2;
  attack_V2: V2;
  act_VA: VA;
  document_V2: V2;
  double_V2: V2;
  double_Adv: Adv;
  drop_V2: V2;
  game_V2: V2;
  exchange_V2: V2;
  learn_VV: VV;
  interchange_V2: V2;
  mail_V2: V2;
  curve_V2: V2;
  end_VA: VA;
  license_V2: V2;
  interior_AP: AP;
  hint_VS: VS;
  exterior_AP: AP;
  extract_V2: V2;
  load_V2: V2;
  doubt_VS: VS;
  partition_V2: V2;
  hard_Adv: Adv;
  monochrome_AP: AP;
  report_VS: VS;
  chat_V2: V2;
  storm_V2: V2;
  native_AP: AP;
  job_V2: V2;
  scale_V2: V2;
  scratch_V2: V2;
  master_V2: V2;
  label_V3: V3;
  uniform_AP: AP;
  express_V2: V2;
  express_Adv: Adv;
  peer_V: V;
  peripheral_AP: AP;
  course_N: N;
  prerequisite_N: N;
  design_N: N;
  principle_N: N;
  aim_N: N;
  component_N: N;
  technical_AP: AP;
  functional_AP: AP;
  fast_Adv: Adv;
  fast_AP: AP;
  efficient_AP: AP;
  progress_N: N;
  engineering_N: N;
  convert_V2: V2;
  raw_N: N;
  software_N: N;
  structure_N: N;
  parallelism_N: N;
  high_AP: AP;
  outcome_N: N;
  completion_N: N;
  concept_N: N;
  modern_AP: AP;
  advance_N: N;
  advance_V2: V2;
  technique_N: N;
  parallel_N: N;
  parallel_AP: AP;
  establish_V2: V2;
  assess_V2: V2;
  proficiency_N: N;
  quantitative_AP: AP;
  impact_N: N;
  architectural_AP: AP;
  simulation_N: N;
  tool_N: N;
  content_N: N;
  essential_N: N;
  achieve_V2: V2;
  analysis_N: N;
  assessment_N: N;
  consumption_N: N;
  part_N: N;
  affect_V2: V2;
  include_VV: VV;
  law_N: N;
  fundamental_N: N;
  locality_N: N;
  evaluate_V2: V2;
  level_N: N;
  define_V2: V2;
  limit_N: N;
  category_N: N;
  dynamic_N: N;
  static_AP: AP;
  algorithm_N: N;
  branch_N: N;
  prediction_N: N;
  speculation_N: N;
  different_AP: AP;
  bottleneck_N: N;
  reduce_V2: V2;
  miss_N: N;
  penalty_N: N;
  hit_N: N;
  example_N: N;
  free_N: N;
  linear_AP: AP;
  algebra_N: N;
  probability_N: N;
  theory_N: N;
  program_V2V: V2V;
  desirable_AP: AP;
  overview_N: N;
  practical_AP: AP;
  measurement_N: N;
  develop_V2: V2;
  solve_V2: V2;
  problem_N: N;
  derive_V2: V2;
  geometry_N: N;
  optimization_N: N;
  statistics_N: N;
  grade_V2: V2;
  camera_N: N;
  modelling_N: N;
  stereo_N: N;
  mathematical_AP: AP;
  central_N: N;
  square_N: N;
  apply_VV: VV;
  terminology_N: N;
  structure_V2: V2;
  solution_N: N;
  geometric_AP: AP;
  exercise_N: N;
  session_N: N;
  pair_N: N;
  submission_N: N;
  result_N: N;
  lecture_N: N;
  article_N: N;
  university_N: N;
  element_N: N;
  programming_N: N;
  model_N: N;
  chip_N: N;
  share_V2: V2;
  thread_N: N;
  scientific_AP: AP;
  literature_N: N;
  sequence_N: N;
  lab_N: N;
  methodology_N: N;
  systematically_Adv: Adv;
  sustainability_N: N;
  sustainable_AP: AP;
  electrical_AP: AP;
  mechanism_N: N;
  energy_N: N;
  optimize_V2: V2;
  interpret_V2: V2;
  requirement_N: N;
  measure_V2: V2;
  save_V2: V2;
  practice_N: N;
  discrete_AP: AP;
  complexity_N: N;
  kind_N: N;
  transportation_N: N;
  physics_N: N;
  numerical_AP: AP;
  modeling_N: N;
  equation_N: N;
  molecular_AP: AP;
  planning_N: N;
  hardware_N: N;
  property_N: N;
  optimal_AP: AP;
  formulate_V2: V2;
  model_V2: V2;
  manageable_AP: AP;
  relate_V2: V2;
  generic_AP: AP;
  additional_AP: AP;
  heuristic_N: N;
  dual_AP: AP;
  obtain_V2: V2;
  integer_N: N;
  special_AP: AP;
  stack_N: N;
  summarize_V2: V2;
  introduce_V2: V2;
  development_N: N;
  setting_N: N;
  link_N: N;
  limit_V2V: V2V;
  scalability_N: N;
  imperative_AP: AP;
  vector_N: N;
  dimension_N: N;
  implement_V2: V2;
  process_N: N;
  functionality_N: N;
  strict_AP: AP;
  bachelor_N: N;
  dimensional_AP: AP;
  shadow_N: N;
  mathematics_N: N;
  design_V2V: V2V;
  mechanical_AP: AP;
  safety_N: N;
  multimedia_N: N;
  abstraction_N: N;
  implement_N: N;
  synchronization_N: N;
  node_N: N;
  topology_N: N;
  embed_V2: V2;
  perform_V2: V2;
  behavior_N: N;
  run_VS: VS;
  verify_V2: V2;
  good_AP: AP;
  during_Prep: Prep;
  task_N: N;
  decompose_V2: V2;
  general_AP: AP;
  capacity_N: N;
  conjunction_N: N;
  account_N: N;
  maximum_N: N;
  correctness_N: N;
  philosophy_N: N;
  maintain_VS: VS;
  semaphore_N: N;
  semantics_N: N;
  induction_N: N;
  proof_N: N;
  formal_AP: AP;
  algebraic_AP: AP;
  monad_N: N;
  transformer_N: N;
  construction_N: N;
  construct_V2: V2;
  quick_AP: AP;
  exception_N: N;
  implementation_N: N;
  vulnerability_N: N;
  permutation_N: N;
  artificial_intelligence_CN: CN;
  cipher_N: N;
  cryptanalysis_N: N;
  symmetric_AP: AP;
  computer_science_CN: CN;
  software_development_CN: CN;
  application_software_CN: CN;
  data_structure_CN: CN;
  automata_theory_CN: CN;
  binary_search_algorithm_CN: CN;
  bit_rate_CN: CN;
  cloud_computing_CN: CN;
  library_CN: CN;
  coding_theory_CN: CN;
  cognitive_science_CN: CN;
  computability_theory_CN: CN;
  computational_biology_CN: CN;
  computational_chemistry_CN: CN;
  computational_physics_CN: CN;
  computer_architecture_CN: CN;
  computer_data_storage_CN: CN;
  computer_graphics_CN: CN;
  computer_network_CN: CN;
  computer_scientist_CN: CN;
  computer_security_CN: CN;
  concurrency_N: N;
  control_flow_CN: CN;
  cyberbullying_N: N;
  cyberspace_N: N;
  data_center_CN: CN;
  data_mining_CN: CN;
  data_type_CN: CN;
  signal_processing_CN: CN;
  domain_name_system_CN: CN;
  download_N: N;
  executable_AP: AP;
  file_N: N;
  exception_handling_CN: CN;
  feasibility_study_CN: CN;
  filename_extension_CN: CN;
  verification_N: N;
  game_theory_CN: CN;
  graph_theory_CN: CN;
  hash_function_CN: CN;
  hash_table_CN: CN;
  heapsort_N: N;
  human_computer_interation_CN: CN;
  integrated_development_environment_CN: CN;
  imperative_programming_CN: CN;
  inheritance_N: N;
  insertion_sort_CN: CN;
  array_N: N;
  binary_tree_CN: CN;
  bioinformatics_N: N;
  boolean_data_type_CN: CN;
  crypto_N: N;
  computer_vision_CN: CN;
  concatenation_N: N;
  agent_N: N;
  invariant_AP: AP;
  iteration_N: N;
  Java_N: N;
  programming_language_CN: CN;
  linear_search_CN: CN;
  linked_list_CN: CN;
  logic_programming_CN: CN;
  machine_learning_CN: CN;
  number_theory_CN: CN;
  numerical_analysis_CN: CN;
  operating_system_CN: CN;
  optical_fiber_CN: CN;
  pair_programming_CN: CN;
  priority_queue_CN: CN;
  quantum_computer_CN: CN;
  queue_N: N;
  recursion_N: N;
  relational_database_CN: CN;
  requirements_analysis_CN: CN;
  routing_table_CN: CN;
  selection_sort_CN: CN;
  software_deployment_CN: CN;
  sorting_algorithm_CN: CN;
  source_code_CN: CN;
  string_N: N;
  user_agent_CN: CN;
  user_interface_CN: CN;
  waterfall_model_CN: CN;
  Wi_Fi_N: N;
  XHTML_N: N;
  mathematical_model_CN: CN;
  generalization_N: N;
  blueprint_N: N;
  customer_N: N;
  end_user_CN: CN;
  calculation_N: N;
  productivity_N: N;
  dynamic_programming_CN: CN;
  computer_interaction_CN: CN;
  development_environment_CN: CN;
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
  discrete_mathematics_CN: CN;
  probability_distribution_CN: CN;
  time_complexity_CN: CN;
  set_theory_CN: CN;
  empty_set_CN: CN;
  software_tool_CN: CN;
  biology_N: N;
  telecommunications_N: N;
  access_control_CN: CN;
  domain_name_CN: CN;
  ip_adress_N: N;
  whitelist_N: N;
  graphics_card_CN: CN;
  truth_value_CN: CN;
  variable_N: N;
  disjunction_N: N;
  negation_N: N;
  hard_drive_CN: CN;
  control_unit_CN: CN;
  code_N: N;
  information_theory_CN: CN;
  linguistics_N: N;
  table_N: N;
  file_format_CN: CN;
  computer_engineering_CN: CN;
  engineering_N: N;
  information_system_CN: CN;
  digital_signal_processor_CN: CN;
  web_server_CN: CN;
  programming_paradigm_CN: CN;
  sensor_N: N;
  graphic_AP: AP;
  web_application_CN: CN;
  device_driver_CN: CN;
  instruction_set_architecture_CN: CN;
  parser_N: N;
  interruption_N: N;
  inter_process_communication_CN: CN;
  operator_N: N;
  file_name_CN: CN;
  command_line_interpreter_CN: CN;
  unique_key_CN: CN;
  debugger_N: N;
  touchscreen_N: N;
  scripting_language_CN: CN;
  bug_N: N;
  LED_N: N;
  speech_recognition_CN: CN;
  memory_address_CN: CN;
  unit_N: N;
  symbol_N: N;
  personal_computer_CN: CN;
  bot_N: N;
  wireless_AP: AP;
  web_page_CN: CN;
  scanner_N: N;
  abstract_AP: AP;
  concrete_AP: AP;
  accumulator_N: N;
  accuracy_N: N;
  precision_N: N;
  selection_N: N;
  activation_N: N;
  inference_N: N;
  argument_N: N;
  associative_AP: AP;
  automated_AP: AP;
  reasoning_N: N;
  robot_N: N;
  robotics_N: N;
  benchmark_N: N;
  branch_V: V;
  answer_N: N;
  nested_AP: AP;
  statement_N: N;
  parameter_N: N;
  comment_N: N;
  if_loop_N: N;
  if_statement_N: N;
  while_loop_N: N;
  while_statement_N: N;
  search_V2: V2;
  build_V2: V2;
  engine_N: N;
  capsule_N: N;
  categorical_AP: AP;
  classifier_N: N;
  clock_V2: V2;
  column_N: N;
  sort_V2: V2;
  computable_AP: AP;
  console_N: N;
  constant_N: N;
  constrain_V2: V2;
  conditional_AP: AP;
  constraint_N: N;
  container_N: N;
  redundant_AP: AP;
  condition_N: N;
  boolean_AP: AP;
  program_N: N;
  declaration_N: N;
  declare_V: V;
  initialization_N: N;
  initialize_V: V;
  index_N: N;
  runtime_N: N;
  runtime_error_CN: CN;
  accelerator_N: N;
  cooling_N: N;
  asymptotic_AP: AP;
  optical_AP: AP;
  variance_N: N;
  pattern_N: N;
  blacklist_N: N;
  automation_N: N;
  coherency_N: N;
  closure_N: N;
  histogram_N: N;
  combinatorial_AP: AP;
  comparison_N: N;
  cybernetics_N: N;
  conceptual_AP: AP;
  conceptualization_N: N;
  consistent_AP: AP;
  satisfaction_N: N;
  continual_AP: AP;
  improvement_N: N;
  continuation_N: N;
  style_N: N;
  cooperative_AP: AP;
  processing_N: N;
  stream_N: N;
  boundary_N: N;
  default_N: N;
  dependency_N: N;
  differentiable_AP: AP;
  reduction_N: N;
  divide_V2: V2;
  conquer_V2: V2;
  point_N: N;
  creativity_N: N;
  effective_AP: AP;
  descriptive_AP: AP;
  cable_N: N;
  interference_N: N;
  switch_N: N;
  false_AP: AP;
  feature_N: N;
  extraction_N: N;
  formula_N: N;
  frame_N: N;
  open_AP: AP;
  generative_AP: AP;
  genetic_AP: AP;
  human_N: N;
  segmentation_N: N;
  immutable_AP: AP;
  incremental_AP: AP;
  indicator_N: N;
  hide_V2: V2;
  query_N: N;
  visualization_N: N;
  cycle_N: N;
  test_V2: V2;
  interpretation_N: N;
  irregular_AP: AP;
  issue_N: N;
  iterative_AP: AP;
  primitive_AP: AP;
  lazy_AP: AP;
  merger_N: N;
  loader_N: N;
  implication_N: N;
  motion_N: N;
  nondeterministic_AP: AP;
  monotonic_AP: AP;
  transformation_N: N;
  precondition_N: N;
  key_feature_CN: CN;
  garbage_collection_CN: CN;
  global_variable_CN: CN;
  virus_N: N;
  motion_sensor_CN: CN;
  player_N: N;
  recursive_AP: AP;
  register_V2: V2;
  scope_N: N;
  semiconductor_N: N;
  simulate_V2: V2;
  singleton_N: N;
  maintenance_N: N;
  validation_N: N;
  spam_N: N;
  subset_N: N;
  technological_AP: AP;
  translator_N: N;
  true_N: N;
  user_N: N;
  programmable_AP: AP;
  text_editor_CN: CN;
  register_N: N;
  hardware_acceleration_CN: CN;
  address_space_CN: CN;
  card_reader_CN: CN;
  CD_ROM_N: N;
  computer_case_CN: CN;
  form_factor_CN: CN;
  core_memory_CN: CN;
  expansion_bus_CN: CN;
  firewall_N: N;
  firmware_N: N;
  flash_memory_CN: CN;
  floppy_disk_CN: CN;
  graphics_processing_unit_CN: CN;
  hard_disk_drive_CN: CN;
  integrated_circuit_CN: CN;
  mainframe_computer_CN: CN;
  memory_card_CN: CN;
  microcode_N: N;
  motherboard_N: N;
  network_interface_controller_CN: CN;
  power_supply_CN: CN;
  printer_N: N;
  sound_card_CN: CN;
  tape_drive_CN: CN;
  computer_terminal_CN: CN;
  trackpad_N: N;
  video_card_CN: CN;
  webcam_N: N;
  fan_N: N;
  LED_display_CN: CN;
  data_storage_device_CN: CN;
  communications_protocol_CN: CN;
  printed_circuit_board_CN: CN;
  parallel_computing_CN: CN;
  graphical_AP: AP;
  desktop_computer_CN: CN;
  laser_N: N;
  electromagnetic_AP: AP;
  computer_mouse_CN: CN;
  static_random_access_memory_CN: CN;
  electromagnetic_wave_CN: CN;
  optical_disc_CN: CN;
  computer_security_model_CN: CN;
  information_technology_CN: CN;
  unauthorized_access_CN: CN;
  confidential_information_CN: CN;
  holistic_approach_CN: CN;
  ethical_aspect_CN: CN;
  design_pattern_CN: CN;
  mathematical_modelling_CN: CN;
  functional_programming_CN: CN;
  business_information_system_CN: CN;
  database_administator_CN: CN;
  recursive_data_type_CN: CN;
  graphical_user_interface_CN: CN;
  two_factor_authentication_CN: CN;
  mandatory_access_control_CN: CN;
  system_specification_CN: CN;
  multi_core_processor_CN: CN;
  domain_specific_language_CN: CN;
  data_management_CN: CN;
  object_oriented_program_CN: CN;
  machine_code_CN: CN;
  computer_system_CN: CN;
  software_engineer_CN: CN;
  software_system_CN: CN;
  game_engine_CN: CN;
  compiler_construction_CN: CN;
  regular_expression_CN: CN;
  code_generator_CN: CN;
  formal_verification_CN: CN;
  differential_equation_CN: CN;
  algorithm_design_CN: CN;
  network_security_CN: CN;
  distributed_systems_CN: CN;
  applied_data_science_CN: CN;
  abstract_data_type_CN: CN;
  abstract_method_CN: CN;
  agile_software_development_CN: CN;
  big_data_CN: CN;
  binary_number_CN: CN;
  binary_search_tree_CN: CN;
  security_protocol_CN: CN;
  virtual_private_network_CN: CN;
  floating_point_number_CN: CN;
  attack_model_CN: CN;
  data_communication_CN: CN;
  routing_protocol_CN: CN;
  congestion_control_CN: CN;
  associate_V: V;
  static_memory_CN: CN;
  topic_N: N;
  screensaver_N: N;
  solid_N: N;
  product_N: N;
  specify_VS: VS;
  program_registration_CN: CN;
  analyse_V2: V2;
  subroutine_N: N;
  external_N: N;
  complexity_analysis_CN: CN;
  expansion_N: N;
  computer_system_architecture_CN: CN;
  assignment_N: N;
  construct_V: V;
  prototype_N: N;
  unification_N: N;
  compiler_techniques_CN: CN;
  processor_base_CN: CN;
  program_code_CN: CN;
  covariance_N: N;
  fundamental_AP: AP;
  comprehend_VV: VV;
  resource_requirement_search_CN: CN;
  terminal_AP: AP;
  bridge_N: N;
  skill_N: N;
  compose_V2: V2;
  username_V3: V3;
  image_V2: V2;
  change_V2: V2;
  teach_V2V: V2V ;
  write_VV: VV;
  assembly_programming_CN: CN;
  evaluation_N: N;
  website_N: N;
  complement_V2: V2;
  constructor_N: N;
  decide_VV: VV;
  template_N: N;
  program_plan_CN: CN;
  airflow_N: N;
  hint_VS: VS;
  driver_N: N;
  document_V: V;
  spectrum_N: N;
  argue_VS: VS;
  vehicle_N: N;
  contravariance_N: N;
  background_N: N;
  laboratory_task_CN: CN;
  microarchitecture_level_CN: CN;
  copy_V2: V2;
  associate_V2: V2;
  indirect_AP: AP;
  user_experience_CN: CN;
  tape_V2: V2;
  supercomputer_N: N;
  unit_V2V: V2V ;
  compulsory_AP: AP;
  pseudo_AP: AP;
  neural_network_CN: CN;
  comparable_AP: AP;
  synchronization_error_CN: CN;
  data_dependencies_CN: CN;
  constant_AP: AP;
  assume_VS: VS;
  enable_VS: VS;
  finance_V2: V2;
  generalize_V2: V2;
  reinforce_V2: V2;
  batch_N: N;
  work_N: N;
  educational_programme_CN: CN;
  os_N: N;
  modify_V2: V2;
  motherboard_V2: V2;
  study_V2: V2;
  relation_N: N;
  examination_N: N;
  hardware_system_CN: CN;
  program_verification_CN: CN;
  question_V2: V2;
  programming_skill_CN: CN;
  aim_VV: VV;
  select_VV: VV;
  antecedent_AP: AP;
  user_group_CN: CN;
  system_verification_CN: CN;
  modelling_language_CN: CN;
  book_V2: V2;
  multiprocessing_N: N;
  performance_optimization_CN: CN;
  examination_hall_exam_CN: CN;
  implementation_problem_CN: CN;
  accompany_V2: V2;
  primary_AP: AP;
  storage_techniques_CN: CN;
  introduction_N: N;
  user_test_CN: CN;
  type_V2: V2;
  ethics_N: N;
  individual_N: N;
  individual_AP: AP;
  authore_V2: V2;
  performance_analysis_CN: CN;
  routine_N: N;
  version_control_system_CN: CN;
  standard_class_CN: CN;
  language_extension_CN: CN;
  thesis_N: N;
  electricity_N: N;
  distribute_V: V;
  programming_course_CN: CN;
  assembly_code_CN: CN;
  polymorphism_N: N;
  standard_algorithm_CN: CN;
  menu_N: N;
  power_consumption_CN: CN;
  approximate_V2: V2;
  data_collection_CN: CN;
  extend_V2: V2;
  shareware_N: N;
  antibiotic_N: N;
  unify_V2: V2;
  simulation_method_CN: CN;
  strategy_N: N;
  memory_hierarchy_CN: CN;
  give_V3: V3;
  domain_specific_CN: CN;
  fan_V2: V2;
  systematic_AP: AP;
  calculus_N: N;
  ai_N: N;
  multiprocessor_N: N;
  modular_AP: AP;
  computing_capacity_CN: CN;
  secure_V2: V2;
  taskbar_N: N;
  programming_problem_CN: CN;
  complete_V2: V2;
  basic_N: N;
  start_V2: V2;
  purpose_N: N;
  system_requirement_CN: CN;
  attribute_N: N;
  learning_outcome_CN: CN;
  sample_V2: V2;
  determine_VV: VV;
  cryptology_N: N;
  parallellization_N: N;
  empirical_AP: AP;
  predict_VS: VS;
  performance_bottleneck_CN: CN;
  code_development_tool_CN: CN;
  reality_N: N;
  admission_requirement_CN: CN;
  normal_form_CN: CN;
  look_VV: VV;
  architect_N: N;
  mutable_AP: AP;
  reliable_AP: AP;
  token_N: N;
  data_abstraction_CN: CN;
  require_VV: VV;
  light_N: N;
  parse_V2: V2;
  version_control_CN: CN;
  cyber_security_CN: CN;
  vary_V2: V2;
  photo_realistic_CN: CN;
  establish_V: V;
  course_specific_CN: CN;
  extract_V: V;
  programming_assignment_CN: CN;
  cluster_N: N;
  grammars_N: N;
  subclass_N: N;
  software_development_project_CN: CN;
  pointer_N: N;
  therefore_Adv: Adv ;
  similar_AP: AP;
  implementation_problems_CN: CN;
  objective_N: N;
  reader_N: N;
  logo_N: N;
  object_oriented_CN: CN;
  litterature_study_CN: CN;
  hotkey_N: N;
  overcome_V2: V2;
  subjunctive_N: N;
  accept_VV: VV;
  interface_design_CN: CN;
  multiplication_N: N;
  syntax_analysis_CN: CN;
  characteristic_AP: AP;
  course_plan_CN: CN;
  network_protocol_CN: CN;
  communication_system_CN: CN;
  computer_based_CN: CN;
  basic_principle_CN: CN;
  approximation_N: N;
  exemplify_V2: V2;
  begin_V2: V2;
  development_process_CN: CN;
  mouse_N: N;
  program_component_CN: CN;
  polymorph_AP: AP;
  name_V3: V3;
  entry_requirements_CN: CN;
  recoverable_AP: AP;
  machine_oriented_CN: CN;
  implement_V: V;
  autonomous_AP: AP;
  interdisciplinary_AP: AP;
  paradigm_N: N;
  cache_memory_CN: CN;
  explore_VS: VS;
  memory_hierarchy_level_CN: CN;
  better_V2: V2;
  underlying_AP: AP;
  section_N: N;
  contents_N: N;
  word_V2: V2;
  use_VV: VV;
  develop_V: V;
  discuss_VS: VS;
  bound_V2V: V2V ;
  reflection_N: N;
  algorithm_design_techniques_CN: CN;
  terabyte_N: N;
  switch_V2: V2;
  connect_V2: V2;
  degree_N: N;
  software_technology_CN: CN;
  data_processing_CN: CN;
  pseudocode_V2: V2;
  statistical_AP: AP;
  bus_V2: V2;
  encapsulation_N: N;
  detect_V2: V2;
  circuit_structure_CN: CN;
  parsing_N: N;
  hardware_unit_CN: CN;
  click_V: V;
  menu_bar_CN: CN;
  root_V2: V2;
  drive_N: N;
  injection_N: N;
  superclass_N: N;
  lisp_V2: V2;
  well_grounded_AP: AP;
  supervision_N: N;
  software_development_assignment_CN: CN;
  chrome_N: N;
  processor_architecture_CN: CN;
  design_process_CN: CN;
  cassette_N: N;
  processor_core_CN: CN;
  improve_V2: V2;
  head_V2: V2;
  agile_AP: AP;
  educational_program_CN: CN;
  bar_N: N;
  back_N: N;
  context_free_CN: CN;
  articulate_V2: V2;
  predicate_logic_CN: CN;
  responsibility_N: N;
  capture_V2: V2;
  essential_AP: AP;
  standard_library_CN: CN;
  acceleration_N: N;
  algorithm_analysis_CN: CN;
  android_N: N;
  logarithm_N: N;
  composition_N: N;
  behaviour_N: N;
  software_architecture_CN: CN;
  data_set_CN: CN;
  appropriate_V2: V2;
  effect_N: N;
  act_VV: VV;
  student_N: N;
  control_system_CN: CN;
  education_N: N;
  computer_system_component_CN: CN;
  prepare_VV: VV;
  factory_N: N;
  loading_N: N;
  propositional_logic_CN: CN;
  software_development_process_CN: CN;
  experience_V2: V2;
  computer_construction_CN: CN;
  unreliable_AP: AP;
  execute_V: V;
  alpha_N: N;
  interested_AP: AP;
  focus_V2: V2;
  dot_V2: V2;
  experiment_V2: V2;
  modifier_N: N;
  cartridge_N: N;
  presentation_N: N;
  problem_solving_CN: CN;
  clock_N : N;
}
