defmodule Google.Firestore.Admin.V1.Index.QueryScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :QUERY_SCOPE_UNSPECIFIED | :COLLECTION | :COLLECTION_GROUP

  field :QUERY_SCOPE_UNSPECIFIED, 0
  field :COLLECTION, 1
  field :COLLECTION_GROUP, 2
end

defmodule Google.Firestore.Admin.V1.Index.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :READY | :NEEDS_REPAIR

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :NEEDS_REPAIR, 3
end

defmodule Google.Firestore.Admin.V1.Index.IndexField.Order do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ORDER_UNSPECIFIED | :ASCENDING | :DESCENDING

  field :ORDER_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end

defmodule Google.Firestore.Admin.V1.Index.IndexField.ArrayConfig do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ARRAY_CONFIG_UNSPECIFIED | :CONTAINS

  field :ARRAY_CONFIG_UNSPECIFIED, 0
  field :CONTAINS, 1
end

defmodule Google.Firestore.Admin.V1.Index.IndexField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value_mode:
            {:order, Google.Firestore.Admin.V1.Index.IndexField.Order.t()}
            | {:array_config, Google.Firestore.Admin.V1.Index.IndexField.ArrayConfig.t()},
          field_path: String.t()
        }

  defstruct [:value_mode, :field_path]

  oneof :value_mode, 0

  field :field_path, 1, type: :string, json_name: "fieldPath"
  field :order, 2, type: Google.Firestore.Admin.V1.Index.IndexField.Order, enum: true, oneof: 0

  field :array_config, 3,
    type: Google.Firestore.Admin.V1.Index.IndexField.ArrayConfig,
    enum: true,
    json_name: "arrayConfig",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Firestore.Admin.V1.Index do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          query_scope: Google.Firestore.Admin.V1.Index.QueryScope.t(),
          fields: [Google.Firestore.Admin.V1.Index.IndexField.t()],
          state: Google.Firestore.Admin.V1.Index.State.t()
        }

  defstruct [:name, :query_scope, :fields, :state]

  field :name, 1, type: :string

  field :query_scope, 2,
    type: Google.Firestore.Admin.V1.Index.QueryScope,
    enum: true,
    json_name: "queryScope"

  field :fields, 3, repeated: true, type: Google.Firestore.Admin.V1.Index.IndexField
  field :state, 4, type: Google.Firestore.Admin.V1.Index.State, enum: true

  def transform_module(), do: nil
end
