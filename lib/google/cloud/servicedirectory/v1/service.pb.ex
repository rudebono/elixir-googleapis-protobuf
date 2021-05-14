defmodule Google.Cloud.Servicedirectory.V1.Service.AnnotationsEntry do
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

defmodule Google.Cloud.Servicedirectory.V1.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          annotations: %{String.t() => String.t()},
          endpoints: [Google.Cloud.Servicedirectory.V1.Endpoint.t()]
        }

  defstruct [:name, :annotations, :endpoints]

  field :name, 1, type: :string

  field :annotations, 4,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1.Service.AnnotationsEntry,
    map: true

  field :endpoints, 3, repeated: true, type: Google.Cloud.Servicedirectory.V1.Endpoint
end
