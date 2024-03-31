defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseChoice do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PAIRWISE_CHOICE_UNSPECIFIED, 0
  field :BASELINE, 1
  field :CANDIDATE, 2
  field :TIE, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluateInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  field :location, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluateInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExactMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExactMatchSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExactMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :exact_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ExactMatchMetricValue,
    json_name: "exactMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExactMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BleuInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BleuSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.BleuResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bleu_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.BleuMetricValue,
    json_name: "bleuMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.BleuMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RougeInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RougeSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rouge_type, 1, type: :string, json_name: "rougeType", deprecated: false
  field :use_stemmer, 2, type: :bool, json_name: "useStemmer", deprecated: false
  field :split_summaries, 3, type: :bool, json_name: "splitSummaries", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RougeResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rouge_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.RougeMetricValue,
    json_name: "rougeMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RougeMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CoherenceInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.CoherenceSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Aiplatform.V1beta1.CoherenceInstance, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CoherenceInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CoherenceSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CoherenceResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FluencyInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FluencySpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Aiplatform.V1beta1.FluencyInstance, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FluencyInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FluencySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FluencyResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SafetyInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SafetySpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Aiplatform.V1beta1.SafetyInstance, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SafetyInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SafetySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SafetyResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GroundednessInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :context, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GroundednessSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GroundednessResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FulfillmentInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metric_spec, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FulfillmentSpec,
    json_name: "metricSpec",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Aiplatform.V1beta1.FulfillmentInstance, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FulfillmentInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FulfillmentSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FulfillmentResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationQualityInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationQualitySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationQualityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseSummarizationQualityInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseSummarizationQualityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationHelpfulnessSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationHelpfulnessResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationVerbosityInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationVerbositySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SummarizationVerbosityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualityInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualitySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringQualityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseQuestionAnsweringQualityInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.PairwiseQuestionAnsweringQualityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringRelevanceSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringRelevanceResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringHelpfulnessResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
  field :context, 3, proto3_optional: true, type: :string, deprecated: false
  field :instruction, 4, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_reference, 1, type: :bool, json_name: "useReference", deprecated: false
  field :version, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QuestionAnsweringCorrectnessResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
  field :explanation, 2, type: :string, deprecated: false
  field :confidence, 3, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolCallValidInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolCallValidInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolCallValidResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tool_call_valid_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolCallValidMetricValue,
    json_name: "toolCallValidMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolCallValidMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolNameMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolNameMatchInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolNameMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tool_name_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolNameMatchMetricValue,
    json_name: "toolNameMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolNameMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tool_parameter_key_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchMetricValue,
    json_name: "toolParameterKeyMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKeyMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_strict_string_match, 1,
    type: :bool,
    json_name: "useStrictStringMatch",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :prediction, 1, proto3_optional: true, type: :string, deprecated: false
  field :reference, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tool_parameter_kv_match_metric_values, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchMetricValue,
    json_name: "toolParameterKvMatchMetricValues",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ToolParameterKVMatchMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :score, 1, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.EvaluationService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :EvaluateInstances,
      Google.Cloud.Aiplatform.V1beta1.EvaluateInstancesRequest,
      Google.Cloud.Aiplatform.V1beta1.EvaluateInstancesResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.EvaluationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.EvaluationService.Service
end