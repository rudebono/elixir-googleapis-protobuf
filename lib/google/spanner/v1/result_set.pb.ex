defmodule Google.Spanner.V1.ResultSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :metadata, 1, type: Google.Spanner.V1.ResultSetMetadata
  field :rows, 2, repeated: true, type: Google.Protobuf.ListValue
  field :stats, 3, type: Google.Spanner.V1.ResultSetStats

  field :precommit_token, 5,
    type: Google.Spanner.V1.MultiplexedSessionPrecommitToken,
    json_name: "precommitToken",
    deprecated: false
end

defmodule Google.Spanner.V1.PartialResultSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :metadata, 1, type: Google.Spanner.V1.ResultSetMetadata
  field :values, 2, repeated: true, type: Google.Protobuf.Value
  field :chunked_value, 3, type: :bool, json_name: "chunkedValue"
  field :resume_token, 4, type: :bytes, json_name: "resumeToken"
  field :stats, 5, type: Google.Spanner.V1.ResultSetStats

  field :precommit_token, 8,
    type: Google.Spanner.V1.MultiplexedSessionPrecommitToken,
    json_name: "precommitToken",
    deprecated: false

  field :last, 9, type: :bool, deprecated: false
end

defmodule Google.Spanner.V1.ResultSetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :row_type, 1, type: Google.Spanner.V1.StructType, json_name: "rowType"
  field :transaction, 2, type: Google.Spanner.V1.Transaction

  field :undeclared_parameters, 3,
    type: Google.Spanner.V1.StructType,
    json_name: "undeclaredParameters"
end

defmodule Google.Spanner.V1.ResultSetStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :row_count, 0

  field :query_plan, 1, type: Google.Spanner.V1.QueryPlan, json_name: "queryPlan"
  field :query_stats, 2, type: Google.Protobuf.Struct, json_name: "queryStats"
  field :row_count_exact, 3, type: :int64, json_name: "rowCountExact", oneof: 0
  field :row_count_lower_bound, 4, type: :int64, json_name: "rowCountLowerBound", oneof: 0
end
