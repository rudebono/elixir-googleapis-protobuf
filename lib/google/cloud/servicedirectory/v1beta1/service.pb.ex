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
end

defmodule Google.Cloud.Servicedirectory.V1beta1.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          metadata: %{String.t() => String.t()},
          endpoints: [Google.Cloud.Servicedirectory.V1beta1.Endpoint.t()]
        }

  defstruct [:name, :metadata, :endpoints]

  field :name, 1, type: :string

  field :metadata, 2,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1beta1.Service.MetadataEntry,
    map: true

  field :endpoints, 3, repeated: true, type: Google.Cloud.Servicedirectory.V1beta1.Endpoint
end
