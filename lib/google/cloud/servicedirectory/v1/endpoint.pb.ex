defmodule Google.Cloud.Servicedirectory.V1.Endpoint.AnnotationsEntry do
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

defmodule Google.Cloud.Servicedirectory.V1.Endpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          address: String.t(),
          port: integer,
          annotations: %{String.t() => String.t()}
        }

  defstruct [:name, :address, :port, :annotations]

  field :name, 1, type: :string
  field :address, 2, type: :string
  field :port, 3, type: :int32

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Servicedirectory.V1.Endpoint.AnnotationsEntry,
    map: true

  def transform_module(), do: nil
end
