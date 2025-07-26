defmodule Google.Logging.V2.LogMetric.ApiVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :V2, 0
  field :V1, 1
end

defmodule Google.Logging.V2.LogMetric.LabelExtractorsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Logging.V2.LogMetric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :filter, 3, type: :string, deprecated: false
  field :bucket_name, 13, type: :string, json_name: "bucketName", deprecated: false
  field :disabled, 12, type: :bool, deprecated: false

  field :metric_descriptor, 5,
    type: Google.Api.MetricDescriptor,
    json_name: "metricDescriptor",
    deprecated: false

  field :value_extractor, 6, type: :string, json_name: "valueExtractor", deprecated: false

  field :label_extractors, 7,
    repeated: true,
    type: Google.Logging.V2.LogMetric.LabelExtractorsEntry,
    json_name: "labelExtractors",
    map: true,
    deprecated: false

  field :bucket_options, 8,
    type: Google.Api.Distribution.BucketOptions,
    json_name: "bucketOptions",
    deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :version, 4, type: Google.Logging.V2.LogMetric.ApiVersion, enum: true, deprecated: true
end

defmodule Google.Logging.V2.ListLogMetricsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
end

defmodule Google.Logging.V2.ListLogMetricsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metrics, 1, repeated: true, type: Google.Logging.V2.LogMetric
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Logging.V2.GetLogMetricRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName", deprecated: false
end

defmodule Google.Logging.V2.CreateLogMetricRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :metric, 2, type: Google.Logging.V2.LogMetric, deprecated: false
end

defmodule Google.Logging.V2.UpdateLogMetricRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName", deprecated: false
  field :metric, 2, type: Google.Logging.V2.LogMetric, deprecated: false
end

defmodule Google.Logging.V2.DeleteLogMetricRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName", deprecated: false
end

defmodule Google.Logging.V2.MetricsServiceV2.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.logging.v2.MetricsServiceV2",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListLogMetrics,
      Google.Logging.V2.ListLogMetricsRequest,
      Google.Logging.V2.ListLogMetricsResponse

  rpc :GetLogMetric, Google.Logging.V2.GetLogMetricRequest, Google.Logging.V2.LogMetric

  rpc :CreateLogMetric, Google.Logging.V2.CreateLogMetricRequest, Google.Logging.V2.LogMetric

  rpc :UpdateLogMetric, Google.Logging.V2.UpdateLogMetricRequest, Google.Logging.V2.LogMetric

  rpc :DeleteLogMetric, Google.Logging.V2.DeleteLogMetricRequest, Google.Protobuf.Empty
end

defmodule Google.Logging.V2.MetricsServiceV2.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Logging.V2.MetricsServiceV2.Service
end
