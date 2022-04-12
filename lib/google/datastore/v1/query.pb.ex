defmodule Google.Datastore.V1.EntityResult.ResultType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RESULT_TYPE_UNSPECIFIED | :FULL | :PROJECTION | :KEY_ONLY

  field :RESULT_TYPE_UNSPECIFIED, 0
  field :FULL, 1
  field :PROJECTION, 2
  field :KEY_ONLY, 3
end
defmodule Google.Datastore.V1.PropertyOrder.Direction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DIRECTION_UNSPECIFIED | :ASCENDING | :DESCENDING

  field :DIRECTION_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end
defmodule Google.Datastore.V1.CompositeFilter.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :OPERATOR_UNSPECIFIED | :AND

  field :OPERATOR_UNSPECIFIED, 0
  field :AND, 1
end
defmodule Google.Datastore.V1.PropertyFilter.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPERATOR_UNSPECIFIED
          | :LESS_THAN
          | :LESS_THAN_OR_EQUAL
          | :GREATER_THAN
          | :GREATER_THAN_OR_EQUAL
          | :EQUAL
          | :IN
          | :NOT_EQUAL
          | :HAS_ANCESTOR
          | :NOT_IN

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MORE_RESULTS_TYPE_UNSPECIFIED
          | :NOT_FINISHED
          | :MORE_RESULTS_AFTER_LIMIT
          | :MORE_RESULTS_AFTER_CURSOR
          | :NO_MORE_RESULTS

  field :MORE_RESULTS_TYPE_UNSPECIFIED, 0
  field :NOT_FINISHED, 1
  field :MORE_RESULTS_AFTER_LIMIT, 2
  field :MORE_RESULTS_AFTER_CURSOR, 4
  field :NO_MORE_RESULTS, 3
end
defmodule Google.Datastore.V1.EntityResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Datastore.V1.Entity.t() | nil,
          version: integer,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          cursor: binary
        }

  defstruct entity: nil,
            version: 0,
            update_time: nil,
            cursor: ""

  field :entity, 1, type: Google.Datastore.V1.Entity
  field :version, 4, type: :int64
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :cursor, 3, type: :bytes
end
defmodule Google.Datastore.V1.Query do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          projection: [Google.Datastore.V1.Projection.t()],
          kind: [Google.Datastore.V1.KindExpression.t()],
          filter: Google.Datastore.V1.Filter.t() | nil,
          order: [Google.Datastore.V1.PropertyOrder.t()],
          distinct_on: [Google.Datastore.V1.PropertyReference.t()],
          start_cursor: binary,
          end_cursor: binary,
          offset: integer,
          limit: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct projection: [],
            kind: [],
            filter: nil,
            order: [],
            distinct_on: [],
            start_cursor: "",
            end_cursor: "",
            offset: 0,
            limit: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Datastore.V1.PropertyReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 2, type: :string
end
defmodule Google.Datastore.V1.Projection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: Google.Datastore.V1.PropertyReference.t() | nil
        }

  defstruct property: nil

  field :property, 1, type: Google.Datastore.V1.PropertyReference
end
defmodule Google.Datastore.V1.PropertyOrder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: Google.Datastore.V1.PropertyReference.t() | nil,
          direction: Google.Datastore.V1.PropertyOrder.Direction.t()
        }

  defstruct property: nil,
            direction: :DIRECTION_UNSPECIFIED

  field :property, 1, type: Google.Datastore.V1.PropertyReference
  field :direction, 2, type: Google.Datastore.V1.PropertyOrder.Direction, enum: true
end
defmodule Google.Datastore.V1.Filter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter_type:
            {:composite_filter, Google.Datastore.V1.CompositeFilter.t() | nil}
            | {:property_filter, Google.Datastore.V1.PropertyFilter.t() | nil}
        }

  defstruct filter_type: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          op: Google.Datastore.V1.CompositeFilter.Operator.t(),
          filters: [Google.Datastore.V1.Filter.t()]
        }

  defstruct op: :OPERATOR_UNSPECIFIED,
            filters: []

  field :op, 1, type: Google.Datastore.V1.CompositeFilter.Operator, enum: true
  field :filters, 2, repeated: true, type: Google.Datastore.V1.Filter
end
defmodule Google.Datastore.V1.PropertyFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: Google.Datastore.V1.PropertyReference.t() | nil,
          op: Google.Datastore.V1.PropertyFilter.Operator.t(),
          value: Google.Datastore.V1.Value.t() | nil
        }

  defstruct property: nil,
            op: :OPERATOR_UNSPECIFIED,
            value: nil

  field :property, 1, type: Google.Datastore.V1.PropertyReference
  field :op, 2, type: Google.Datastore.V1.PropertyFilter.Operator, enum: true
  field :value, 3, type: Google.Datastore.V1.Value
end
defmodule Google.Datastore.V1.GqlQuery.NamedBindingsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Datastore.V1.GqlQueryParameter.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Datastore.V1.GqlQueryParameter
end
defmodule Google.Datastore.V1.GqlQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_string: String.t(),
          allow_literals: boolean,
          named_bindings: %{String.t() => Google.Datastore.V1.GqlQueryParameter.t() | nil},
          positional_bindings: [Google.Datastore.V1.GqlQueryParameter.t()]
        }

  defstruct query_string: "",
            allow_literals: false,
            named_bindings: %{},
            positional_bindings: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_type: {:value, Google.Datastore.V1.Value.t() | nil} | {:cursor, binary}
        }

  defstruct parameter_type: nil

  oneof :parameter_type, 0

  field :value, 2, type: Google.Datastore.V1.Value, oneof: 0
  field :cursor, 3, type: :bytes, oneof: 0
end
defmodule Google.Datastore.V1.QueryResultBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          skipped_results: integer,
          skipped_cursor: binary,
          entity_result_type: Google.Datastore.V1.EntityResult.ResultType.t(),
          entity_results: [Google.Datastore.V1.EntityResult.t()],
          end_cursor: binary,
          more_results: Google.Datastore.V1.QueryResultBatch.MoreResultsType.t(),
          snapshot_version: integer,
          read_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct skipped_results: 0,
            skipped_cursor: "",
            entity_result_type: :RESULT_TYPE_UNSPECIFIED,
            entity_results: [],
            end_cursor: "",
            more_results: :MORE_RESULTS_TYPE_UNSPECIFIED,
            snapshot_version: 0,
            read_time: nil

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
