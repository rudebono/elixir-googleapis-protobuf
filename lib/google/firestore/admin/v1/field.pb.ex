defmodule Google.Firestore.Admin.V1.Field.TtlConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :NEEDS_REPAIR, 3
end

defmodule Google.Firestore.Admin.V1.Field.IndexConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :indexes, 1, repeated: true, type: Google.Firestore.Admin.V1.Index
  field :uses_ancestor_config, 2, type: :bool, json_name: "usesAncestorConfig"
  field :ancestor_field, 3, type: :string, json_name: "ancestorField"
  field :reverting, 4, type: :bool
end

defmodule Google.Firestore.Admin.V1.Field.TtlConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1,
    type: Google.Firestore.Admin.V1.Field.TtlConfig.State,
    enum: true,
    deprecated: false
end

defmodule Google.Firestore.Admin.V1.Field do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :index_config, 2,
    type: Google.Firestore.Admin.V1.Field.IndexConfig,
    json_name: "indexConfig"

  field :ttl_config, 3, type: Google.Firestore.Admin.V1.Field.TtlConfig, json_name: "ttlConfig"
end