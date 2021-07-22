defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.ExplanationBaseline.PredictionFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PREDICTION_FORMAT_UNSPECIFIED | :JSONL | :BIGQUERY

  field :PREDICTION_FORMAT_UNSPECIFIED, 0

  field :JSONL, 2

  field :BIGQUERY, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingDataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_source: {atom, any},
          data_format: String.t(),
          target_field: String.t(),
          logging_sampling_strategy: Google.Cloud.Aiplatform.V1beta1.SamplingStrategy.t() | nil
        }

  defstruct [:data_source, :data_format, :target_field, :logging_sampling_strategy]

  oneof :data_source, 0
  field :dataset, 3, type: :string, oneof: 0
  field :gcs_source, 4, type: Google.Cloud.Aiplatform.V1beta1.GcsSource, oneof: 0
  field :bigquery_source, 5, type: Google.Cloud.Aiplatform.V1beta1.BigQuerySource, oneof: 0
  field :data_format, 2, type: :string
  field :target_field, 6, type: :string
  field :logging_sampling_strategy, 7, type: Google.Cloud.Aiplatform.V1beta1.SamplingStrategy
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig.SkewThresholdsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig.AttributionScoreSkewThresholdsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          skew_thresholds: %{
            String.t() => Google.Cloud.Aiplatform.V1beta1.ThresholdConfig.t() | nil
          },
          attribution_score_skew_thresholds: %{
            String.t() => Google.Cloud.Aiplatform.V1beta1.ThresholdConfig.t() | nil
          }
        }

  defstruct [:skew_thresholds, :attribution_score_skew_thresholds]

  field :skew_thresholds, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig.SkewThresholdsEntry,
    map: true

  field :attribution_score_skew_thresholds, 2,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig.AttributionScoreSkewThresholdsEntry,
    map: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig.DriftThresholdsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig.AttributionScoreDriftThresholdsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.ThresholdConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          drift_thresholds: %{
            String.t() => Google.Cloud.Aiplatform.V1beta1.ThresholdConfig.t() | nil
          },
          attribution_score_drift_thresholds: %{
            String.t() => Google.Cloud.Aiplatform.V1beta1.ThresholdConfig.t() | nil
          }
        }

  defstruct [:drift_thresholds, :attribution_score_drift_thresholds]

  field :drift_thresholds, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig.DriftThresholdsEntry,
    map: true

  field :attribution_score_drift_thresholds, 2,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig.AttributionScoreDriftThresholdsEntry,
    map: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.ExplanationBaseline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any},
          prediction_format:
            Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.ExplanationBaseline.PredictionFormat.t()
        }

  defstruct [:destination, :prediction_format]

  oneof :destination, 0
  field :gcs, 2, type: Google.Cloud.Aiplatform.V1beta1.GcsDestination, oneof: 0
  field :bigquery, 3, type: Google.Cloud.Aiplatform.V1beta1.BigQueryDestination, oneof: 0

  field :prediction_format, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.ExplanationBaseline.PredictionFormat,
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_feature_attributes: boolean,
          explanation_baseline:
            Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.ExplanationBaseline.t()
            | nil
        }

  defstruct [:enable_feature_attributes, :explanation_baseline]

  field :enable_feature_attributes, 1, type: :bool

  field :explanation_baseline, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.ExplanationBaseline
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_dataset:
            Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingDataset.t()
            | nil,
          training_prediction_skew_detection_config:
            Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig.t()
            | nil,
          prediction_drift_detection_config:
            Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig.t()
            | nil,
          explanation_config:
            Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig.t()
            | nil
        }

  defstruct [
    :training_dataset,
    :training_prediction_skew_detection_config,
    :prediction_drift_detection_config,
    :explanation_config
  ]

  field :training_dataset, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingDataset

  field :training_prediction_skew_detection_config, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.TrainingPredictionSkewDetectionConfig

  field :prediction_drift_detection_config, 3,
    type:
      Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.PredictionDriftDetectionConfig

  field :explanation_config, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringObjectiveConfig.ExplanationConfig
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertConfig.EmailAlertConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_emails: [String.t()]
        }

  defstruct [:user_emails]

  field :user_emails, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alert: {atom, any}
        }

  defstruct [:alert]

  oneof :alert, 0

  field :email_alert_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringAlertConfig.EmailAlertConfig,
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ThresholdConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threshold: {atom, any}
        }

  defstruct [:threshold]

  oneof :threshold, 0
  field :value, 1, type: :double, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.SamplingStrategy.RandomSampleConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sample_rate: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:sample_rate]

  field :sample_rate, 1, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.SamplingStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          random_sample_config:
            Google.Cloud.Aiplatform.V1beta1.SamplingStrategy.RandomSampleConfig.t() | nil
        }

  defstruct [:random_sample_config]

  field :random_sample_config, 1,
    type: Google.Cloud.Aiplatform.V1beta1.SamplingStrategy.RandomSampleConfig
end
