defmodule Google.Spanner.V1.CommitResponse.CommitStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mutation_count, 1, type: :int64, json_name: "mutationCount"
end

defmodule Google.Spanner.V1.CommitResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :MultiplexedSessionRetry, 0

  field :commit_timestamp, 1, type: Google.Protobuf.Timestamp, json_name: "commitTimestamp"

  field :commit_stats, 2,
    type: Google.Spanner.V1.CommitResponse.CommitStats,
    json_name: "commitStats"

  field :precommit_token, 4,
    type: Google.Spanner.V1.MultiplexedSessionPrecommitToken,
    json_name: "precommitToken",
    oneof: 0

  field :snapshot_timestamp, 5, type: Google.Protobuf.Timestamp, json_name: "snapshotTimestamp"
end
