defmodule Google.Firestore.V1.StructuredQuery.Direction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DIRECTION_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end

defmodule Google.Firestore.V1.StructuredQuery.CompositeFilter.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :AND, 1
  field :OR, 2
end

defmodule Google.Firestore.V1.StructuredQuery.FieldFilter.Operator do
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

defmodule Google.Firestore.V1.StructuredQuery.UnaryFilter.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :IS_NAN, 2
  field :IS_NULL, 3
  field :IS_NOT_NAN, 4
  field :IS_NOT_NULL, 5
end

defmodule Google.Firestore.V1.StructuredQuery.FindNearest.DistanceMeasure do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DISTANCE_MEASURE_UNSPECIFIED, 0
  field :EUCLIDEAN, 1
  field :COSINE, 2
  field :DOT_PRODUCT, 3
end

defmodule Google.Firestore.V1.StructuredQuery.CollectionSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :collection_id, 2, type: :string, json_name: "collectionId"
  field :all_descendants, 3, type: :bool, json_name: "allDescendants"
end

defmodule Google.Firestore.V1.StructuredQuery.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :filter_type, 0

  field :composite_filter, 1,
    type: Google.Firestore.V1.StructuredQuery.CompositeFilter,
    json_name: "compositeFilter",
    oneof: 0

  field :field_filter, 2,
    type: Google.Firestore.V1.StructuredQuery.FieldFilter,
    json_name: "fieldFilter",
    oneof: 0

  field :unary_filter, 3,
    type: Google.Firestore.V1.StructuredQuery.UnaryFilter,
    json_name: "unaryFilter",
    oneof: 0
end

defmodule Google.Firestore.V1.StructuredQuery.CompositeFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :op, 1, type: Google.Firestore.V1.StructuredQuery.CompositeFilter.Operator, enum: true
  field :filters, 2, repeated: true, type: Google.Firestore.V1.StructuredQuery.Filter
end

defmodule Google.Firestore.V1.StructuredQuery.FieldFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Firestore.V1.StructuredQuery.FieldReference
  field :op, 2, type: Google.Firestore.V1.StructuredQuery.FieldFilter.Operator, enum: true
  field :value, 3, type: Google.Firestore.V1.Value
end

defmodule Google.Firestore.V1.StructuredQuery.UnaryFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operand_type, 0

  field :op, 1, type: Google.Firestore.V1.StructuredQuery.UnaryFilter.Operator, enum: true
  field :field, 2, type: Google.Firestore.V1.StructuredQuery.FieldReference, oneof: 0
end

defmodule Google.Firestore.V1.StructuredQuery.Order do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Firestore.V1.StructuredQuery.FieldReference
  field :direction, 2, type: Google.Firestore.V1.StructuredQuery.Direction, enum: true
end

defmodule Google.Firestore.V1.StructuredQuery.FieldReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field_path, 2, type: :string, json_name: "fieldPath"
end

defmodule Google.Firestore.V1.StructuredQuery.Projection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :fields, 2, repeated: true, type: Google.Firestore.V1.StructuredQuery.FieldReference
end

defmodule Google.Firestore.V1.StructuredQuery.FindNearest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vector_field, 1,
    type: Google.Firestore.V1.StructuredQuery.FieldReference,
    json_name: "vectorField",
    deprecated: false

  field :query_vector, 2,
    type: Google.Firestore.V1.Value,
    json_name: "queryVector",
    deprecated: false

  field :distance_measure, 3,
    type: Google.Firestore.V1.StructuredQuery.FindNearest.DistanceMeasure,
    json_name: "distanceMeasure",
    enum: true,
    deprecated: false

  field :limit, 4, type: Google.Protobuf.Int32Value, deprecated: false
end

defmodule Google.Firestore.V1.StructuredQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :select, 1, type: Google.Firestore.V1.StructuredQuery.Projection
  field :from, 2, repeated: true, type: Google.Firestore.V1.StructuredQuery.CollectionSelector
  field :where, 3, type: Google.Firestore.V1.StructuredQuery.Filter

  field :order_by, 4,
    repeated: true,
    type: Google.Firestore.V1.StructuredQuery.Order,
    json_name: "orderBy"

  field :start_at, 7, type: Google.Firestore.V1.Cursor, json_name: "startAt"
  field :end_at, 8, type: Google.Firestore.V1.Cursor, json_name: "endAt"
  field :offset, 6, type: :int32
  field :limit, 5, type: Google.Protobuf.Int32Value

  field :find_nearest, 9,
    type: Google.Firestore.V1.StructuredQuery.FindNearest,
    json_name: "findNearest",
    deprecated: false
end

defmodule Google.Firestore.V1.StructuredAggregationQuery.Aggregation.Count do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :up_to, 1, type: Google.Protobuf.Int64Value, json_name: "upTo", deprecated: false
end

defmodule Google.Firestore.V1.StructuredAggregationQuery.Aggregation.Sum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Firestore.V1.StructuredQuery.FieldReference
end

defmodule Google.Firestore.V1.StructuredAggregationQuery.Aggregation.Avg do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field, 1, type: Google.Firestore.V1.StructuredQuery.FieldReference
end

defmodule Google.Firestore.V1.StructuredAggregationQuery.Aggregation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operator, 0

  field :count, 1,
    type: Google.Firestore.V1.StructuredAggregationQuery.Aggregation.Count,
    oneof: 0

  field :sum, 2, type: Google.Firestore.V1.StructuredAggregationQuery.Aggregation.Sum, oneof: 0
  field :avg, 3, type: Google.Firestore.V1.StructuredAggregationQuery.Aggregation.Avg, oneof: 0
  field :alias, 7, type: :string, deprecated: false
end

defmodule Google.Firestore.V1.StructuredAggregationQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :query_type, 0

  field :structured_query, 1,
    type: Google.Firestore.V1.StructuredQuery,
    json_name: "structuredQuery",
    oneof: 0

  field :aggregations, 3,
    repeated: true,
    type: Google.Firestore.V1.StructuredAggregationQuery.Aggregation,
    deprecated: false
end

defmodule Google.Firestore.V1.Cursor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Firestore.V1.Value
  field :before, 2, type: :bool
end