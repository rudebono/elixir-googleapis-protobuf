defmodule Google.Firestore.V1beta1.StructuredQuery.Direction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DIRECTION_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end

defmodule Google.Firestore.V1beta1.StructuredQuery.CompositeFilter.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :AND, 1
end

defmodule Google.Firestore.V1beta1.StructuredQuery.FieldFilter.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :LESS_THAN, 1
  field :LESS_THAN_OR_EQUAL, 2
  field :GREATER_THAN, 3
  field :GREATER_THAN_OR_EQUAL, 4
  field :EQUAL, 5
  field :NOT_EQUAL, 6
  field :ARRAY_CONTAINS, 7
  field :IN, 8
  field :ARRAY_CONTAINS_ANY, 9
  field :NOT_IN, 10
end

defmodule Google.Firestore.V1beta1.StructuredQuery.UnaryFilter.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :IS_NAN, 2
  field :IS_NULL, 3
  field :IS_NOT_NAN, 4
  field :IS_NOT_NULL, 5
end

defmodule Google.Firestore.V1beta1.StructuredQuery.CollectionSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :collection_id, 2, type: :string, json_name: "collectionId"
  field :all_descendants, 3, type: :bool, json_name: "allDescendants"
end

defmodule Google.Firestore.V1beta1.StructuredQuery.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :filter_type, 0

  field :composite_filter, 1,
    type: Google.Firestore.V1beta1.StructuredQuery.CompositeFilter,
    json_name: "compositeFilter",
    oneof: 0

  field :field_filter, 2,
    type: Google.Firestore.V1beta1.StructuredQuery.FieldFilter,
    json_name: "fieldFilter",
    oneof: 0

  field :unary_filter, 3,
    type: Google.Firestore.V1beta1.StructuredQuery.UnaryFilter,
    json_name: "unaryFilter",
    oneof: 0
end

defmodule Google.Firestore.V1beta1.StructuredQuery.CompositeFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :op, 1,
    type: Google.Firestore.V1beta1.StructuredQuery.CompositeFilter.Operator,
    enum: true

  field :filters, 2, repeated: true, type: Google.Firestore.V1beta1.StructuredQuery.Filter
end

defmodule Google.Firestore.V1beta1.StructuredQuery.FieldFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Firestore.V1beta1.StructuredQuery.FieldReference
  field :op, 2, type: Google.Firestore.V1beta1.StructuredQuery.FieldFilter.Operator, enum: true
  field :value, 3, type: Google.Firestore.V1beta1.Value
end

defmodule Google.Firestore.V1beta1.StructuredQuery.UnaryFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operand_type, 0

  field :op, 1, type: Google.Firestore.V1beta1.StructuredQuery.UnaryFilter.Operator, enum: true
  field :field, 2, type: Google.Firestore.V1beta1.StructuredQuery.FieldReference, oneof: 0
end

defmodule Google.Firestore.V1beta1.StructuredQuery.FieldReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field_path, 2, type: :string, json_name: "fieldPath"
end

defmodule Google.Firestore.V1beta1.StructuredQuery.Order do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Firestore.V1beta1.StructuredQuery.FieldReference
  field :direction, 2, type: Google.Firestore.V1beta1.StructuredQuery.Direction, enum: true
end

defmodule Google.Firestore.V1beta1.StructuredQuery.Projection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :fields, 2, repeated: true, type: Google.Firestore.V1beta1.StructuredQuery.FieldReference
end

defmodule Google.Firestore.V1beta1.StructuredQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :select, 1, type: Google.Firestore.V1beta1.StructuredQuery.Projection

  field :from, 2,
    repeated: true,
    type: Google.Firestore.V1beta1.StructuredQuery.CollectionSelector

  field :where, 3, type: Google.Firestore.V1beta1.StructuredQuery.Filter

  field :order_by, 4,
    repeated: true,
    type: Google.Firestore.V1beta1.StructuredQuery.Order,
    json_name: "orderBy"

  field :start_at, 7, type: Google.Firestore.V1beta1.Cursor, json_name: "startAt"
  field :end_at, 8, type: Google.Firestore.V1beta1.Cursor, json_name: "endAt"
  field :offset, 6, type: :int32
  field :limit, 5, type: Google.Protobuf.Int32Value
end

defmodule Google.Firestore.V1beta1.Cursor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Firestore.V1beta1.Value
  field :before, 2, type: :bool
end