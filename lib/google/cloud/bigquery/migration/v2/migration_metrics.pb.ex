defmodule Google.Cloud.Bigquery.Migration.V2.TimeSeries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric, 1, type: :string, deprecated: false

  field :value_type, 2,
    type: Google.Api.MetricDescriptor.ValueType,
    json_name: "valueType",
    enum: true,
    deprecated: false

  field :metric_kind, 3,
    type: Google.Api.MetricDescriptor.MetricKind,
    json_name: "metricKind",
    enum: true,
    deprecated: false

  field :points, 4,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.Point,
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.Point do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :interval, 1, type: Google.Cloud.Bigquery.Migration.V2.TimeInterval
  field :value, 2, type: Google.Cloud.Bigquery.Migration.V2.TypedValue
end

defmodule Google.Cloud.Bigquery.Migration.V2.TimeInterval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Bigquery.Migration.V2.TypedValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :value, 0

  field :bool_value, 1, type: :bool, json_name: "boolValue", oneof: 0
  field :int64_value, 2, type: :int64, json_name: "int64Value", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 4, type: :string, json_name: "stringValue", oneof: 0

  field :distribution_value, 5,
    type: Google.Api.Distribution,
    json_name: "distributionValue",
    oneof: 0
end
