defmodule Google.Home.Enterprise.Sdm.V1.Structure do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          traits: Google.Protobuf.Struct.t() | nil
        }

  defstruct name: "",
            traits: nil

  field :name, 1, type: :string, deprecated: false
  field :traits, 2, type: Google.Protobuf.Struct
end
defmodule Google.Home.Enterprise.Sdm.V1.Room do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          traits: Google.Protobuf.Struct.t() | nil
        }

  defstruct name: "",
            traits: nil

  field :name, 1, type: :string, deprecated: false
  field :traits, 2, type: Google.Protobuf.Struct
end
