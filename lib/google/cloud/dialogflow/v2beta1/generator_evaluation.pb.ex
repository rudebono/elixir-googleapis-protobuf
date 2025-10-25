defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.InputDataSourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INPUT_DATA_SOURCE_TYPE_UNSPECIFIED, 0
  field :AGENT_ASSIST_CONVERSATIONS, 1
  field :INSIGHTS_CONVERSATIONS, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.InputDataConfig.SummaryGenerationOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SUMMARY_GENERATION_OPTION_UNSPECIFIED, 0
  field :ALWAYS_GENERATE, 1
  field :GENERATE_IF_MISSING, 2
  field :DO_NOT_GENERATE, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateGeneratorEvaluationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :generator_evaluation, 2,
    type: Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluation,
    json_name: "generatorEvaluation",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetGeneratorEvaluationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListGeneratorEvaluationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListGeneratorEvaluationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generator_evaluations, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluation,
    json_name: "generatorEvaluations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteGeneratorEvaluationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :metrics, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :generator_evaluation_config, 3,
    type: Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig,
    json_name: "generatorEvaluationConfig",
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :complete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false

  field :initial_generator, 5,
    type: Google.Cloud.Dialogflow.V2beta1.Generator,
    json_name: "initialGenerator",
    deprecated: false

  field :summarization_metrics, 6,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics,
    json_name: "summarizationMetrics",
    oneof: 0,
    deprecated: false

  field :evaluation_status, 10,
    type: Google.Cloud.Dialogflow.V2beta1.EvaluationStatus,
    json_name: "evaluationStatus",
    deprecated: false

  field :satisfies_pzs, 11,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 12,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzi",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.AccuracyDecomposition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :point, 1, type: :string, deprecated: false
  field :accuracy_reasoning, 2, type: :string, json_name: "accuracyReasoning", deprecated: false

  field :is_accurate, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "isAccurate",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.AdherenceDecomposition do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :point, 1, type: :string, deprecated: false
  field :adherence_reasoning, 2, type: :string, json_name: "adherenceReasoning", deprecated: false
  field :is_adherent, 3, type: :bool, json_name: "isAdherent", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.AdherenceRubric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :question, 1, type: :string, deprecated: false
  field :reasoning, 2, type: :string, deprecated: false

  field :is_addressed, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "isAddressed",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.CompletenessRubric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :question, 1, type: :string, deprecated: false

  field :is_addressed, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "isAddressed",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.Decomposition do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :decomposition, 0

  field :accuracy_decomposition, 1,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.AccuracyDecomposition,
    json_name: "accuracyDecomposition",
    oneof: 0

  field :adherence_decomposition, 2,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.AdherenceDecomposition,
    json_name: "adherenceDecomposition",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.EvaluationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :result, 0

  field :accuracy_decomposition, 1,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.AccuracyDecomposition,
    json_name: "accuracyDecomposition",
    oneof: 0

  field :adherence_rubric, 2,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.AdherenceRubric,
    json_name: "adherenceRubric",
    oneof: 0

  field :completeness_rubric, 3,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.CompletenessRubric,
    json_name: "completenessRubric",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.SummarizationEvaluationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :session_id, 1, type: :string, json_name: "sessionId", deprecated: true
  field :metric, 2, type: :string, deprecated: false
  field :section, 3, type: :string, deprecated: false
  field :score, 4, type: :float, deprecated: false
  field :section_summary, 6, type: :string, json_name: "sectionSummary", deprecated: false

  field :decompositions, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.Decomposition,
    deprecated: true

  field :evaluation_results, 8,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.EvaluationResult,
    json_name: "evaluationResults",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.OverallScoresByMetric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metric, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.SectionToken do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :section, 1, type: :string, deprecated: false

  field :token_count, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "tokenCount",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.ConversationDetail.MetricDetail.SectionDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :section, 1, type: :string, deprecated: false
  field :score, 2, proto3_optional: true, type: :float, deprecated: false
  field :section_summary, 4, type: :string, json_name: "sectionSummary", deprecated: false

  field :evaluation_results, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.EvaluationResult,
    json_name: "evaluationResults",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.ConversationDetail.MetricDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metric, 1, type: :string, deprecated: false
  field :score, 2, proto3_optional: true, type: :float, deprecated: false

  field :section_details, 4,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.ConversationDetail.MetricDetail.SectionDetail,
    json_name: "sectionDetails",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.ConversationDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message_entries, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.MessageEntry,
    json_name: "messageEntries",
    deprecated: false

  field :summary_sections, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarySuggestion.SummarySection,
    json_name: "summarySections",
    deprecated: false

  field :metric_details, 2,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.ConversationDetail.MetricDetail,
    json_name: "metricDetails",
    deprecated: false

  field :section_tokens, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.SectionToken,
    json_name: "sectionTokens",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :summarization_evaluation_results, 4,
    repeated: true,
    type:
      Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.SummarizationEvaluationResult,
    json_name: "summarizationEvaluationResults",
    deprecated: false

  field :summarization_evaluation_merged_results_uri, 5,
    type: :string,
    json_name: "summarizationEvaluationMergedResultsUri",
    deprecated: false

  field :overall_metrics, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.OverallScoresByMetric,
    json_name: "overallMetrics",
    deprecated: false

  field :overall_section_tokens, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.SectionToken,
    json_name: "overallSectionTokens",
    deprecated: false

  field :conversation_details, 8,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SummarizationEvaluationMetrics.ConversationDetail,
    json_name: "conversationDetails",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.AgentAssistInputDataConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.DatasetInputDataConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.InputDataConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source_specific_config, 0

  field :input_data_source_type, 1,
    type: Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.InputDataSourceType,
    json_name: "inputDataSourceType",
    enum: true,
    deprecated: true

  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: true
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: true
  field :sample_size, 4, type: :int32, json_name: "sampleSize", deprecated: false

  field :is_summary_generation_allowed, 5,
    type: :bool,
    json_name: "isSummaryGenerationAllowed",
    deprecated: true

  field :summary_generation_option, 8,
    type:
      Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.InputDataConfig.SummaryGenerationOption,
    json_name: "summaryGenerationOption",
    enum: true,
    deprecated: false

  field :agent_assist_input_data_config, 6,
    type: Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.AgentAssistInputDataConfig,
    json_name: "agentAssistInputDataConfig",
    oneof: 0

  field :dataset_input_data_config, 7,
    type: Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.DatasetInputDataConfig,
    json_name: "datasetInputDataConfig",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.SummarizationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_accuracy_evaluation, 1,
    type: :bool,
    json_name: "enableAccuracyEvaluation",
    deprecated: true

  field :accuracy_evaluation_version, 2,
    type: :string,
    json_name: "accuracyEvaluationVersion",
    deprecated: true

  field :enable_completeness_evaluation, 3,
    type: :bool,
    json_name: "enableCompletenessEvaluation",
    deprecated: true

  field :completeness_evaluation_version, 4,
    type: :string,
    json_name: "completenessEvaluationVersion",
    deprecated: true

  field :evaluator_version, 5,
    proto3_optional: true,
    type: :string,
    json_name: "evaluatorVersion",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :evaluation_feature_config, 0

  field :input_data_config, 1,
    type: Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.InputDataConfig,
    json_name: "inputDataConfig",
    deprecated: false

  field :output_gcs_bucket_path, 2,
    type: :string,
    json_name: "outputGcsBucketPath",
    deprecated: false

  field :summarization_config, 3,
    type: Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluationConfig.SummarizationConfig,
    json_name: "summarizationConfig",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.EvaluationStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :done, 1, proto3_optional: true, type: :bool, deprecated: false

  field :pipeline_status, 2,
    type: Google.Rpc.Status,
    json_name: "pipelineStatus",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluations.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.GeneratorEvaluations",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateGeneratorEvaluation,
      Google.Cloud.Dialogflow.V2beta1.CreateGeneratorEvaluationRequest,
      Google.Longrunning.Operation

  rpc :GetGeneratorEvaluation,
      Google.Cloud.Dialogflow.V2beta1.GetGeneratorEvaluationRequest,
      Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluation

  rpc :ListGeneratorEvaluations,
      Google.Cloud.Dialogflow.V2beta1.ListGeneratorEvaluationsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListGeneratorEvaluationsResponse

  rpc :DeleteGeneratorEvaluation,
      Google.Cloud.Dialogflow.V2beta1.DeleteGeneratorEvaluationRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluations.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.GeneratorEvaluations.Service
end
