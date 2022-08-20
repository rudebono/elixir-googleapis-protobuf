defmodule Google.Devtools.Clouderrorreporting.V1beta1.TimedCountAlignment do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ERROR_COUNT_ALIGNMENT_UNSPECIFIED, 0
  field :ALIGNMENT_EQUAL_ROUNDED, 1
  field :ALIGNMENT_EQUAL_AT_END, 2
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupOrder do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :GROUP_ORDER_UNSPECIFIED, 0
  field :COUNT_DESC, 1
  field :LAST_SEEN_DESC, 2
  field :CREATED_DESC, 3
  field :AFFECTED_USERS_DESC, 4
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange.Period do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PERIOD_UNSPECIFIED, 0
  field :PERIOD_1_HOUR, 1
  field :PERIOD_6_HOURS, 2
  field :PERIOD_1_DAY, 3
  field :PERIOD_1_WEEK, 4
  field :PERIOD_30_DAYS, 5
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ListGroupStatsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_name, 1, type: :string, json_name: "projectName", deprecated: false
  field :group_id, 2, repeated: true, type: :string, json_name: "groupId", deprecated: false

  field :service_filter, 3,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContextFilter,
    json_name: "serviceFilter",
    deprecated: false

  field :time_range, 5,
    type: Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange,
    json_name: "timeRange",
    deprecated: false

  field :timed_count_duration, 6,
    type: Google.Protobuf.Duration,
    json_name: "timedCountDuration",
    deprecated: false

  field :alignment, 7,
    type: Google.Devtools.Clouderrorreporting.V1beta1.TimedCountAlignment,
    enum: true,
    deprecated: false

  field :alignment_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "alignmentTime",
    deprecated: false

  field :order, 9,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupOrder,
    enum: true,
    deprecated: false

  field :page_size, 11, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 12, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ListGroupStatsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :error_group_stats, 1,
    repeated: true,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupStats,
    json_name: "errorGroupStats"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :time_range_begin, 4, type: Google.Protobuf.Timestamp, json_name: "timeRangeBegin"
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupStats do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :group, 1, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup
  field :count, 2, type: :int64
  field :affected_users_count, 3, type: :int64, json_name: "affectedUsersCount"

  field :timed_counts, 4,
    repeated: true,
    type: Google.Devtools.Clouderrorreporting.V1beta1.TimedCount,
    json_name: "timedCounts"

  field :first_seen_time, 5, type: Google.Protobuf.Timestamp, json_name: "firstSeenTime"
  field :last_seen_time, 6, type: Google.Protobuf.Timestamp, json_name: "lastSeenTime"

  field :affected_services, 7,
    repeated: true,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext,
    json_name: "affectedServices"

  field :num_affected_services, 8, type: :int32, json_name: "numAffectedServices"
  field :representative, 9, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorEvent
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.TimedCount do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :count, 1, type: :int64
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ListEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_name, 1, type: :string, json_name: "projectName", deprecated: false
  field :group_id, 2, type: :string, json_name: "groupId", deprecated: false

  field :service_filter, 3,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContextFilter,
    json_name: "serviceFilter",
    deprecated: false

  field :time_range, 4,
    type: Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange,
    json_name: "timeRange",
    deprecated: false

  field :page_size, 6, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 7, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ListEventsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :error_events, 1,
    repeated: true,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorEvent,
    json_name: "errorEvents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :time_range_begin, 4, type: Google.Protobuf.Timestamp, json_name: "timeRangeBegin"
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :period, 1,
    type: Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange.Period,
    enum: true
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ServiceContextFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 2, type: :string, deprecated: false
  field :version, 3, type: :string, deprecated: false
  field :resource_type, 4, type: :string, json_name: "resourceType", deprecated: false
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.DeleteEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_name, 1, type: :string, json_name: "projectName", deprecated: false
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.DeleteEventsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorStatsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.devtools.clouderrorreporting.v1beta1.ErrorStatsService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListGroupStats,
      Google.Devtools.Clouderrorreporting.V1beta1.ListGroupStatsRequest,
      Google.Devtools.Clouderrorreporting.V1beta1.ListGroupStatsResponse

  rpc :ListEvents,
      Google.Devtools.Clouderrorreporting.V1beta1.ListEventsRequest,
      Google.Devtools.Clouderrorreporting.V1beta1.ListEventsResponse

  rpc :DeleteEvents,
      Google.Devtools.Clouderrorreporting.V1beta1.DeleteEventsRequest,
      Google.Devtools.Clouderrorreporting.V1beta1.DeleteEventsResponse
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorStatsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Clouderrorreporting.V1beta1.ErrorStatsService.Service
end