defmodule Google.Monitoring.V3.ListTimeSeriesRequest.TimeSeriesView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :FULL, 0
  field :HEADERS, 1
end

defmodule Google.Monitoring.V3.ListMonitoredResourceDescriptorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 5, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Monitoring.V3.ListMonitoredResourceDescriptorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_descriptors, 1,
    repeated: true,
    type: Google.Api.MonitoredResourceDescriptor,
    json_name: "resourceDescriptors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Monitoring.V3.GetMonitoredResourceDescriptorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.ListMetricDescriptorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 5, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :active_only, 6, type: :bool, json_name: "activeOnly", deprecated: false
end

defmodule Google.Monitoring.V3.ListMetricDescriptorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :metric_descriptors, 1,
    repeated: true,
    type: Google.Api.MetricDescriptor,
    json_name: "metricDescriptors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Monitoring.V3.GetMetricDescriptorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.CreateMetricDescriptorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false

  field :metric_descriptor, 2,
    type: Google.Api.MetricDescriptor,
    json_name: "metricDescriptor",
    deprecated: false
end

defmodule Google.Monitoring.V3.DeleteMetricDescriptorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.ListTimeSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 10, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :interval, 4, type: Google.Monitoring.V3.TimeInterval, deprecated: false
  field :aggregation, 5, type: Google.Monitoring.V3.Aggregation

  field :secondary_aggregation, 11,
    type: Google.Monitoring.V3.Aggregation,
    json_name: "secondaryAggregation"

  field :order_by, 6, type: :string, json_name: "orderBy"

  field :view, 7,
    type: Google.Monitoring.V3.ListTimeSeriesRequest.TimeSeriesView,
    enum: true,
    deprecated: false

  field :page_size, 8, type: :int32, json_name: "pageSize"
  field :page_token, 9, type: :string, json_name: "pageToken"
end

defmodule Google.Monitoring.V3.ListTimeSeriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :time_series, 1,
    repeated: true,
    type: Google.Monitoring.V3.TimeSeries,
    json_name: "timeSeries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  field :execution_errors, 3,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "executionErrors"

  field :unit, 5, type: :string
end

defmodule Google.Monitoring.V3.CreateTimeSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false

  field :time_series, 2,
    repeated: true,
    type: Google.Monitoring.V3.TimeSeries,
    json_name: "timeSeries",
    deprecated: false
end

defmodule Google.Monitoring.V3.CreateTimeSeriesError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :time_series, 1,
    type: Google.Monitoring.V3.TimeSeries,
    json_name: "timeSeries",
    deprecated: true

  field :status, 2, type: Google.Rpc.Status, deprecated: true
end

defmodule Google.Monitoring.V3.CreateTimeSeriesSummary.Error do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status
  field :point_count, 2, type: :int32, json_name: "pointCount"
end

defmodule Google.Monitoring.V3.CreateTimeSeriesSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :total_point_count, 1, type: :int32, json_name: "totalPointCount"
  field :success_point_count, 2, type: :int32, json_name: "successPointCount"
  field :errors, 3, repeated: true, type: Google.Monitoring.V3.CreateTimeSeriesSummary.Error
end

defmodule Google.Monitoring.V3.QueryTimeSeriesRequest do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :query, 7, type: :string, deprecated: false
  field :page_size, 9, type: :int32, json_name: "pageSize"
  field :page_token, 10, type: :string, json_name: "pageToken"
end

defmodule Google.Monitoring.V3.QueryTimeSeriesResponse do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :time_series_descriptor, 8,
    type: Google.Monitoring.V3.TimeSeriesDescriptor,
    json_name: "timeSeriesDescriptor"

  field :time_series_data, 9,
    repeated: true,
    type: Google.Monitoring.V3.TimeSeriesData,
    json_name: "timeSeriesData"

  field :next_page_token, 10, type: :string, json_name: "nextPageToken"
  field :partial_errors, 11, repeated: true, type: Google.Rpc.Status, json_name: "partialErrors"
end

defmodule Google.Monitoring.V3.QueryErrorList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Monitoring.V3.QueryError
  field :error_summary, 2, type: :string, json_name: "errorSummary"
end

defmodule Google.Monitoring.V3.MetricService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.monitoring.v3.MetricService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListMonitoredResourceDescriptors,
      Google.Monitoring.V3.ListMonitoredResourceDescriptorsRequest,
      Google.Monitoring.V3.ListMonitoredResourceDescriptorsResponse

  rpc :GetMonitoredResourceDescriptor,
      Google.Monitoring.V3.GetMonitoredResourceDescriptorRequest,
      Google.Api.MonitoredResourceDescriptor

  rpc :ListMetricDescriptors,
      Google.Monitoring.V3.ListMetricDescriptorsRequest,
      Google.Monitoring.V3.ListMetricDescriptorsResponse

  rpc :GetMetricDescriptor,
      Google.Monitoring.V3.GetMetricDescriptorRequest,
      Google.Api.MetricDescriptor

  rpc :CreateMetricDescriptor,
      Google.Monitoring.V3.CreateMetricDescriptorRequest,
      Google.Api.MetricDescriptor

  rpc :DeleteMetricDescriptor,
      Google.Monitoring.V3.DeleteMetricDescriptorRequest,
      Google.Protobuf.Empty

  rpc :ListTimeSeries,
      Google.Monitoring.V3.ListTimeSeriesRequest,
      Google.Monitoring.V3.ListTimeSeriesResponse

  rpc :CreateTimeSeries, Google.Monitoring.V3.CreateTimeSeriesRequest, Google.Protobuf.Empty

  rpc :CreateServiceTimeSeries,
      Google.Monitoring.V3.CreateTimeSeriesRequest,
      Google.Protobuf.Empty
end

defmodule Google.Monitoring.V3.MetricService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Monitoring.V3.MetricService.Service
end