defmodule Google.Api.Property.PropertyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :INT64 | :BOOL | :STRING | :DOUBLE

  field :UNSPECIFIED, 0
  field :INT64, 1
  field :BOOL, 2
  field :STRING, 3
  field :DOUBLE, 4
end
defmodule Google.Api.ProjectProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          properties: [Google.Api.Property.t()]
        }

  defstruct properties: []

  field :properties, 1, repeated: true, type: Google.Api.Property
end
defmodule Google.Api.Property do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Api.Property.PropertyType.t(),
          description: String.t()
        }

  defstruct name: "",
            type: :UNSPECIFIED,
            description: ""

  field :name, 1, type: :string
  field :type, 2, type: Google.Api.Property.PropertyType, enum: true
  field :description, 3, type: :string
end
