defmodule Google.Datastore.Admin.V1.Index.AncestorMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ANCESTOR_MODE_UNSPECIFIED, 0
  field :NONE, 1
  field :ALL_ANCESTORS, 2
end

defmodule Google.Datastore.Admin.V1.Index.Direction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DIRECTION_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end

defmodule Google.Datastore.Admin.V1.Index.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
  field :ERROR, 4
end

defmodule Google.Datastore.Admin.V1.Index.IndexedProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :direction, 2,
    type: Google.Datastore.Admin.V1.Index.Direction,
    enum: true,
    deprecated: false
end

defmodule Google.Datastore.Admin.V1.Index do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :index_id, 3, type: :string, json_name: "indexId", deprecated: false
  field :kind, 4, type: :string, deprecated: false

  field :ancestor, 5,
    type: Google.Datastore.Admin.V1.Index.AncestorMode,
    enum: true,
    deprecated: false

  field :properties, 6,
    repeated: true,
    type: Google.Datastore.Admin.V1.Index.IndexedProperty,
    deprecated: false

  field :state, 7, type: Google.Datastore.Admin.V1.Index.State, enum: true, deprecated: false
end
