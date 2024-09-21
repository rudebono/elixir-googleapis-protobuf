defmodule Google.Datastore.V1.ExplainOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :analyze, 1, type: :bool, deprecated: false
end

defmodule Google.Datastore.V1.ExplainMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :plan_summary, 1, type: Google.Datastore.V1.PlanSummary, json_name: "planSummary"
  field :execution_stats, 2, type: Google.Datastore.V1.ExecutionStats, json_name: "executionStats"
end

defmodule Google.Datastore.V1.PlanSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :indexes_used, 1, repeated: true, type: Google.Protobuf.Struct, json_name: "indexesUsed"
end

defmodule Google.Datastore.V1.ExecutionStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :results_returned, 1, type: :int64, json_name: "resultsReturned"
  field :execution_duration, 3, type: Google.Protobuf.Duration, json_name: "executionDuration"
  field :read_operations, 4, type: :int64, json_name: "readOperations"
  field :debug_stats, 5, type: Google.Protobuf.Struct, json_name: "debugStats"
end