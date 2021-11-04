defmodule Google.Cloud.Aiplatform.V1beta1.TimeSeriesData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorboard_time_series_id: String.t(),
          value_type: Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries.ValueType.t(),
          values: [Google.Cloud.Aiplatform.V1beta1.TimeSeriesDataPoint.t()]
        }

  defstruct [:tensorboard_time_series_id, :value_type, :values]

  field :tensorboard_time_series_id, 1, type: :string, json_name: "tensorboardTimeSeriesId"

  field :value_type, 2,
    type: Google.Cloud.Aiplatform.V1beta1.TensorboardTimeSeries.ValueType,
    enum: true,
    json_name: "valueType"

  field :values, 3, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.TimeSeriesDataPoint

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.TimeSeriesDataPoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:scalar, Google.Cloud.Aiplatform.V1beta1.Scalar.t() | nil}
            | {:tensor, Google.Cloud.Aiplatform.V1beta1.TensorboardTensor.t() | nil}
            | {:blobs, Google.Cloud.Aiplatform.V1beta1.TensorboardBlobSequence.t() | nil},
          wall_time: Google.Protobuf.Timestamp.t() | nil,
          step: integer
        }

  defstruct [:value, :wall_time, :step]

  oneof :value, 0

  field :scalar, 3, type: Google.Cloud.Aiplatform.V1beta1.Scalar, oneof: 0
  field :tensor, 4, type: Google.Cloud.Aiplatform.V1beta1.TensorboardTensor, oneof: 0
  field :blobs, 5, type: Google.Cloud.Aiplatform.V1beta1.TensorboardBlobSequence, oneof: 0
  field :wall_time, 1, type: Google.Protobuf.Timestamp, json_name: "wallTime"
  field :step, 2, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.Scalar do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:value]

  field :value, 1, type: :double

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.TensorboardTensor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: binary,
          version_number: integer
        }

  defstruct [:value, :version_number]

  field :value, 1, type: :bytes
  field :version_number, 2, type: :int32, json_name: "versionNumber"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.TensorboardBlobSequence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [Google.Cloud.Aiplatform.V1beta1.TensorboardBlob.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.TensorboardBlob

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.TensorboardBlob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          data: binary
        }

  defstruct [:id, :data]

  field :id, 1, type: :string
  field :data, 2, type: :bytes

  def transform_module(), do: nil
end
