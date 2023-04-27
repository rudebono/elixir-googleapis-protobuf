defmodule Google.Cloud.Automl.V1.TextExtractionAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :annotation, 0

  field :text_segment, 3,
    type: Google.Cloud.Automl.V1.TextSegment,
    json_name: "textSegment",
    oneof: 0

  field :score, 1, type: :float
end

defmodule Google.Cloud.Automl.V1.TextExtractionEvaluationMetrics.ConfidenceMetricsEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :confidence_threshold, 1, type: :float, json_name: "confidenceThreshold"
  field :recall, 3, type: :float
  field :precision, 4, type: :float
  field :f1_score, 5, type: :float, json_name: "f1Score"
end

defmodule Google.Cloud.Automl.V1.TextExtractionEvaluationMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :au_prc, 1, type: :float, json_name: "auPrc"

  field :confidence_metrics_entries, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1.TextExtractionEvaluationMetrics.ConfidenceMetricsEntry,
    json_name: "confidenceMetricsEntries"
end