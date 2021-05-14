defmodule Google.Monitoring.V3.ListTimeSeriesRequest.TimeSeriesView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FULL | :HEADERS

  field :FULL, 0

  field :HEADERS, 1
end

defmodule Google.Monitoring.V3.ListMonitoredResourceDescriptorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :filter, :page_size, :page_token]

  field :name, 5, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Monitoring.V3.ListMonitoredResourceDescriptorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_descriptors: [Google.Api.MonitoredResourceDescriptor.t()],
          next_page_token: String.t()
        }

  defstruct [:resource_descriptors, :next_page_token]

  field :resource_descriptors, 1, repeated: true, type: Google.Api.MonitoredResourceDescriptor
  field :next_page_token, 2, type: :string
end

defmodule Google.Monitoring.V3.GetMonitoredResourceDescriptorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 3, type: :string
end

defmodule Google.Monitoring.V3.ListMetricDescriptorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :filter, :page_size, :page_token]

  field :name, 5, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Monitoring.V3.ListMetricDescriptorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_descriptors: [Google.Api.MetricDescriptor.t()],
          next_page_token: String.t()
        }

  defstruct [:metric_descriptors, :next_page_token]

  field :metric_descriptors, 1, repeated: true, type: Google.Api.MetricDescriptor
  field :next_page_token, 2, type: :string
end

defmodule Google.Monitoring.V3.GetMetricDescriptorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 3, type: :string
end

defmodule Google.Monitoring.V3.CreateMetricDescriptorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          metric_descriptor: Google.Api.MetricDescriptor.t() | nil
        }

  defstruct [:name, :metric_descriptor]

  field :name, 3, type: :string
  field :metric_descriptor, 2, type: Google.Api.MetricDescriptor
end

defmodule Google.Monitoring.V3.DeleteMetricDescriptorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 3, type: :string
end

defmodule Google.Monitoring.V3.ListTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          filter: String.t(),
          interval: Google.Monitoring.V3.TimeInterval.t() | nil,
          aggregation: Google.Monitoring.V3.Aggregation.t() | nil,
          secondary_aggregation: Google.Monitoring.V3.Aggregation.t() | nil,
          order_by: String.t(),
          view: Google.Monitoring.V3.ListTimeSeriesRequest.TimeSeriesView.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [
    :name,
    :filter,
    :interval,
    :aggregation,
    :secondary_aggregation,
    :order_by,
    :view,
    :page_size,
    :page_token
  ]

  field :name, 10, type: :string
  field :filter, 2, type: :string
  field :interval, 4, type: Google.Monitoring.V3.TimeInterval
  field :aggregation, 5, type: Google.Monitoring.V3.Aggregation
  field :secondary_aggregation, 11, type: Google.Monitoring.V3.Aggregation
  field :order_by, 6, type: :string
  field :view, 7, type: Google.Monitoring.V3.ListTimeSeriesRequest.TimeSeriesView, enum: true
  field :page_size, 8, type: :int32
  field :page_token, 9, type: :string
end

defmodule Google.Monitoring.V3.ListTimeSeriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series: [Google.Monitoring.V3.TimeSeries.t()],
          next_page_token: String.t(),
          execution_errors: [Google.Rpc.Status.t()],
          unit: String.t()
        }

  defstruct [:time_series, :next_page_token, :execution_errors, :unit]

  field :time_series, 1, repeated: true, type: Google.Monitoring.V3.TimeSeries
  field :next_page_token, 2, type: :string
  field :execution_errors, 3, repeated: true, type: Google.Rpc.Status
  field :unit, 5, type: :string
end

defmodule Google.Monitoring.V3.CreateTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          time_series: [Google.Monitoring.V3.TimeSeries.t()]
        }

  defstruct [:name, :time_series]

  field :name, 3, type: :string
  field :time_series, 2, repeated: true, type: Google.Monitoring.V3.TimeSeries
end

defmodule Google.Monitoring.V3.CreateTimeSeriesError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series: Google.Monitoring.V3.TimeSeries.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:time_series, :status]

  field :time_series, 1, type: Google.Monitoring.V3.TimeSeries, deprecated: true
  field :status, 2, type: Google.Rpc.Status, deprecated: true
end

defmodule Google.Monitoring.V3.CreateTimeSeriesSummary.Error do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Status.t() | nil,
          point_count: integer
        }

  defstruct [:status, :point_count]

  field :status, 1, type: Google.Rpc.Status
  field :point_count, 2, type: :int32
end

defmodule Google.Monitoring.V3.CreateTimeSeriesSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          total_point_count: integer,
          success_point_count: integer,
          errors: [Google.Monitoring.V3.CreateTimeSeriesSummary.Error.t()]
        }

  defstruct [:total_point_count, :success_point_count, :errors]

  field :total_point_count, 1, type: :int32
  field :success_point_count, 2, type: :int32
  field :errors, 3, repeated: true, type: Google.Monitoring.V3.CreateTimeSeriesSummary.Error
end

defmodule Google.Monitoring.V3.QueryTimeSeriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          query: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :query, :page_size, :page_token]

  field :name, 1, type: :string
  field :query, 7, type: :string
  field :page_size, 9, type: :int32
  field :page_token, 10, type: :string
end

defmodule Google.Monitoring.V3.QueryTimeSeriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series_descriptor: Google.Monitoring.V3.TimeSeriesDescriptor.t() | nil,
          time_series_data: [Google.Monitoring.V3.TimeSeriesData.t()],
          next_page_token: String.t(),
          partial_errors: [Google.Rpc.Status.t()]
        }

  defstruct [:time_series_descriptor, :time_series_data, :next_page_token, :partial_errors]

  field :time_series_descriptor, 8, type: Google.Monitoring.V3.TimeSeriesDescriptor
  field :time_series_data, 9, repeated: true, type: Google.Monitoring.V3.TimeSeriesData
  field :next_page_token, 10, type: :string
  field :partial_errors, 11, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Monitoring.V3.QueryErrorList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Monitoring.V3.QueryError.t()],
          error_summary: String.t()
        }

  defstruct [:errors, :error_summary]

  field :errors, 1, repeated: true, type: Google.Monitoring.V3.QueryError
  field :error_summary, 2, type: :string
end

defmodule Google.Monitoring.V3.MetricService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.monitoring.v3.MetricService"

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
end

defmodule Google.Monitoring.V3.MetricService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Monitoring.V3.MetricService.Service
end
