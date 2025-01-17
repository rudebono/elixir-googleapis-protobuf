defmodule Google.Bigtable.V2.ReadIterationStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rows_seen_count, 1, type: :int64, json_name: "rowsSeenCount"
  field :rows_returned_count, 2, type: :int64, json_name: "rowsReturnedCount"
  field :cells_seen_count, 3, type: :int64, json_name: "cellsSeenCount"
  field :cells_returned_count, 4, type: :int64, json_name: "cellsReturnedCount"
end

defmodule Google.Bigtable.V2.RequestLatencyStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :frontend_server_latency, 1,
    type: Google.Protobuf.Duration,
    json_name: "frontendServerLatency"
end

defmodule Google.Bigtable.V2.FullReadStatsView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :read_iteration_stats, 1,
    type: Google.Bigtable.V2.ReadIterationStats,
    json_name: "readIterationStats"

  field :request_latency_stats, 2,
    type: Google.Bigtable.V2.RequestLatencyStats,
    json_name: "requestLatencyStats"
end

defmodule Google.Bigtable.V2.RequestStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :stats_view, 0

  field :full_read_stats_view, 1,
    type: Google.Bigtable.V2.FullReadStatsView,
    json_name: "fullReadStatsView",
    oneof: 0
end
