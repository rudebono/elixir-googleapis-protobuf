defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseChoice do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :PAIRWISE_CHOICE_UNSPECIFIED, 0
  field :BASELINE, 1
  field :CANDIDATE, 2
  field :TIE, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.Metric.AggregationMetric do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :AGGREGATION_METRIC_UNSPECIFIED, 0
  field :AVERAGE, 1
  field :MODE, 2
  field :STANDARD_DEVIATION, 3
  field :VARIANCE, 4
  field :MINIMUM, 5
  field :MAXIMUM, 6
  field :MEDIAN, 7
  field :PERCENTILE_P90, 8
  field :PERCENTILE_P95, 9
  field :PERCENTILE_P99, 10
end

defmodule Google.Cloud.Aiplatform.V1beta1.CometSpec.CometVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :COMET_VERSION_UNSPECIFIED, 0
  field :COMET_22_SRC_REF, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.MetricxSpec.MetricxVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :METRICX_VERSION_UNSPECIFIED, 0
  field :METRICX_24_REF, 1
  field :METRICX_24_SRC, 2
  field :METRICX_24_SRC_REF, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluateDatasetOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluateDatasetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :output_info, 3,
    type: Google.Cloud.Aiplatform.V1beta1.OutputInfo,
    json_name: "outputInfo",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.OutputInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :output_location, 0

  field :gcs_output_directory, 1,
    type: :string,
    json_name: "gcsOutputDirectory",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluateDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
  field :dataset, 2, type: Google.Cloud.Aiplatform.V1beta1.EvaluationDataset, deprecated: false

  field :metrics, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Metric,
    deprecated: false

  field :output_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :autorater_config, 5,
    type: Google.Cloud.Aiplatform.V1beta1.AutoraterConfig,
    json_name: "autoraterConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.OutputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.Metric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :metric_spec, 0

  field :pointwise_metric_spec, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PointwiseMetricSpec,
    json_name: "pointwiseMetricSpec",
    oneof: 0

  field :pairwise_metric_spec, 3,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseMetricSpec,
    json_name: "pairwiseMetricSpec",
    oneof: 0

  field :exact_match_spec, 4,
    type: Google.Cloud.Aiplatform.V1beta1.ExactMatchSpec,
    json_name: "exactMatchSpec",
    oneof: 0

  field :bleu_spec, 5,
    type: Google.Cloud.Aiplatform.V1beta1.BleuSpec,
    json_name: "bleuSpec",
    oneof: 0

  field :rouge_spec, 6,
    type: Google.Cloud.Aiplatform.V1beta1.RougeSpec,
    json_name: "rougeSpec",
    oneof: 0

  field :aggregation_metrics, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Metric.AggregationMetric,
    json_name: "aggregationMetrics",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluationDataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 2,
    type: Google.Cloud.Aiplatform.V1beta1.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.AutoraterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :sampling_count, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "samplingCount",
    deprecated: false

  field :flip_enabled, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "flipEnabled",
    deprecated: false

  field :autorater_model, 3, type: :string, json_name: "autoraterModel", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluateInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :metric_inputs, 0

  field :exact_match_input, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExactMatchInput,
    json_name: "exactMatchInput",
    oneof: 0

  field :bleu_input, 3,
    type: Google.Cloud.Aiplatform.V1beta1.BleuInput,
    json_name: "bleuInput",
    oneof: 0

  field :rouge_input, 4,
    type: Google.Cloud.Aiplatform.V1beta1.RougeInput,
    json_name: "rougeInput",
    oneof: 0

  field :fluency_input, 5,
    type: Google.Cloud.Aiplatform.V1beta1.FluencyInput,
    json_name: "fluencyInput",
    oneof: 0

  field :coherence_input, 6,
    type: Google.Cloud.Aiplatform.V1beta1.CoherenceInput,
    json_name: "coherenceInput",
    oneof: 0

  field :safety_input, 8,
    type: Google.Cloud.Aiplatform.V1beta1.SafetyInput,
    json_name: "safetyInput",
    oneof: 0

  field :groundedness_input, 9,
    type: Google.Cloud.Aiplatform.V1beta1.GroundednessInput,
    json_name: "groundednessInput",
    oneof: 0

  field :fulfillment_input, 12,
    type: Google.Cloud.Aiplatform.V1beta1.FulfillmentInput,
    json_name: "fulfillmentInput",
    oneof: 0

  field :summarization_quality_input, 7,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationQualityInput,
    json_name: "summarizationQualityInput",
    oneof: 0

  field :pairwise_summarization_quality_input, 23,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseSummarizationQualityInput,
    json_name: "pairwiseSummarizationQualityInput",
    oneof: 0

  field :summarization_helpfulness_input, 14,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationHelpfulnessInput,
    json_name: "summarizationHelpfulnessInput",
    oneof: 0

  field :summarization_verbosity_input, 15,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationVerbosityInput,
    json_name: "summarizationVerbosityInput",
    oneof: 0

  field :question_answering_quality_input, 10,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualityInput,
    json_name: "questionAnsweringQualityInput",
    oneof: 0

  field :pairwise_question_answering_quality_input, 24,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseQuestionAnsweringQualityInput,
    json_name: "pairwiseQuestionAnsweringQualityInput",
    oneof: 0

  field :question_answering_relevance_input, 16,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringRelevanceInput,
    json_name: "questionAnsweringRelevanceInput",
    oneof: 0

  field :question_answering_helpfulness_input, 17,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessInput,
    json_name: "questionAnsweringHelpfulnessInput",
    oneof: 0

  field :question_answering_correctness_input, 18,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessInput,
    json_name: "questionAnsweringCorrectnessInput",
    oneof: 0

  field :pointwise_metric_input, 28,
    type: Google.Cloud.Aiplatform.V1beta1.PointwiseMetricInput,
    json_name: "pointwiseMetricInput",
    oneof: 0

  field :pairwise_metric_input, 29,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseMetricInput,
    json_name: "pairwiseMetricInput",
    oneof: 0

  field :tool_call_valid_input, 19,
    type: Google.Cloud.Aiplatform.V1beta1.ToolCallValidInput,
    json_name: "toolCallValidInput",
    oneof: 0

  field :tool_name_match_input, 20,
    type: Google.Cloud.Aiplatform.V1beta1.ToolNameMatchInput,
    json_name: "toolNameMatchInput",
    oneof: 0

  field :tool_parameter_key_match_input, 21,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchInput,
    json_name: "toolParameterKeyMatchInput",
    oneof: 0

  field :tool_parameter_kv_match_input, 22,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchInput,
    json_name: "toolParameterKvMatchInput",
    oneof: 0

  field :comet_input, 31,
    type: Google.Cloud.Aiplatform.V1beta1.CometInput,
    json_name: "cometInput",
    oneof: 0

  field :metricx_input, 32,
    type: Google.Cloud.Aiplatform.V1beta1.MetricxInput,
    json_name: "metricxInput",
    oneof: 0

  field :trajectory_exact_match_input, 33,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryExactMatchInput,
    json_name: "trajectoryExactMatchInput",
    oneof: 0

  field :trajectory_in_order_match_input, 34,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryInOrderMatchInput,
    json_name: "trajectoryInOrderMatchInput",
    oneof: 0

  field :trajectory_any_order_match_input, 35,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryAnyOrderMatchInput,
    json_name: "trajectoryAnyOrderMatchInput",
    oneof: 0

  field :trajectory_precision_input, 37,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryPrecisionInput,
    json_name: "trajectoryPrecisionInput",
    oneof: 0

  field :trajectory_recall_input, 38,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryRecallInput,
    json_name: "trajectoryRecallInput",
    oneof: 0

  field :trajectory_single_tool_use_input, 39,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectorySingleToolUseInput,
    json_name: "trajectorySingleToolUseInput",
    oneof: 0

  field :location, 1, type: :string, deprecated: false

  field :autorater_config, 30,
    type: Google.Cloud.Aiplatform.V1beta1.AutoraterConfig,
    json_name: "autoraterConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluateInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :evaluation_results, 0

  field :exact_match_results, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ExactMatchResults,
    json_name: "exactMatchResults",
    oneof: 0

  field :bleu_results, 2,
    type: Google.Cloud.Aiplatform.V1beta1.BleuResults,
    json_name: "bleuResults",
    oneof: 0

  field :rouge_results, 3,
    type: Google.Cloud.Aiplatform.V1beta1.RougeResults,
    json_name: "rougeResults",
    oneof: 0

  field :fluency_result, 4,
    type: Google.Cloud.Aiplatform.V1beta1.FluencyResult,
    json_name: "fluencyResult",
    oneof: 0

  field :coherence_result, 5,
    type: Google.Cloud.Aiplatform.V1beta1.CoherenceResult,
    json_name: "coherenceResult",
    oneof: 0

  field :safety_result, 7,
    type: Google.Cloud.Aiplatform.V1beta1.SafetyResult,
    json_name: "safetyResult",
    oneof: 0

  field :groundedness_result, 8,
    type: Google.Cloud.Aiplatform.V1beta1.GroundednessResult,
    json_name: "groundednessResult",
    oneof: 0

  field :fulfillment_result, 11,
    type: Google.Cloud.Aiplatform.V1beta1.FulfillmentResult,
    json_name: "fulfillmentResult",
    oneof: 0

  field :summarization_quality_result, 6,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationQualityResult,
    json_name: "summarizationQualityResult",
    oneof: 0

  field :pairwise_summarization_quality_result, 22,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseSummarizationQualityResult,
    json_name: "pairwiseSummarizationQualityResult",
    oneof: 0

  field :summarization_helpfulness_result, 13,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationHelpfulnessResult,
    json_name: "summarizationHelpfulnessResult",
    oneof: 0

  field :summarization_verbosity_result, 14,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationVerbosityResult,
    json_name: "summarizationVerbosityResult",
    oneof: 0

  field :question_answering_quality_result, 9,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualityResult,
    json_name: "questionAnsweringQualityResult",
    oneof: 0

  field :pairwise_question_answering_quality_result, 23,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseQuestionAnsweringQualityResult,
    json_name: "pairwiseQuestionAnsweringQualityResult",
    oneof: 0

  field :question_answering_relevance_result, 15,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringRelevanceResult,
    json_name: "questionAnsweringRelevanceResult",
    oneof: 0

  field :question_answering_helpfulness_result, 16,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessResult,
    json_name: "questionAnsweringHelpfulnessResult",
    oneof: 0

  field :question_answering_correctness_result, 17,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessResult,
    json_name: "questionAnsweringCorrectnessResult",
    oneof: 0

  field :pointwise_metric_result, 27,
    type: Google.Cloud.Aiplatform.V1beta1.PointwiseMetricResult,
    json_name: "pointwiseMetricResult",
    oneof: 0

  field :pairwise_metric_result, 28,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseMetricResult,
    json_name: "pairwiseMetricResult",
    oneof: 0

  field :tool_call_valid_results, 18,
    type: Google.Cloud.Aiplatform.V1beta1.ToolCallValidResults,
    json_name: "toolCallValidResults",
    oneof: 0

  field :tool_name_match_results, 19,
    type: Google.Cloud.Aiplatform.V1beta1.ToolNameMatchResults,
    json_name: "toolNameMatchResults",
    oneof: 0

  field :tool_parameter_key_match_results, 20,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchResults,
    json_name: "toolParameterKeyMatchResults",
    oneof: 0

  field :tool_parameter_kv_match_results, 21,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchResults,
    json_name: "toolParameterKvMatchResults",
    oneof: 0

  field :comet_result, 29,
    type: Google.Cloud.Aiplatform.V1beta1.CometResult,
    json_name: "cometResult",
    oneof: 0

  field :metricx_result, 30,
    type: Google.Cloud.Aiplatform.V1beta1.MetricxResult,
    json_name: "metricxResult",
    oneof: 0

  field :trajectory_exact_match_results, 31,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryExactMatchResults,
    json_name: "trajectoryExactMatchResults",
    oneof: 0

  field :trajectory_in_order_match_results, 32,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryInOrderMatchResults,
    json_name: "trajectoryInOrderMatchResults",
    oneof: 0

  field :trajectory_any_order_match_results, 33,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryAnyOrderMatchResults,
    json_name: "trajectoryAnyOrderMatchResults",
    oneof: 0

  field :trajectory_precision_results, 35,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryPrecisionResults,
    json_name: "trajectoryPrecisionResults",
    oneof: 0

  field :trajectory_recall_results, 36,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryRecallResults,
    json_name: "trajectoryRecallResults",
    oneof: 0

  field :trajectory_single_tool_use_results, 37,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectorySingleToolUseResults,
    json_name: "trajectorySingleToolUseResults",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExactMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ExactMatchSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ExactMatchInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExactMatchInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExactMatchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExactMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :exact_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ExactMatchMetricValue,
    json_name: "exactMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExactMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BleuInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.BleuSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.BleuInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BleuInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BleuSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_effective_order, 1, type: :bool, json_name: "useEffectiveOrder", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BleuResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :bleu_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.BleuMetricValue,
    json_name: "bleuMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BleuMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RougeInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.RougeSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.RougeInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RougeInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RougeSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rouge_type, 1, type: :string, json_name: "rougeType", deprecated: false
  field :use_stemmer, 2, type: :bool, json_name: "useStemmer", deprecated: false
  field :split_summaries, 3, type: :bool, json_name: "splitSummaries", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RougeResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rouge_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.RougeMetricValue,
    json_name: "rougeMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RougeMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CoherenceInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.CoherenceSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Aiplatform.V1beta1.CoherenceInstance, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CoherenceInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CoherenceSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CoherenceResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FluencyInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FluencySpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Aiplatform.V1beta1.FluencyInstance, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FluencyInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FluencySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FluencyResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SafetyInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SafetySpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Aiplatform.V1beta1.SafetyInstance, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SafetyInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SafetySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SafetyResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GroundednessInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GroundednessSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.GroundednessInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GroundednessInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :context, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GroundednessSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GroundednessResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FulfillmentInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FulfillmentSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Aiplatform.V1beta1.FulfillmentInstance, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FulfillmentInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FulfillmentSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FulfillmentResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationQualityInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationQualitySpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationQualityInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationQualityInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationQualitySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationQualityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseSummarizationQualityInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseSummarizationQualitySpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseSummarizationQualityInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseSummarizationQualityInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false

  field :baseline_prediction, 2,
    proto3_optional: true,
    type: :string,
    json_name: "baselinePrediction",
    deprecated: false

  field :reference, 3, proto3_optional: true, type: :string, deprecated: false
  field :context, 4, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 5, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseSummarizationQualitySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseSummarizationQualityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pairwise_choice, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseChoice,
    json_name: "pairwiseChoice",
    enum: true,
    deprecated: false

  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationHelpfulnessInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationHelpfulnessSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationHelpfulnessInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationHelpfulnessInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationHelpfulnessSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationHelpfulnessResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationVerbosityInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationVerbositySpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.SummarizationVerbosityInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationVerbosityInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationVerbositySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationVerbosityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualityInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualitySpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualityInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualityInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualitySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseQuestionAnsweringQualityInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseQuestionAnsweringQualitySpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseQuestionAnsweringQualityInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseQuestionAnsweringQualityInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false

  field :baseline_prediction, 2,
    proto3_optional: true,
    type: :string,
    json_name: "baselinePrediction",
    deprecated: false

  field :reference, 3, proto3_optional: true, type: :string, deprecated: false
  field :context, 4, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 5, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseQuestionAnsweringQualitySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseQuestionAnsweringQualityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pairwise_choice, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseChoice,
    json_name: "pairwiseChoice",
    enum: true,
    deprecated: false

  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringRelevanceInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringRelevanceSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringRelevanceInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringRelevanceInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringRelevanceSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringRelevanceResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PointwiseMetricInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PointwiseMetricSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PointwiseMetricInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PointwiseMetricInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :instance, 0

  field :json_instance, 1, type: :string, json_name: "jsonInstance", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.PointwiseMetricSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_prompt_template, 1,
    proto3_optional: true,
    type: :string,
    json_name: "metricPromptTemplate",
    deprecated: false

  field :system_instruction, 2,
    proto3_optional: true,
    type: :string,
    json_name: "systemInstruction",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PointwiseMetricResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseMetricInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseMetricSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseMetricInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseMetricInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :instance, 0

  field :json_instance, 1, type: :string, json_name: "jsonInstance", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseMetricSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_prompt_template, 1,
    proto3_optional: true,
    type: :string,
    json_name: "metricPromptTemplate",
    deprecated: false

  field :candidate_response_field_name, 2,
    type: :string,
    json_name: "candidateResponseFieldName",
    deprecated: false

  field :baseline_response_field_name, 3,
    type: :string,
    json_name: "baselineResponseFieldName",
    deprecated: false

  field :system_instruction, 4,
    proto3_optional: true,
    type: :string,
    json_name: "systemInstruction",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseMetricResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pairwise_choice, 1,
    type: Google.Cloud.Aiplatform.V1beta1.PairwiseChoice,
    json_name: "pairwiseChoice",
    enum: true,
    deprecated: false

  field :explanation, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolCallValidInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ToolCallValidSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolCallValidInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolCallValidSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolCallValidInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolCallValidResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tool_call_valid_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolCallValidMetricValue,
    json_name: "toolCallValidMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolCallValidMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolNameMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ToolNameMatchSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolNameMatchInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolNameMatchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolNameMatchInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolNameMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tool_name_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolNameMatchMetricValue,
    json_name: "toolNameMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolNameMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tool_parameter_key_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchMetricValue,
    json_name: "toolParameterKeyMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :use_strict_string_match, 1,
    type: :bool,
    json_name: "useStrictStringMatch",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tool_parameter_kv_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchMetricValue,
    json_name: "toolParameterKvMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CometInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.CometSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Aiplatform.V1beta1.CometInstance, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CometSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.CometSpec.CometVersion,
    enum: true,
    deprecated: false

  field :source_language, 2, type: :string, json_name: "sourceLanguage", deprecated: false
  field :target_language, 3, type: :string, json_name: "targetLanguage", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CometInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :source, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CometResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MetricxInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.MetricxSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Aiplatform.V1beta1.MetricxInstance, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MetricxSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.MetricxSpec.MetricxVersion,
    enum: true,
    deprecated: false

  field :source_language, 2, type: :string, json_name: "sourceLanguage", deprecated: false
  field :target_language, 3, type: :string, json_name: "targetLanguage", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MetricxInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :source, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.MetricxResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryExactMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryExactMatchSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryExactMatchInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryExactMatchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryExactMatchInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :predicted_trajectory, 1,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "predictedTrajectory",
    deprecated: false

  field :reference_trajectory, 2,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "referenceTrajectory",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryExactMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :trajectory_exact_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryExactMatchMetricValue,
    json_name: "trajectoryExactMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryExactMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryInOrderMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryInOrderMatchSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryInOrderMatchInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryInOrderMatchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryInOrderMatchInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :predicted_trajectory, 1,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "predictedTrajectory",
    deprecated: false

  field :reference_trajectory, 2,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "referenceTrajectory",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryInOrderMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :trajectory_in_order_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryInOrderMatchMetricValue,
    json_name: "trajectoryInOrderMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryInOrderMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryAnyOrderMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryAnyOrderMatchSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryAnyOrderMatchInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryAnyOrderMatchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryAnyOrderMatchInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :predicted_trajectory, 1,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "predictedTrajectory",
    deprecated: false

  field :reference_trajectory, 2,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "referenceTrajectory",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryAnyOrderMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :trajectory_any_order_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryAnyOrderMatchMetricValue,
    json_name: "trajectoryAnyOrderMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryAnyOrderMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryPrecisionInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryPrecisionSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryPrecisionInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryPrecisionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryPrecisionInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :predicted_trajectory, 1,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "predictedTrajectory",
    deprecated: false

  field :reference_trajectory, 2,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "referenceTrajectory",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryPrecisionResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :trajectory_precision_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryPrecisionMetricValue,
    json_name: "trajectoryPrecisionMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryPrecisionMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryRecallInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryRecallSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryRecallInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryRecallSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryRecallInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :predicted_trajectory, 1,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "predictedTrajectory",
    deprecated: false

  field :reference_trajectory, 2,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "referenceTrajectory",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryRecallResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :trajectory_recall_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectoryRecallMetricValue,
    json_name: "trajectoryRecallMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectoryRecallMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectorySingleToolUseInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectorySingleToolUseSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instances, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectorySingleToolUseInstance,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectorySingleToolUseSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tool_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "toolName",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectorySingleToolUseInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :predicted_trajectory, 1,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1beta1.Trajectory,
    json_name: "predictedTrajectory",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectorySingleToolUseResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :trajectory_single_tool_use_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrajectorySingleToolUseMetricValue,
    json_name: "trajectorySingleToolUseMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.TrajectorySingleToolUseMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.Trajectory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tool_calls, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolCall,
    json_name: "toolCalls",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tool_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "toolName",
    deprecated: false

  field :tool_input, 2,
    proto3_optional: true,
    type: :string,
    json_name: "toolInput",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.EvaluationService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :EvaluateInstances,
      Google.Cloud.Aiplatform.V1beta1.EvaluateInstancesRequest,
      Google.Cloud.Aiplatform.V1beta1.EvaluateInstancesResponse

  rpc :EvaluateDataset,
      Google.Cloud.Aiplatform.V1beta1.EvaluateDatasetRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.EvaluationService.Service
end
