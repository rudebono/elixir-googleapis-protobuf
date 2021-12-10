defmodule Google.Cloud.Aiplatform.V1beta1.TrainingPipeline.LabelsEntry do
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
defmodule Google.Cloud.Aiplatform.V1beta1.TrainingPipeline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          input_data_config: Google.Cloud.Aiplatform.V1beta1.InputDataConfig.t() | nil,
          training_task_definition: String.t(),
          training_task_inputs: Google.Protobuf.Value.t() | nil,
          training_task_metadata: Google.Protobuf.Value.t() | nil,
          model_to_upload: Google.Cloud.Aiplatform.V1beta1.Model.t() | nil,
          state: Google.Cloud.Aiplatform.V1beta1.PipelineState.t(),
          error: Google.Rpc.Status.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          encryption_spec: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec.t() | nil
        }

  defstruct name: "",
            display_name: "",
            input_data_config: nil,
            training_task_definition: "",
            training_task_inputs: nil,
            training_task_metadata: nil,
            model_to_upload: nil,
            state: :PIPELINE_STATE_UNSPECIFIED,
            error: nil,
            create_time: nil,
            start_time: nil,
            end_time: nil,
            update_time: nil,
            labels: %{},
            encryption_spec: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :input_data_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.InputDataConfig,
    json_name: "inputDataConfig"

  field :training_task_definition, 4,
    type: :string,
    json_name: "trainingTaskDefinition",
    deprecated: false

  field :training_task_inputs, 5,
    type: Google.Protobuf.Value,
    json_name: "trainingTaskInputs",
    deprecated: false

  field :training_task_metadata, 6,
    type: Google.Protobuf.Value,
    json_name: "trainingTaskMetadata",
    deprecated: false

  field :model_to_upload, 7,
    type: Google.Cloud.Aiplatform.V1beta1.Model,
    json_name: "modelToUpload"

  field :state, 9,
    type: Google.Cloud.Aiplatform.V1beta1.PipelineState,
    enum: true,
    deprecated: false

  field :error, 10, type: Google.Rpc.Status, deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :end_time, 13, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 15,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.TrainingPipeline.LabelsEntry,
    map: true

  field :encryption_spec, 18,
    type: Google.Cloud.Aiplatform.V1beta1.EncryptionSpec,
    json_name: "encryptionSpec"
end
defmodule Google.Cloud.Aiplatform.V1beta1.InputDataConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          split:
            {:fraction_split, Google.Cloud.Aiplatform.V1beta1.FractionSplit.t() | nil}
            | {:filter_split, Google.Cloud.Aiplatform.V1beta1.FilterSplit.t() | nil}
            | {:predefined_split, Google.Cloud.Aiplatform.V1beta1.PredefinedSplit.t() | nil}
            | {:timestamp_split, Google.Cloud.Aiplatform.V1beta1.TimestampSplit.t() | nil}
            | {:stratified_split, Google.Cloud.Aiplatform.V1beta1.StratifiedSplit.t() | nil},
          destination:
            {:gcs_destination, Google.Cloud.Aiplatform.V1beta1.GcsDestination.t() | nil}
            | {:bigquery_destination,
               Google.Cloud.Aiplatform.V1beta1.BigQueryDestination.t() | nil},
          dataset_id: String.t(),
          annotations_filter: String.t(),
          annotation_schema_uri: String.t()
        }

  defstruct split: nil,
            destination: nil,
            dataset_id: "",
            annotations_filter: "",
            annotation_schema_uri: ""

  oneof :split, 0
  oneof :destination, 1

  field :fraction_split, 2,
    type: Google.Cloud.Aiplatform.V1beta1.FractionSplit,
    json_name: "fractionSplit",
    oneof: 0

  field :filter_split, 3,
    type: Google.Cloud.Aiplatform.V1beta1.FilterSplit,
    json_name: "filterSplit",
    oneof: 0

  field :predefined_split, 4,
    type: Google.Cloud.Aiplatform.V1beta1.PredefinedSplit,
    json_name: "predefinedSplit",
    oneof: 0

  field :timestamp_split, 5,
    type: Google.Cloud.Aiplatform.V1beta1.TimestampSplit,
    json_name: "timestampSplit",
    oneof: 0

  field :stratified_split, 12,
    type: Google.Cloud.Aiplatform.V1beta1.StratifiedSplit,
    json_name: "stratifiedSplit",
    oneof: 0

  field :gcs_destination, 8,
    type: Google.Cloud.Aiplatform.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 1

  field :bigquery_destination, 10,
    type: Google.Cloud.Aiplatform.V1beta1.BigQueryDestination,
    json_name: "bigqueryDestination",
    oneof: 1

  field :dataset_id, 1, type: :string, json_name: "datasetId", deprecated: false
  field :annotations_filter, 6, type: :string, json_name: "annotationsFilter"
  field :annotation_schema_uri, 9, type: :string, json_name: "annotationSchemaUri"
end
defmodule Google.Cloud.Aiplatform.V1beta1.FractionSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_fraction: float | :infinity | :negative_infinity | :nan,
          validation_fraction: float | :infinity | :negative_infinity | :nan,
          test_fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct training_fraction: 0.0,
            validation_fraction: 0.0,
            test_fraction: 0.0

  field :training_fraction, 1, type: :double, json_name: "trainingFraction"
  field :validation_fraction, 2, type: :double, json_name: "validationFraction"
  field :test_fraction, 3, type: :double, json_name: "testFraction"
end
defmodule Google.Cloud.Aiplatform.V1beta1.FilterSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_filter: String.t(),
          validation_filter: String.t(),
          test_filter: String.t()
        }

  defstruct training_filter: "",
            validation_filter: "",
            test_filter: ""

  field :training_filter, 1, type: :string, json_name: "trainingFilter", deprecated: false
  field :validation_filter, 2, type: :string, json_name: "validationFilter", deprecated: false
  field :test_filter, 3, type: :string, json_name: "testFilter", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.PredefinedSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t()
        }

  defstruct key: ""

  field :key, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.TimestampSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_fraction: float | :infinity | :negative_infinity | :nan,
          validation_fraction: float | :infinity | :negative_infinity | :nan,
          test_fraction: float | :infinity | :negative_infinity | :nan,
          key: String.t()
        }

  defstruct training_fraction: 0.0,
            validation_fraction: 0.0,
            test_fraction: 0.0,
            key: ""

  field :training_fraction, 1, type: :double, json_name: "trainingFraction"
  field :validation_fraction, 2, type: :double, json_name: "validationFraction"
  field :test_fraction, 3, type: :double, json_name: "testFraction"
  field :key, 4, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.StratifiedSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_fraction: float | :infinity | :negative_infinity | :nan,
          validation_fraction: float | :infinity | :negative_infinity | :nan,
          test_fraction: float | :infinity | :negative_infinity | :nan,
          key: String.t()
        }

  defstruct training_fraction: 0.0,
            validation_fraction: 0.0,
            test_fraction: 0.0,
            key: ""

  field :training_fraction, 1, type: :double, json_name: "trainingFraction"
  field :validation_fraction, 2, type: :double, json_name: "validationFraction"
  field :test_fraction, 3, type: :double, json_name: "testFraction"
  field :key, 4, type: :string, deprecated: false
end
