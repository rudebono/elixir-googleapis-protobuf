defmodule Google.Firestore.Admin.V1beta2.Field.IndexConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :indexes, 1, repeated: true, type: Google.Firestore.Admin.V1beta2.Index
  field :uses_ancestor_config, 2, type: :bool, json_name: "usesAncestorConfig"
  field :ancestor_field, 3, type: :string, json_name: "ancestorField"
  field :reverting, 4, type: :bool
end

defmodule Google.Firestore.Admin.V1beta2.Field do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :index_config, 2,
    type: Google.Firestore.Admin.V1beta2.Field.IndexConfig,
    json_name: "indexConfig"
end
