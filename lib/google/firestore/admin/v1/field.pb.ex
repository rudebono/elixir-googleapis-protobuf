defmodule Google.Firestore.Admin.V1.Field.IndexConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          indexes: [Google.Firestore.Admin.V1.Index.t()],
          uses_ancestor_config: boolean,
          ancestor_field: String.t(),
          reverting: boolean
        }

  defstruct [:indexes, :uses_ancestor_config, :ancestor_field, :reverting]

  field :indexes, 1, repeated: true, type: Google.Firestore.Admin.V1.Index
  field :uses_ancestor_config, 2, type: :bool, json_name: "usesAncestorConfig"
  field :ancestor_field, 3, type: :string, json_name: "ancestorField"
  field :reverting, 4, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Firestore.Admin.V1.Field do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          index_config: Google.Firestore.Admin.V1.Field.IndexConfig.t() | nil
        }

  defstruct [:name, :index_config]

  field :name, 1, type: :string

  field :index_config, 2,
    type: Google.Firestore.Admin.V1.Field.IndexConfig,
    json_name: "indexConfig"

  def transform_module(), do: nil
end
