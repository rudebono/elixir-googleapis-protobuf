defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.SnapshotAnalysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean,
          monitoring_interval: Google.Protobuf.Duration.t() | nil,
          monitoring_interval_days: integer
        }

  defstruct [:disabled, :monitoring_interval, :monitoring_interval_days]

  field :disabled, 1, type: :bool

  field :monitoring_interval, 2,
    type: Google.Protobuf.Duration,
    deprecated: true,
    json_name: "monitoringInterval"

  field :monitoring_interval_days, 3, type: :int32, json_name: "monitoringIntervalDays"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_analysis:
            Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.SnapshotAnalysis.t()
            | nil
        }

  defstruct [:snapshot_analysis]

  field :snapshot_analysis, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.SnapshotAnalysis,
    json_name: "snapshotAnalysis"

  def transform_module(), do: nil
end
