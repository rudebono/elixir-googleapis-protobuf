defmodule Google.Spanner.V1.ResultSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: Google.Spanner.V1.ResultSetMetadata.t() | nil,
          rows: [Google.Protobuf.ListValue.t()],
          stats: Google.Spanner.V1.ResultSetStats.t() | nil
        }

  defstruct metadata: nil,
            rows: [],
            stats: nil

  field :metadata, 1, type: Google.Spanner.V1.ResultSetMetadata
  field :rows, 2, repeated: true, type: Google.Protobuf.ListValue
  field :stats, 3, type: Google.Spanner.V1.ResultSetStats
end
defmodule Google.Spanner.V1.PartialResultSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: Google.Spanner.V1.ResultSetMetadata.t() | nil,
          values: [Google.Protobuf.Value.t()],
          chunked_value: boolean,
          resume_token: binary,
          stats: Google.Spanner.V1.ResultSetStats.t() | nil
        }

  defstruct metadata: nil,
            values: [],
            chunked_value: false,
            resume_token: "",
            stats: nil

  field :metadata, 1, type: Google.Spanner.V1.ResultSetMetadata
  field :values, 2, repeated: true, type: Google.Protobuf.Value
  field :chunked_value, 3, type: :bool, json_name: "chunkedValue"
  field :resume_token, 4, type: :bytes, json_name: "resumeToken"
  field :stats, 5, type: Google.Spanner.V1.ResultSetStats
end
defmodule Google.Spanner.V1.ResultSetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row_type: Google.Spanner.V1.StructType.t() | nil,
          transaction: Google.Spanner.V1.Transaction.t() | nil
        }

  defstruct row_type: nil,
            transaction: nil

  field :row_type, 1, type: Google.Spanner.V1.StructType, json_name: "rowType"
  field :transaction, 2, type: Google.Spanner.V1.Transaction
end
defmodule Google.Spanner.V1.ResultSetStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          row_count: {:row_count_exact, integer} | {:row_count_lower_bound, integer},
          query_plan: Google.Spanner.V1.QueryPlan.t() | nil,
          query_stats: Google.Protobuf.Struct.t() | nil
        }

  defstruct row_count: nil,
            query_plan: nil,
            query_stats: nil

  oneof :row_count, 0

  field :query_plan, 1, type: Google.Spanner.V1.QueryPlan, json_name: "queryPlan"
  field :query_stats, 2, type: Google.Protobuf.Struct, json_name: "queryStats"
  field :row_count_exact, 3, type: :int64, json_name: "rowCountExact", oneof: 0
  field :row_count_lower_bound, 4, type: :int64, json_name: "rowCountLowerBound", oneof: 0
end
