defmodule Google.Logging.V2.LogMetric.ApiVersion do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :V2 | :V1

  field :V2, 0
  field :V1, 1
end

defmodule Google.Logging.V2.LogMetric.LabelExtractorsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.LogMetric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          filter: String.t(),
          metric_descriptor: Google.Api.MetricDescriptor.t() | nil,
          value_extractor: String.t(),
          label_extractors: %{String.t() => String.t()},
          bucket_options: Google.Api.Distribution.BucketOptions.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          version: Google.Logging.V2.LogMetric.ApiVersion.t()
        }

  defstruct [
    :name,
    :description,
    :filter,
    :metric_descriptor,
    :value_extractor,
    :label_extractors,
    :bucket_options,
    :create_time,
    :update_time,
    :version
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :filter, 3, type: :string
  field :metric_descriptor, 5, type: Google.Api.MetricDescriptor, json_name: "metricDescriptor"
  field :value_extractor, 6, type: :string, json_name: "valueExtractor"

  field :label_extractors, 7,
    repeated: true,
    type: Google.Logging.V2.LogMetric.LabelExtractorsEntry,
    json_name: "labelExtractors",
    map: true

  field :bucket_options, 8,
    type: Google.Api.Distribution.BucketOptions,
    json_name: "bucketOptions"

  field :create_time, 9, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 10, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :version, 4, type: Google.Logging.V2.LogMetric.ApiVersion, deprecated: true, enum: true

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.ListLogMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.ListLogMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics: [Google.Logging.V2.LogMetric.t()],
          next_page_token: String.t()
        }

  defstruct [:metrics, :next_page_token]

  field :metrics, 1, repeated: true, type: Google.Logging.V2.LogMetric
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.GetLogMetricRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_name: String.t()
        }

  defstruct [:metric_name]

  field :metric_name, 1, type: :string, json_name: "metricName"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.CreateLogMetricRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          metric: Google.Logging.V2.LogMetric.t() | nil
        }

  defstruct [:parent, :metric]

  field :parent, 1, type: :string
  field :metric, 2, type: Google.Logging.V2.LogMetric

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.UpdateLogMetricRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_name: String.t(),
          metric: Google.Logging.V2.LogMetric.t() | nil
        }

  defstruct [:metric_name, :metric]

  field :metric_name, 1, type: :string, json_name: "metricName"
  field :metric, 2, type: Google.Logging.V2.LogMetric

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.DeleteLogMetricRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_name: String.t()
        }

  defstruct [:metric_name]

  field :metric_name, 1, type: :string, json_name: "metricName"

  def transform_module(), do: nil
end

defmodule Google.Logging.V2.MetricsServiceV2.Service do
  @moduledoc false
  use GRPC.Service, name: "google.logging.v2.MetricsServiceV2"

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
