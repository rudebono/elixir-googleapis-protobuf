defmodule Google.Home.Enterprise.Sdm.V1.Device do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t(),
          traits: Google.Protobuf.Struct.t() | nil,
          parent_relations: [Google.Home.Enterprise.Sdm.V1.ParentRelation.t()]
        }

  defstruct [:name, :type, :traits, :parent_relations]

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :traits, 4, type: Google.Protobuf.Struct
  field :parent_relations, 5, repeated: true, type: Google.Home.Enterprise.Sdm.V1.ParentRelation
end

defmodule Google.Home.Enterprise.Sdm.V1.ParentRelation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          display_name: String.t()
        }

  defstruct [:parent, :display_name]

  field :parent, 1, type: :string
  field :display_name, 2, type: :string
end
