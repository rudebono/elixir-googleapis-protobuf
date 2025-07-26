defmodule Google.Firestore.Admin.V1beta1.IndexField.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :ASCENDING, 2
  field :DESCENDING, 3
  field :ARRAY_CONTAINS, 4
end

defmodule Google.Firestore.Admin.V1beta1.Index.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 3
  field :READY, 2
  field :ERROR, 5
end

defmodule Google.Firestore.Admin.V1beta1.IndexField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_path, 1, type: :string, json_name: "fieldPath"
  field :mode, 2, type: Google.Firestore.Admin.V1beta1.IndexField.Mode, enum: true
end

defmodule Google.Firestore.Admin.V1beta1.Index do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :collection_id, 2, type: :string, json_name: "collectionId"
  field :fields, 3, repeated: true, type: Google.Firestore.Admin.V1beta1.IndexField
  field :state, 6, type: Google.Firestore.Admin.V1beta1.Index.State, enum: true
end
