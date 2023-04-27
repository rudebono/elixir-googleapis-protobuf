defmodule Google.Firestore.Admin.V1beta2.Index.QueryScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :QUERY_SCOPE_UNSPECIFIED, 0
  field :COLLECTION, 1
  field :COLLECTION_GROUP, 2
end

defmodule Google.Firestore.Admin.V1beta2.Index.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :NEEDS_REPAIR, 3
end

defmodule Google.Firestore.Admin.V1beta2.Index.IndexField.Order do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ORDER_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end

defmodule Google.Firestore.Admin.V1beta2.Index.IndexField.ArrayConfig do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ARRAY_CONFIG_UNSPECIFIED, 0
  field :CONTAINS, 1
end

defmodule Google.Firestore.Admin.V1beta2.Index.IndexField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :value_mode, 0

  field :field_path, 1, type: :string, json_name: "fieldPath"

  field :order, 2,
    type: Google.Firestore.Admin.V1beta2.Index.IndexField.Order,
    enum: true,
    oneof: 0

  field :array_config, 3,
    type: Google.Firestore.Admin.V1beta2.Index.IndexField.ArrayConfig,
    json_name: "arrayConfig",
    enum: true,
    oneof: 0
end

defmodule Google.Firestore.Admin.V1beta2.Index do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :query_scope, 2,
    type: Google.Firestore.Admin.V1beta2.Index.QueryScope,
    json_name: "queryScope",
    enum: true

  field :fields, 3, repeated: true, type: Google.Firestore.Admin.V1beta2.Index.IndexField
  field :state, 4, type: Google.Firestore.Admin.V1beta2.Index.State, enum: true
end