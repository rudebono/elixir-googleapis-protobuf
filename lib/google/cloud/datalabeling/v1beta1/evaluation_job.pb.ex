defmodule Google.Cloud.Datalabeling.V1beta1.EvaluationJob.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :SCHEDULED | :RUNNING | :PAUSED | :STOPPED

  field :STATE_UNSPECIFIED, 0
  field :SCHEDULED, 1
  field :RUNNING, 2
  field :PAUSED, 3
  field :STOPPED, 4
end
defmodule Google.Cloud.Datalabeling.V1beta1.EvaluationJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          state: Google.Cloud.Datalabeling.V1beta1.EvaluationJob.State.t(),
          schedule: String.t(),
          model_version: String.t(),
          evaluation_job_config: Google.Cloud.Datalabeling.V1beta1.EvaluationJobConfig.t() | nil,
          annotation_spec_set: String.t(),
          label_missing_ground_truth: boolean,
          attempts: [Google.Cloud.Datalabeling.V1beta1.Attempt.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            description: "",
            state: :STATE_UNSPECIFIED,
            schedule: "",
            model_version: "",
            evaluation_job_config: nil,
            annotation_spec_set: "",
            label_missing_ground_truth: false,
            attempts: [],
            create_time: nil

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :state, 3, type: Google.Cloud.Datalabeling.V1beta1.EvaluationJob.State, enum: true
  field :schedule, 4, type: :string
  field :model_version, 5, type: :string, json_name: "modelVersion"

  field :evaluation_job_config, 6,
    type: Google.Cloud.Datalabeling.V1beta1.EvaluationJobConfig,
    json_name: "evaluationJobConfig"

  field :annotation_spec_set, 7, type: :string, json_name: "annotationSpecSet"
  field :label_missing_ground_truth, 8, type: :bool, json_name: "labelMissingGroundTruth"
  field :attempts, 9, repeated: true, type: Google.Cloud.Datalabeling.V1beta1.Attempt
  field :create_time, 10, type: Google.Protobuf.Timestamp, json_name: "createTime"
end
defmodule Google.Cloud.Datalabeling.V1beta1.EvaluationJobConfig.BigqueryImportKeysEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Datalabeling.V1beta1.EvaluationJobConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          human_annotation_request_config:
            {:image_classification_config,
             Google.Cloud.Datalabeling.V1beta1.ImageClassificationConfig.t() | nil}
            | {:bounding_poly_config,
               Google.Cloud.Datalabeling.V1beta1.BoundingPolyConfig.t() | nil}
            | {:text_classification_config,
               Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig.t() | nil},
          input_config: Google.Cloud.Datalabeling.V1beta1.InputConfig.t() | nil,
          evaluation_config: Google.Cloud.Datalabeling.V1beta1.EvaluationConfig.t() | nil,
          human_annotation_config:
            Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig.t() | nil,
          bigquery_import_keys: %{String.t() => String.t()},
          example_count: integer,
          example_sample_percentage: float | :infinity | :negative_infinity | :nan,
          evaluation_job_alert_config:
            Google.Cloud.Datalabeling.V1beta1.EvaluationJobAlertConfig.t() | nil
        }

  defstruct human_annotation_request_config: nil,
            input_config: nil,
            evaluation_config: nil,
            human_annotation_config: nil,
            bigquery_import_keys: %{},
            example_count: 0,
            example_sample_percentage: 0.0,
            evaluation_job_alert_config: nil

  oneof :human_annotation_request_config, 0

  field :image_classification_config, 4,
    type: Google.Cloud.Datalabeling.V1beta1.ImageClassificationConfig,
    json_name: "imageClassificationConfig",
    oneof: 0

  field :bounding_poly_config, 5,
    type: Google.Cloud.Datalabeling.V1beta1.BoundingPolyConfig,
    json_name: "boundingPolyConfig",
    oneof: 0

  field :text_classification_config, 8,
    type: Google.Cloud.Datalabeling.V1beta1.TextClassificationConfig,
    json_name: "textClassificationConfig",
    oneof: 0

  field :input_config, 1,
    type: Google.Cloud.Datalabeling.V1beta1.InputConfig,
    json_name: "inputConfig"

  field :evaluation_config, 2,
    type: Google.Cloud.Datalabeling.V1beta1.EvaluationConfig,
    json_name: "evaluationConfig"

  field :human_annotation_config, 3,
    type: Google.Cloud.Datalabeling.V1beta1.HumanAnnotationConfig,
    json_name: "humanAnnotationConfig"

  field :bigquery_import_keys, 9,
    repeated: true,
    type: Google.Cloud.Datalabeling.V1beta1.EvaluationJobConfig.BigqueryImportKeysEntry,
    json_name: "bigqueryImportKeys",
    map: true

  field :example_count, 10, type: :int32, json_name: "exampleCount"
  field :example_sample_percentage, 11, type: :double, json_name: "exampleSamplePercentage"

  field :evaluation_job_alert_config, 13,
    type: Google.Cloud.Datalabeling.V1beta1.EvaluationJobAlertConfig,
    json_name: "evaluationJobAlertConfig"
end
defmodule Google.Cloud.Datalabeling.V1beta1.EvaluationJobAlertConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          email: String.t(),
          min_acceptable_mean_average_precision: float | :infinity | :negative_infinity | :nan
        }

  defstruct email: "",
            min_acceptable_mean_average_precision: 0.0

  field :email, 1, type: :string

  field :min_acceptable_mean_average_precision, 2,
    type: :double,
    json_name: "minAcceptableMeanAveragePrecision"
end
defmodule Google.Cloud.Datalabeling.V1beta1.Attempt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attempt_time: Google.Protobuf.Timestamp.t() | nil,
          partial_failures: [Google.Rpc.Status.t()]
        }

  defstruct attempt_time: nil,
            partial_failures: []

  field :attempt_time, 1, type: Google.Protobuf.Timestamp, json_name: "attemptTime"

  field :partial_failures, 2,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialFailures"
end
