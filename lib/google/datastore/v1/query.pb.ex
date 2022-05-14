defmodule Google.Datastore.V1.EntityResult.ResultType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :RESULT_TYPE_UNSPECIFIED, 0
  field :FULL, 1
  field :PROJECTION, 2
  field :KEY_ONLY, 3
end
defmodule Google.Datastore.V1.PropertyOrder.Direction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :DIRECTION_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end
defmodule Google.Datastore.V1.CompositeFilter.Operator do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :AND, 1
end
defmodule Google.Datastore.V1.PropertyFilter.Operator do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :LESS_THAN, 1
  field :LESS_THAN_OR_EQUAL, 2
  field :GREATER_THAN, 3
  field :GREATER_THAN_OR_EQUAL, 4
  field :EQUAL, 5
  field :IN, 6
  field :NOT_EQUAL, 9
  field :HAS_ANCESTOR, 11
  field :NOT_IN, 13
end
defmodule Google.Datastore.V1.QueryResultBatch.MoreResultsType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :MORE_RESULTS_TYPE_UNSPECIFIED, 0
  field :NOT_FINISHED, 1
  field :MORE_RESULTS_AFTER_LIMIT, 2
  field :MORE_RESULTS_AFTER_CURSOR, 4
  field :NO_MORE_RESULTS, 3
end
defmodule Google.Datastore.V1.EntityResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :entity, 1, type: Google.Datastore.V1.Entity
  field :version, 4, type: :int64
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :cursor, 3, type: :bytes
end
defmodule Google.Datastore.V1.Query do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :projection, 2, repeated: true, type: Google.Datastore.V1.Projection
  field :kind, 3, repeated: true, type: Google.Datastore.V1.KindExpression
  field :filter, 4, type: Google.Datastore.V1.Filter
  field :order, 5, repeated: true, type: Google.Datastore.V1.PropertyOrder

  field :distinct_on, 6,
    repeated: true,
    type: Google.Datastore.V1.PropertyReference,
    json_name: "distinctOn"

  field :start_cursor, 7, type: :bytes, json_name: "startCursor"
  field :end_cursor, 8, type: :bytes, json_name: "endCursor"
  field :offset, 10, type: :int32
  field :limit, 12, type: Google.Protobuf.Int32Value
end
defmodule Google.Datastore.V1.KindExpression do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Datastore.V1.PropertyReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 2, type: :string
end
defmodule Google.Datastore.V1.Projection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :property, 1, type: Google.Datastore.V1.PropertyReference
end
defmodule Google.Datastore.V1.PropertyOrder do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :property, 1, type: Google.Datastore.V1.PropertyReference
  field :direction, 2, type: Google.Datastore.V1.PropertyOrder.Direction, enum: true
end
defmodule Google.Datastore.V1.Filter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :filter_type, 0

  field :composite_filter, 1,
    type: Google.Datastore.V1.CompositeFilter,
    json_name: "compositeFilter",
    oneof: 0

  field :property_filter, 2,
    type: Google.Datastore.V1.PropertyFilter,
    json_name: "propertyFilter",
    oneof: 0
end
defmodule Google.Datastore.V1.CompositeFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :op, 1, type: Google.Datastore.V1.CompositeFilter.Operator, enum: true
  field :filters, 2, repeated: true, type: Google.Datastore.V1.Filter
end
defmodule Google.Datastore.V1.PropertyFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :property, 1, type: Google.Datastore.V1.PropertyReference
  field :op, 2, type: Google.Datastore.V1.PropertyFilter.Operator, enum: true
  field :value, 3, type: Google.Datastore.V1.Value
end
defmodule Google.Datastore.V1.GqlQuery.NamedBindingsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Datastore.V1.GqlQueryParameter
end
defmodule Google.Datastore.V1.GqlQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :query_string, 1, type: :string, json_name: "queryString"
  field :allow_literals, 2, type: :bool, json_name: "allowLiterals"

  field :named_bindings, 5,
    repeated: true,
    type: Google.Datastore.V1.GqlQuery.NamedBindingsEntry,
    json_name: "namedBindings",
    map: true

  field :positional_bindings, 4,
    repeated: true,
    type: Google.Datastore.V1.GqlQueryParameter,
    json_name: "positionalBindings"
end
defmodule Google.Datastore.V1.GqlQueryParameter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :parameter_type, 0

  field :value, 2, type: Google.Datastore.V1.Value, oneof: 0
  field :cursor, 3, type: :bytes, oneof: 0
end
defmodule Google.Datastore.V1.QueryResultBatch do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :skipped_results, 6, type: :int32, json_name: "skippedResults"
  field :skipped_cursor, 3, type: :bytes, json_name: "skippedCursor"

  field :entity_result_type, 1,
    type: Google.Datastore.V1.EntityResult.ResultType,
    json_name: "entityResultType",
    enum: true

  field :entity_results, 2,
    repeated: true,
    type: Google.Datastore.V1.EntityResult,
    json_name: "entityResults"

  field :end_cursor, 4, type: :bytes, json_name: "endCursor"

  field :more_results, 5,
    type: Google.Datastore.V1.QueryResultBatch.MoreResultsType,
    json_name: "moreResults",
    enum: true

  field :snapshot_version, 7, type: :int64, json_name: "snapshotVersion"
  field :read_time, 8, type: Google.Protobuf.Timestamp, json_name: "readTime"
end
