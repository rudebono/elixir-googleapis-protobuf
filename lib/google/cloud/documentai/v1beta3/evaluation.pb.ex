defmodule Google.Cloud.Documentai.V1beta3.Evaluation.MultiConfidenceMetrics.MetricsType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :METRICS_TYPE_UNSPECIFIED, 0
  field :AGGREGATE, 1
end

defmodule Google.Cloud.Documentai.V1beta3.EvaluationReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operation, 1, type: :string
  field :evaluation, 2, type: :string, deprecated: false

  field :aggregate_metrics, 4,
    type: Google.Cloud.Documentai.V1beta3.Evaluation.Metrics,
    json_name: "aggregateMetrics"

  field :aggregate_metrics_exact, 5,
    type: Google.Cloud.Documentai.V1beta3.Evaluation.Metrics,
    json_name: "aggregateMetricsExact"
end

defmodule Google.Cloud.Documentai.V1beta3.Evaluation.Counters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_documents_count, 1, type: :int32, json_name: "inputDocumentsCount"
  field :invalid_documents_count, 2, type: :int32, json_name: "invalidDocumentsCount"
  field :failed_documents_count, 3, type: :int32, json_name: "failedDocumentsCount"
  field :evaluated_documents_count, 4, type: :int32, json_name: "evaluatedDocumentsCount"
end

defmodule Google.Cloud.Documentai.V1beta3.Evaluation.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :precision, 1, type: :float
  field :recall, 2, type: :float
  field :f1_score, 3, type: :float, json_name: "f1Score"
  field :predicted_occurrences_count, 4, type: :int32, json_name: "predictedOccurrencesCount"
  field :ground_truth_occurrences_count, 5, type: :int32, json_name: "groundTruthOccurrencesCount"
  field :predicted_document_count, 10, type: :int32, json_name: "predictedDocumentCount"
  field :ground_truth_document_count, 11, type: :int32, json_name: "groundTruthDocumentCount"
  field :true_positives_count, 6, type: :int32, json_name: "truePositivesCount"
  field :false_positives_count, 7, type: :int32, json_name: "falsePositivesCount"
  field :false_negatives_count, 8, type: :int32, json_name: "falseNegativesCount"
  field :total_documents_count, 9, type: :int32, json_name: "totalDocumentsCount"
end

defmodule Google.Cloud.Documentai.V1beta3.Evaluation.ConfidenceLevelMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :confidence_level, 1, type: :float, json_name: "confidenceLevel"
  field :metrics, 2, type: Google.Cloud.Documentai.V1beta3.Evaluation.Metrics
end

defmodule Google.Cloud.Documentai.V1beta3.Evaluation.MultiConfidenceMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :confidence_level_metrics, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Evaluation.ConfidenceLevelMetrics,
    json_name: "confidenceLevelMetrics"

  field :confidence_level_metrics_exact, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Evaluation.ConfidenceLevelMetrics,
    json_name: "confidenceLevelMetricsExact"

  field :auprc, 2, type: :float
  field :estimated_calibration_error, 3, type: :float, json_name: "estimatedCalibrationError"
  field :auprc_exact, 5, type: :float, json_name: "auprcExact"

  field :estimated_calibration_error_exact, 6,
    type: :float,
    json_name: "estimatedCalibrationErrorExact"

  field :metrics_type, 7,
    type: Google.Cloud.Documentai.V1beta3.Evaluation.MultiConfidenceMetrics.MetricsType,
    json_name: "metricsType",
    enum: true
end

defmodule Google.Cloud.Documentai.V1beta3.Evaluation.EntityMetricsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Documentai.V1beta3.Evaluation.MultiConfidenceMetrics
end

defmodule Google.Cloud.Documentai.V1beta3.Evaluation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :document_counters, 5,
    type: Google.Cloud.Documentai.V1beta3.Evaluation.Counters,
    json_name: "documentCounters"

  field :all_entities_metrics, 3,
    type: Google.Cloud.Documentai.V1beta3.Evaluation.MultiConfidenceMetrics,
    json_name: "allEntitiesMetrics"

  field :entity_metrics, 4,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.Evaluation.EntityMetricsEntry,
    json_name: "entityMetrics",
    map: true

  field :kms_key_name, 6, type: :string, json_name: "kmsKeyName"
  field :kms_key_version_name, 7, type: :string, json_name: "kmsKeyVersionName"
end
