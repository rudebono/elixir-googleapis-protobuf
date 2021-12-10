defmodule Google.Firestore.Admin.V1beta2.Field.IndexConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          indexes: [Google.Firestore.Admin.V1beta2.Index.t()],
          uses_ancestor_config: boolean,
          ancestor_field: String.t(),
          reverting: boolean
        }

  defstruct indexes: [],
            uses_ancestor_config: false,
            ancestor_field: "",
            reverting: false

  field :indexes, 1, repeated: true, type: Google.Firestore.Admin.V1beta2.Index
  field :uses_ancestor_config, 2, type: :bool, json_name: "usesAncestorConfig"
  field :ancestor_field, 3, type: :string, json_name: "ancestorField"
  field :reverting, 4, type: :bool
end
defmodule Google.Firestore.Admin.V1beta2.Field do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          index_config: Google.Firestore.Admin.V1beta2.Field.IndexConfig.t() | nil
        }

  defstruct name: "",
            index_config: nil

  field :name, 1, type: :string

  field :index_config, 2,
    type: Google.Firestore.Admin.V1beta2.Field.IndexConfig,
    json_name: "indexConfig"
end
