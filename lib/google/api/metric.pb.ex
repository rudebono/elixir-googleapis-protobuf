defmodule Google.Api.MetricDescriptor.MetricKind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :METRIC_KIND_UNSPECIFIED | :GAUGE | :DELTA | :CUMULATIVE

  field :METRIC_KIND_UNSPECIFIED, 0
  field :GAUGE, 1
  field :DELTA, 2
  field :CUMULATIVE, 3
end
defmodule Google.Api.MetricDescriptor.ValueType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :VALUE_TYPE_UNSPECIFIED
          | :BOOL
          | :INT64
          | :DOUBLE
          | :STRING
          | :DISTRIBUTION
          | :MONEY

  field :VALUE_TYPE_UNSPECIFIED, 0
  field :BOOL, 1
  field :INT64, 2
  field :DOUBLE, 3
  field :STRING, 4
  field :DISTRIBUTION, 5
  field :MONEY, 6
end
defmodule Google.Api.MetricDescriptor.MetricDescriptorMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          launch_stage: Google.Api.LaunchStage.t(),
          sample_period: Google.Protobuf.Duration.t() | nil,
          ingest_delay: Google.Protobuf.Duration.t() | nil
        }

  defstruct launch_stage: :LAUNCH_STAGE_UNSPECIFIED,
            sample_period: nil,
            ingest_delay: nil

  field :launch_stage, 1,
    type: Google.Api.LaunchStage,
    json_name: "launchStage",
    enum: true,
    deprecated: true

  field :sample_period, 2, type: Google.Protobuf.Duration, json_name: "samplePeriod"
  field :ingest_delay, 3, type: Google.Protobuf.Duration, json_name: "ingestDelay"
end
defmodule Google.Api.MetricDescriptor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t(),
          labels: [Google.Api.LabelDescriptor.t()],
          metric_kind: Google.Api.MetricDescriptor.MetricKind.t(),
          value_type: Google.Api.MetricDescriptor.ValueType.t(),
          unit: String.t(),
          description: String.t(),
          display_name: String.t(),
          metadata: Google.Api.MetricDescriptor.MetricDescriptorMetadata.t() | nil,
          launch_stage: Google.Api.LaunchStage.t(),
          monitored_resource_types: [String.t()]
        }

  defstruct name: "",
            type: "",
            labels: [],
            metric_kind: :METRIC_KIND_UNSPECIFIED,
            value_type: :VALUE_TYPE_UNSPECIFIED,
            unit: "",
            description: "",
            display_name: "",
            metadata: nil,
            launch_stage: :LAUNCH_STAGE_UNSPECIFIED,
            monitored_resource_types: []

  field :name, 1, type: :string
  field :type, 8, type: :string
  field :labels, 2, repeated: true, type: Google.Api.LabelDescriptor

  field :metric_kind, 3,
    type: Google.Api.MetricDescriptor.MetricKind,
    json_name: "metricKind",
    enum: true

  field :value_type, 4,
    type: Google.Api.MetricDescriptor.ValueType,
    json_name: "valueType",
    enum: true

  field :unit, 5, type: :string
  field :description, 6, type: :string
  field :display_name, 7, type: :string, json_name: "displayName"
  field :metadata, 10, type: Google.Api.MetricDescriptor.MetricDescriptorMetadata
  field :launch_stage, 12, type: Google.Api.LaunchStage, json_name: "launchStage", enum: true

  field :monitored_resource_types, 13,
    repeated: true,
    type: :string,
    json_name: "monitoredResourceTypes"
end
defmodule Google.Api.Metric.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Api.Metric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct type: "",
            labels: %{}

  field :type, 3, type: :string
  field :labels, 2, repeated: true, type: Google.Api.Metric.LabelsEntry, map: true
end
