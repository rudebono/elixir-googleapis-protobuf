defmodule Google.Cloud.Datacatalog.V1.UsageStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_completions: float | :infinity | :negative_infinity | :nan,
          total_failures: float | :infinity | :negative_infinity | :nan,
          total_cancellations: float | :infinity | :negative_infinity | :nan,
          total_execution_time_for_completions_millis:
            float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :total_completions,
    :total_failures,
    :total_cancellations,
    :total_execution_time_for_completions_millis
  ]

  field :total_completions, 1, type: :float, json_name: "totalCompletions"
  field :total_failures, 2, type: :float, json_name: "totalFailures"
  field :total_cancellations, 3, type: :float, json_name: "totalCancellations"

  field :total_execution_time_for_completions_millis, 4,
    type: :float,
    json_name: "totalExecutionTimeForCompletionsMillis"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1.UsageSignal.UsageWithinTimeRangeEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Datacatalog.V1.UsageStats.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Datacatalog.V1.UsageStats

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1.UsageSignal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_time: Google.Protobuf.Timestamp.t() | nil,
          usage_within_time_range: %{
            String.t() => Google.Cloud.Datacatalog.V1.UsageStats.t() | nil
          }
        }

  defstruct [:update_time, :usage_within_time_range]

  field :update_time, 1, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :usage_within_time_range, 2,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.UsageSignal.UsageWithinTimeRangeEntry,
    json_name: "usageWithinTimeRange",
    map: true

  def transform_module(), do: nil
end
