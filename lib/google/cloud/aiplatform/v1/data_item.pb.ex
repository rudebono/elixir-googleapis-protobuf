defmodule Google.Cloud.Aiplatform.V1.DataItem.LabelsEntry do
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

defmodule Google.Cloud.Aiplatform.V1.DataItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          payload: Google.Protobuf.Value.t() | nil,
          etag: String.t()
        }

  defstruct [:name, :create_time, :update_time, :labels, :payload, :etag]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 6, type: Google.Protobuf.Timestamp

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DataItem.LabelsEntry,
    map: true

  field :payload, 4, type: Google.Protobuf.Value
  field :etag, 7, type: :string
end
