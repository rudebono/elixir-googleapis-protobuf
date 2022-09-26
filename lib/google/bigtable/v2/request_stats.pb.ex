defmodule Google.Bigtable.V2.ReadIteratorStats do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rows_seen_count, 1, type: :int64, json_name: "rowsSeenCount"
  field :rows_returned_count, 2, type: :int64, json_name: "rowsReturnedCount"
  field :cells_seen_count, 3, type: :int64, json_name: "cellsSeenCount"
  field :cells_returned_count, 4, type: :int64, json_name: "cellsReturnedCount"
  field :deletes_seen_count, 5, type: :int64, json_name: "deletesSeenCount"
end

defmodule Google.Bigtable.V2.RequestLatencyStats do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :frontend_server_latency, 1,
    type: Google.Protobuf.Duration,
    json_name: "frontendServerLatency"
end

defmodule Google.Bigtable.V2.ReadEfficiencyStats do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :read_iterator_stats, 1,
    type: Google.Bigtable.V2.ReadIteratorStats,
    json_name: "readIteratorStats"

  field :request_latency_stats, 2,
    type: Google.Bigtable.V2.RequestLatencyStats,
    json_name: "requestLatencyStats"
end

defmodule Google.Bigtable.V2.AllReadStats do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :read_iterator_stats, 1,
    type: Google.Bigtable.V2.ReadIteratorStats,
    json_name: "readIteratorStats"

  field :request_latency_stats, 2,
    type: Google.Bigtable.V2.RequestLatencyStats,
    json_name: "requestLatencyStats"
end

defmodule Google.Bigtable.V2.RequestStats do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :stats, 0

  field :read_efficiency_stats, 1,
    type: Google.Bigtable.V2.ReadEfficiencyStats,
    json_name: "readEfficiencyStats",
    oneof: 0

  field :all_read_stats, 2,
    type: Google.Bigtable.V2.AllReadStats,
    json_name: "allReadStats",
    oneof: 0
end