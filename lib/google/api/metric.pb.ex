defmodule Google.Api.MetricDescriptor.MetricKind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :METRIC_KIND_UNSPECIFIED, 0
  field :GAUGE, 1
  field :DELTA, 2
  field :CUMULATIVE, 3
end
defmodule Google.Api.MetricDescriptor.ValueType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Api.Metric do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :type, 3, type: :string
  field :labels, 2, repeated: true, type: Google.Api.Metric.LabelsEntry, map: true
end
