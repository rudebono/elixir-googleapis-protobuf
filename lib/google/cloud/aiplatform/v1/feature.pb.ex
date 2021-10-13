defmodule Google.Cloud.Aiplatform.V1.Feature.ValueType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :VALUE_TYPE_UNSPECIFIED
          | :BOOL
          | :BOOL_ARRAY
          | :DOUBLE
          | :DOUBLE_ARRAY
          | :INT64
          | :INT64_ARRAY
          | :STRING
          | :STRING_ARRAY
          | :BYTES

  field :VALUE_TYPE_UNSPECIFIED, 0

  field :BOOL, 1

  field :BOOL_ARRAY, 2

  field :DOUBLE, 3

  field :DOUBLE_ARRAY, 4

  field :INT64, 9

  field :INT64_ARRAY, 10

  field :STRING, 11

  field :STRING_ARRAY, 12

  field :BYTES, 13
end

defmodule Google.Cloud.Aiplatform.V1.Feature.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1.Feature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          value_type: Google.Cloud.Aiplatform.V1.Feature.ValueType.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          etag: String.t()
        }

  defstruct [:name, :description, :value_type, :create_time, :update_time, :labels, :etag]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :value_type, 3, type: Google.Cloud.Aiplatform.V1.Feature.ValueType, enum: true
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 5, type: Google.Protobuf.Timestamp

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Feature.LabelsEntry,
    map: true

  field :etag, 7, type: :string
end