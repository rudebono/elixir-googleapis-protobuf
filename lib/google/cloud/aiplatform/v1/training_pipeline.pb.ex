defmodule Google.Cloud.Aiplatform.V1.TrainingPipeline.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.TrainingPipeline do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          input_data_config: Google.Cloud.Aiplatform.V1.InputDataConfig.t() | nil,
          training_task_definition: String.t(),
          training_task_inputs: Google.Protobuf.Value.t() | nil,
          training_task_metadata: Google.Protobuf.Value.t() | nil,
          model_to_upload: Google.Cloud.Aiplatform.V1.Model.t() | nil,
          state: Google.Cloud.Aiplatform.V1.PipelineState.t(),
          error: Google.Rpc.Status.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          encryption_spec: Google.Cloud.Aiplatform.V1.EncryptionSpec.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :input_data_config,
    :training_task_definition,
    :training_task_inputs,
    :training_task_metadata,
    :model_to_upload,
    :state,
    :error,
    :create_time,
    :start_time,
    :end_time,
    :update_time,
    :labels,
    :encryption_spec
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :input_data_config, 3, type: Google.Cloud.Aiplatform.V1.InputDataConfig
  field :training_task_definition, 4, type: :string
  field :training_task_inputs, 5, type: Google.Protobuf.Value
  field :training_task_metadata, 6, type: Google.Protobuf.Value
  field :model_to_upload, 7, type: Google.Cloud.Aiplatform.V1.Model
  field :state, 9, type: Google.Cloud.Aiplatform.V1.PipelineState, enum: true
  field :error, 10, type: Google.Rpc.Status
  field :create_time, 11, type: Google.Protobuf.Timestamp
  field :start_time, 12, type: Google.Protobuf.Timestamp
  field :end_time, 13, type: Google.Protobuf.Timestamp
  field :update_time, 14, type: Google.Protobuf.Timestamp

  field :labels, 15,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TrainingPipeline.LabelsEntry,
    map: true

  field :encryption_spec, 18, type: Google.Cloud.Aiplatform.V1.EncryptionSpec
end

defmodule Google.Cloud.Aiplatform.V1.InputDataConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          split: {atom, any},
          destination: {atom, any},
          dataset_id: String.t(),
          annotations_filter: String.t(),
          annotation_schema_uri: String.t()
        }

  defstruct [:split, :destination, :dataset_id, :annotations_filter, :annotation_schema_uri]

  oneof :split, 0
  oneof :destination, 1
  field :fraction_split, 2, type: Google.Cloud.Aiplatform.V1.FractionSplit, oneof: 0
  field :filter_split, 3, type: Google.Cloud.Aiplatform.V1.FilterSplit, oneof: 0
  field :predefined_split, 4, type: Google.Cloud.Aiplatform.V1.PredefinedSplit, oneof: 0
  field :timestamp_split, 5, type: Google.Cloud.Aiplatform.V1.TimestampSplit, oneof: 0
  field :gcs_destination, 8, type: Google.Cloud.Aiplatform.V1.GcsDestination, oneof: 1
  field :bigquery_destination, 10, type: Google.Cloud.Aiplatform.V1.BigQueryDestination, oneof: 1
  field :dataset_id, 1, type: :string
  field :annotations_filter, 6, type: :string
  field :annotation_schema_uri, 9, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.FractionSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_fraction: float | :infinity | :negative_infinity | :nan,
          validation_fraction: float | :infinity | :negative_infinity | :nan,
          test_fraction: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:training_fraction, :validation_fraction, :test_fraction]

  field :training_fraction, 1, type: :double
  field :validation_fraction, 2, type: :double
  field :test_fraction, 3, type: :double
end

defmodule Google.Cloud.Aiplatform.V1.FilterSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_filter: String.t(),
          validation_filter: String.t(),
          test_filter: String.t()
        }

  defstruct [:training_filter, :validation_filter, :test_filter]

  field :training_filter, 1, type: :string
  field :validation_filter, 2, type: :string
  field :test_filter, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.PredefinedSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t()
        }

  defstruct [:key]

  field :key, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.TimestampSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_fraction: float | :infinity | :negative_infinity | :nan,
          validation_fraction: float | :infinity | :negative_infinity | :nan,
          test_fraction: float | :infinity | :negative_infinity | :nan,
          key: String.t()
        }

  defstruct [:training_fraction, :validation_fraction, :test_fraction, :key]

  field :training_fraction, 1, type: :double
  field :validation_fraction, 2, type: :double
  field :test_fraction, 3, type: :double
  field :key, 4, type: :string
end
