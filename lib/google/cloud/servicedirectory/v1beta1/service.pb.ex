defmodule Google.Cloud.Servicedirectory.V1beta1.Service.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1beta1.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          metadata: %{String.t() => String.t()},
          endpoints: [Google.Cloud.Servicedirectory.V1beta1.Endpoint.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :metadata, :endpoints, :create_time, :update_time]

  field :name, 1, type: :string

  field :metadata, 2,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1beta1.Service.MetadataEntry,
    map: true

  field :endpoints, 3, repeated: true, type: Google.Cloud.Servicedirectory.V1beta1.Endpoint
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 7, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end
