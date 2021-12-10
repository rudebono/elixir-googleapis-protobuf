defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.SnapshotAnalysis do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean,
          monitoring_interval: Google.Protobuf.Duration.t() | nil,
          monitoring_interval_days: integer
        }

  defstruct disabled: false,
            monitoring_interval: nil,
            monitoring_interval_days: 0

  field :disabled, 1, type: :bool

  field :monitoring_interval, 2,
    type: Google.Protobuf.Duration,
    json_name: "monitoringInterval",
    deprecated: true

  field :monitoring_interval_days, 3, type: :int32, json_name: "monitoringIntervalDays"
end
defmodule Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_analysis:
            Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.SnapshotAnalysis.t()
            | nil
        }

  defstruct snapshot_analysis: nil

  field :snapshot_analysis, 1,
    type: Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig.SnapshotAnalysis,
    json_name: "snapshotAnalysis"
end
