defmodule Google.Home.Enterprise.Sdm.V1.Device do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string, deprecated: false
  field :traits, 4, type: Google.Protobuf.Struct, deprecated: false

  field :parent_relations, 5,
    repeated: true,
    type: Google.Home.Enterprise.Sdm.V1.ParentRelation,
    json_name: "parentRelations"
end

defmodule Google.Home.Enterprise.Sdm.V1.ParentRelation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
end