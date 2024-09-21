defmodule Google.Cloud.Datacatalog.V1.UsageStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :total_completions, 1, type: :float, json_name: "totalCompletions"
  field :total_failures, 2, type: :float, json_name: "totalFailures"
  field :total_cancellations, 3, type: :float, json_name: "totalCancellations"

  field :total_execution_time_for_completions_millis, 4,
    type: :float,
    json_name: "totalExecutionTimeForCompletionsMillis"
end

defmodule Google.Cloud.Datacatalog.V1.CommonUsageStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :view_count, 1, proto3_optional: true, type: :int64, json_name: "viewCount"
end

defmodule Google.Cloud.Datacatalog.V1.UsageSignal.UsageWithinTimeRangeEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datacatalog.V1.UsageStats
end

defmodule Google.Cloud.Datacatalog.V1.UsageSignal.CommonUsageWithinTimeRangeEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datacatalog.V1.CommonUsageStats
end

defmodule Google.Cloud.Datacatalog.V1.UsageSignal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_time, 1, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :usage_within_time_range, 2,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.UsageSignal.UsageWithinTimeRangeEntry,
    json_name: "usageWithinTimeRange",
    map: true,
    deprecated: false

  field :common_usage_within_time_range, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.UsageSignal.CommonUsageWithinTimeRangeEntry,
    json_name: "commonUsageWithinTimeRange",
    map: true

  field :favorite_count, 4, proto3_optional: true, type: :int64, json_name: "favoriteCount"
end