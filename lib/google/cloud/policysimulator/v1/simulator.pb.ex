defmodule Google.Cloud.Policysimulator.V1.Replay.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Policysimulator.V1.ReplayConfig.LogSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LOG_SOURCE_UNSPECIFIED, 0
  field :RECENT_ACCESSES, 1
end

defmodule Google.Cloud.Policysimulator.V1.AccessStateDiff.AccessChangeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ACCESS_CHANGE_TYPE_UNSPECIFIED, 0
  field :NO_CHANGE, 1
  field :UNKNOWN_CHANGE, 2
  field :ACCESS_REVOKED, 3
  field :ACCESS_GAINED, 4
  field :ACCESS_MAYBE_REVOKED, 5
  field :ACCESS_MAYBE_GAINED, 6
end

defmodule Google.Cloud.Policysimulator.V1.Replay.ResultsSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :log_count, 1, type: :int32, json_name: "logCount"
  field :unchanged_count, 2, type: :int32, json_name: "unchangedCount"
  field :difference_count, 3, type: :int32, json_name: "differenceCount"
  field :error_count, 4, type: :int32, json_name: "errorCount"
  field :oldest_date, 5, type: Google.Type.Date, json_name: "oldestDate"
  field :newest_date, 6, type: Google.Type.Date, json_name: "newestDate"
end

defmodule Google.Cloud.Policysimulator.V1.Replay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Policysimulator.V1.Replay.State,
    enum: true,
    deprecated: false

  field :config, 3, type: Google.Cloud.Policysimulator.V1.ReplayConfig, deprecated: false

  field :results_summary, 5,
    type: Google.Cloud.Policysimulator.V1.Replay.ResultsSummary,
    json_name: "resultsSummary",
    deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.ReplayResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :result, 0

  field :diff, 5, type: Google.Cloud.Policysimulator.V1.ReplayDiff, oneof: 0
  field :error, 6, type: Google.Rpc.Status, oneof: 0
  field :name, 1, type: :string
  field :parent, 2, type: :string, deprecated: false

  field :access_tuple, 3,
    type: Google.Cloud.Policysimulator.V1.AccessTuple,
    json_name: "accessTuple"

  field :last_seen_date, 4, type: Google.Type.Date, json_name: "lastSeenDate"
end

defmodule Google.Cloud.Policysimulator.V1.CreateReplayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :replay, 2, type: Google.Cloud.Policysimulator.V1.Replay, deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.ReplayOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
end

defmodule Google.Cloud.Policysimulator.V1.GetReplayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.ListReplayResultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Policysimulator.V1.ListReplayResultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :replay_results, 1,
    repeated: true,
    type: Google.Cloud.Policysimulator.V1.ReplayResult,
    json_name: "replayResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Policysimulator.V1.ReplayConfig.PolicyOverlayEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Iam.V1.Policy
end

defmodule Google.Cloud.Policysimulator.V1.ReplayConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :policy_overlay, 1,
    repeated: true,
    type: Google.Cloud.Policysimulator.V1.ReplayConfig.PolicyOverlayEntry,
    json_name: "policyOverlay",
    map: true

  field :log_source, 2,
    type: Google.Cloud.Policysimulator.V1.ReplayConfig.LogSource,
    json_name: "logSource",
    enum: true
end

defmodule Google.Cloud.Policysimulator.V1.ReplayDiff do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :access_diff, 2,
    type: Google.Cloud.Policysimulator.V1.AccessStateDiff,
    json_name: "accessDiff"
end

defmodule Google.Cloud.Policysimulator.V1.AccessStateDiff do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :baseline, 1, type: Google.Cloud.Policysimulator.V1.ExplainedAccess
  field :simulated, 2, type: Google.Cloud.Policysimulator.V1.ExplainedAccess

  field :access_change, 3,
    type: Google.Cloud.Policysimulator.V1.AccessStateDiff.AccessChangeType,
    json_name: "accessChange",
    enum: true
end

defmodule Google.Cloud.Policysimulator.V1.ExplainedAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :access_state, 1,
    type: Google.Cloud.Policysimulator.V1.AccessState,
    json_name: "accessState",
    enum: true

  field :policies, 2, repeated: true, type: Google.Cloud.Policysimulator.V1.ExplainedPolicy
  field :errors, 3, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Policysimulator.V1.Simulator.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.policysimulator.v1.Simulator",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetReplay,
      Google.Cloud.Policysimulator.V1.GetReplayRequest,
      Google.Cloud.Policysimulator.V1.Replay

  rpc :CreateReplay,
      Google.Cloud.Policysimulator.V1.CreateReplayRequest,
      Google.Longrunning.Operation

  rpc :ListReplayResults,
      Google.Cloud.Policysimulator.V1.ListReplayResultsRequest,
      Google.Cloud.Policysimulator.V1.ListReplayResultsResponse
end

defmodule Google.Cloud.Policysimulator.V1.Simulator.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Policysimulator.V1.Simulator.Service
end