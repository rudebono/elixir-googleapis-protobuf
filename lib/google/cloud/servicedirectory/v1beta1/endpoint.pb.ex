defmodule Google.Cloud.Servicedirectory.V1beta1.Endpoint.MetadataEntry do
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

defmodule Google.Cloud.Servicedirectory.V1beta1.Endpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          address: String.t(),
          port: integer,
          metadata: %{String.t() => String.t()}
        }

  defstruct [:name, :address, :port, :metadata]

  field :name, 1, type: :string
  field :address, 2, type: :string
  field :port, 3, type: :int32

  field :metadata, 4,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1beta1.Endpoint.MetadataEntry,
    map: true
end
