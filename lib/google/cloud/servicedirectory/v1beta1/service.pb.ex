defmodule Google.Cloud.Servicedirectory.V1beta1.Service.MetadataEntry do
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

  defstruct name: "",
            metadata: %{},
            endpoints: [],
            create_time: nil,
            update_time: nil

  field :name, 1, type: :string, deprecated: false

  field :metadata, 2,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1beta1.Service.MetadataEntry,
    map: true,
    deprecated: false

  field :endpoints, 3,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1beta1.Endpoint,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
