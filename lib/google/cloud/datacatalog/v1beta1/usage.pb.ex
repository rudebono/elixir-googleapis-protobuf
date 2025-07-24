defmodule Google.Cloud.Datacatalog.V1beta1.UsageStats do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :total_completions, 1, type: :float, json_name: "totalCompletions"
  field :total_failures, 2, type: :float, json_name: "totalFailures"
  field :total_cancellations, 3, type: :float, json_name: "totalCancellations"

  field :total_execution_time_for_completions_millis, 4,
    type: :float,
    json_name: "totalExecutionTimeForCompletionsMillis"
end

defmodule Google.Cloud.Datacatalog.V1beta1.UsageSignal.UsageWithinTimeRangeEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datacatalog.V1beta1.UsageStats
end

defmodule Google.Cloud.Datacatalog.V1beta1.UsageSignal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_time, 1, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :usage_within_time_range, 2,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.UsageSignal.UsageWithinTimeRangeEntry,
    json_name: "usageWithinTimeRange",
    map: true
end
