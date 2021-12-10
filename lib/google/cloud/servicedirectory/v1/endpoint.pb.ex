defmodule Google.Cloud.Servicedirectory.V1.Endpoint.AnnotationsEntry do
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
defmodule Google.Cloud.Servicedirectory.V1.Endpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          address: String.t(),
          port: integer,
          annotations: %{String.t() => String.t()}
        }

  defstruct name: "",
            address: "",
            port: 0,
            annotations: %{}

  field :name, 1, type: :string, deprecated: false
  field :address, 2, type: :string, deprecated: false
  field :port, 3, type: :int32, deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1.Endpoint.AnnotationsEntry,
    map: true,
    deprecated: false
end
