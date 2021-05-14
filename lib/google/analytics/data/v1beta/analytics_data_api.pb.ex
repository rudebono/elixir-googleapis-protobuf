defmodule Google.Analytics.Data.V1beta.Metadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          dimensions: [Google.Analytics.Data.V1beta.DimensionMetadata.t()],
          metrics: [Google.Analytics.Data.V1beta.MetricMetadata.t()]
        }

  defstruct [:name, :dimensions, :metrics]

  field :name, 3, type: :string
  field :dimensions, 1, repeated: true, type: Google.Analytics.Data.V1beta.DimensionMetadata
  field :metrics, 2, repeated: true, type: Google.Analytics.Data.V1beta.MetricMetadata
end

defmodule Google.Analytics.Data.V1beta.RunReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: String.t(),
          dimensions: [Google.Analytics.Data.V1beta.Dimension.t()],
          metrics: [Google.Analytics.Data.V1beta.Metric.t()],
          date_ranges: [Google.Analytics.Data.V1beta.DateRange.t()],
          dimension_filter: Google.Analytics.Data.V1beta.FilterExpression.t() | nil,
          metric_filter: Google.Analytics.Data.V1beta.FilterExpression.t() | nil,
          offset: integer,
          limit: integer,
          metric_aggregations: [[Google.Analytics.Data.V1beta.MetricAggregation.t()]],
          order_bys: [Google.Analytics.Data.V1beta.OrderBy.t()],
          currency_code: String.t(),
          cohort_spec: Google.Analytics.Data.V1beta.CohortSpec.t() | nil,
          keep_empty_rows: boolean,
          return_property_quota: boolean
        }

  defstruct [
    :property,
    :dimensions,
    :metrics,
    :date_ranges,
    :dimension_filter,
    :metric_filter,
    :offset,
    :limit,
    :metric_aggregations,
    :order_bys,
    :currency_code,
    :cohort_spec,
    :keep_empty_rows,
    :return_property_quota
  ]

  field :property, 1, type: :string
  field :dimensions, 2, repeated: true, type: Google.Analytics.Data.V1beta.Dimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1beta.Metric
  field :date_ranges, 4, repeated: true, type: Google.Analytics.Data.V1beta.DateRange
  field :dimension_filter, 5, type: Google.Analytics.Data.V1beta.FilterExpression
  field :metric_filter, 6, type: Google.Analytics.Data.V1beta.FilterExpression
  field :offset, 7, type: :int64
  field :limit, 8, type: :int64

  field :metric_aggregations, 9,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricAggregation,
    enum: true

  field :order_bys, 10, repeated: true, type: Google.Analytics.Data.V1beta.OrderBy
  field :currency_code, 11, type: :string
  field :cohort_spec, 12, type: Google.Analytics.Data.V1beta.CohortSpec
  field :keep_empty_rows, 13, type: :bool
  field :return_property_quota, 14, type: :bool
end

defmodule Google.Analytics.Data.V1beta.RunReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_headers: [Google.Analytics.Data.V1beta.DimensionHeader.t()],
          metric_headers: [Google.Analytics.Data.V1beta.MetricHeader.t()],
          rows: [Google.Analytics.Data.V1beta.Row.t()],
          totals: [Google.Analytics.Data.V1beta.Row.t()],
          maximums: [Google.Analytics.Data.V1beta.Row.t()],
          minimums: [Google.Analytics.Data.V1beta.Row.t()],
          row_count: integer,
          metadata: Google.Analytics.Data.V1beta.ResponseMetaData.t() | nil,
          property_quota: Google.Analytics.Data.V1beta.PropertyQuota.t() | nil,
          kind: String.t()
        }

  defstruct [
    :dimension_headers,
    :metric_headers,
    :rows,
    :totals,
    :maximums,
    :minimums,
    :row_count,
    :metadata,
    :property_quota,
    :kind
  ]

  field :dimension_headers, 1, repeated: true, type: Google.Analytics.Data.V1beta.DimensionHeader
  field :metric_headers, 2, repeated: true, type: Google.Analytics.Data.V1beta.MetricHeader
  field :rows, 3, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :totals, 4, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :maximums, 5, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :minimums, 6, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :row_count, 7, type: :int32
  field :metadata, 8, type: Google.Analytics.Data.V1beta.ResponseMetaData
  field :property_quota, 9, type: Google.Analytics.Data.V1beta.PropertyQuota
  field :kind, 10, type: :string
end

defmodule Google.Analytics.Data.V1beta.RunPivotReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: String.t(),
          dimensions: [Google.Analytics.Data.V1beta.Dimension.t()],
          metrics: [Google.Analytics.Data.V1beta.Metric.t()],
          date_ranges: [Google.Analytics.Data.V1beta.DateRange.t()],
          pivots: [Google.Analytics.Data.V1beta.Pivot.t()],
          dimension_filter: Google.Analytics.Data.V1beta.FilterExpression.t() | nil,
          metric_filter: Google.Analytics.Data.V1beta.FilterExpression.t() | nil,
          currency_code: String.t(),
          cohort_spec: Google.Analytics.Data.V1beta.CohortSpec.t() | nil,
          keep_empty_rows: boolean,
          return_property_quota: boolean
        }

  defstruct [
    :property,
    :dimensions,
    :metrics,
    :date_ranges,
    :pivots,
    :dimension_filter,
    :metric_filter,
    :currency_code,
    :cohort_spec,
    :keep_empty_rows,
    :return_property_quota
  ]

  field :property, 1, type: :string
  field :dimensions, 2, repeated: true, type: Google.Analytics.Data.V1beta.Dimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1beta.Metric
  field :date_ranges, 4, repeated: true, type: Google.Analytics.Data.V1beta.DateRange
  field :pivots, 5, repeated: true, type: Google.Analytics.Data.V1beta.Pivot
  field :dimension_filter, 6, type: Google.Analytics.Data.V1beta.FilterExpression
  field :metric_filter, 7, type: Google.Analytics.Data.V1beta.FilterExpression
  field :currency_code, 8, type: :string
  field :cohort_spec, 9, type: Google.Analytics.Data.V1beta.CohortSpec
  field :keep_empty_rows, 10, type: :bool
  field :return_property_quota, 11, type: :bool
end

defmodule Google.Analytics.Data.V1beta.RunPivotReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pivot_headers: [Google.Analytics.Data.V1beta.PivotHeader.t()],
          dimension_headers: [Google.Analytics.Data.V1beta.DimensionHeader.t()],
          metric_headers: [Google.Analytics.Data.V1beta.MetricHeader.t()],
          rows: [Google.Analytics.Data.V1beta.Row.t()],
          aggregates: [Google.Analytics.Data.V1beta.Row.t()],
          metadata: Google.Analytics.Data.V1beta.ResponseMetaData.t() | nil,
          property_quota: Google.Analytics.Data.V1beta.PropertyQuota.t() | nil,
          kind: String.t()
        }

  defstruct [
    :pivot_headers,
    :dimension_headers,
    :metric_headers,
    :rows,
    :aggregates,
    :metadata,
    :property_quota,
    :kind
  ]

  field :pivot_headers, 1, repeated: true, type: Google.Analytics.Data.V1beta.PivotHeader
  field :dimension_headers, 2, repeated: true, type: Google.Analytics.Data.V1beta.DimensionHeader
  field :metric_headers, 3, repeated: true, type: Google.Analytics.Data.V1beta.MetricHeader
  field :rows, 4, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :aggregates, 5, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :metadata, 6, type: Google.Analytics.Data.V1beta.ResponseMetaData
  field :property_quota, 7, type: Google.Analytics.Data.V1beta.PropertyQuota
  field :kind, 8, type: :string
end

defmodule Google.Analytics.Data.V1beta.BatchRunReportsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: String.t(),
          requests: [Google.Analytics.Data.V1beta.RunReportRequest.t()]
        }

  defstruct [:property, :requests]

  field :property, 1, type: :string
  field :requests, 2, repeated: true, type: Google.Analytics.Data.V1beta.RunReportRequest
end

defmodule Google.Analytics.Data.V1beta.BatchRunReportsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reports: [Google.Analytics.Data.V1beta.RunReportResponse.t()],
          kind: String.t()
        }

  defstruct [:reports, :kind]

  field :reports, 1, repeated: true, type: Google.Analytics.Data.V1beta.RunReportResponse
  field :kind, 2, type: :string
end

defmodule Google.Analytics.Data.V1beta.BatchRunPivotReportsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: String.t(),
          requests: [Google.Analytics.Data.V1beta.RunPivotReportRequest.t()]
        }

  defstruct [:property, :requests]

  field :property, 1, type: :string
  field :requests, 2, repeated: true, type: Google.Analytics.Data.V1beta.RunPivotReportRequest
end

defmodule Google.Analytics.Data.V1beta.BatchRunPivotReportsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pivot_reports: [Google.Analytics.Data.V1beta.RunPivotReportResponse.t()],
          kind: String.t()
        }

  defstruct [:pivot_reports, :kind]

  field :pivot_reports, 1,
    repeated: true,
    type: Google.Analytics.Data.V1beta.RunPivotReportResponse

  field :kind, 2, type: :string
end

defmodule Google.Analytics.Data.V1beta.GetMetadataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Data.V1beta.RunRealtimeReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: String.t(),
          dimensions: [Google.Analytics.Data.V1beta.Dimension.t()],
          metrics: [Google.Analytics.Data.V1beta.Metric.t()],
          dimension_filter: Google.Analytics.Data.V1beta.FilterExpression.t() | nil,
          metric_filter: Google.Analytics.Data.V1beta.FilterExpression.t() | nil,
          limit: integer,
          metric_aggregations: [[Google.Analytics.Data.V1beta.MetricAggregation.t()]],
          order_bys: [Google.Analytics.Data.V1beta.OrderBy.t()],
          return_property_quota: boolean
        }

  defstruct [
    :property,
    :dimensions,
    :metrics,
    :dimension_filter,
    :metric_filter,
    :limit,
    :metric_aggregations,
    :order_bys,
    :return_property_quota
  ]

  field :property, 1, type: :string
  field :dimensions, 2, repeated: true, type: Google.Analytics.Data.V1beta.Dimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1beta.Metric
  field :dimension_filter, 4, type: Google.Analytics.Data.V1beta.FilterExpression
  field :metric_filter, 5, type: Google.Analytics.Data.V1beta.FilterExpression
  field :limit, 6, type: :int64

  field :metric_aggregations, 7,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricAggregation,
    enum: true

  field :order_bys, 8, repeated: true, type: Google.Analytics.Data.V1beta.OrderBy
  field :return_property_quota, 9, type: :bool
end

defmodule Google.Analytics.Data.V1beta.RunRealtimeReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_headers: [Google.Analytics.Data.V1beta.DimensionHeader.t()],
          metric_headers: [Google.Analytics.Data.V1beta.MetricHeader.t()],
          rows: [Google.Analytics.Data.V1beta.Row.t()],
          totals: [Google.Analytics.Data.V1beta.Row.t()],
          maximums: [Google.Analytics.Data.V1beta.Row.t()],
          minimums: [Google.Analytics.Data.V1beta.Row.t()],
          row_count: integer,
          property_quota: Google.Analytics.Data.V1beta.PropertyQuota.t() | nil,
          kind: String.t()
        }

  defstruct [
    :dimension_headers,
    :metric_headers,
    :rows,
    :totals,
    :maximums,
    :minimums,
    :row_count,
    :property_quota,
    :kind
  ]

  field :dimension_headers, 1, repeated: true, type: Google.Analytics.Data.V1beta.DimensionHeader
  field :metric_headers, 2, repeated: true, type: Google.Analytics.Data.V1beta.MetricHeader
  field :rows, 3, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :totals, 4, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :maximums, 5, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :minimums, 6, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :row_count, 7, type: :int32
  field :property_quota, 8, type: Google.Analytics.Data.V1beta.PropertyQuota
  field :kind, 9, type: :string
end

defmodule Google.Analytics.Data.V1beta.BetaAnalyticsData.Service do
  @moduledoc false
  use GRPC.Service, name: "google.analytics.data.v1beta.BetaAnalyticsData"

  rpc :RunReport,
      Google.Analytics.Data.V1beta.RunReportRequest,
      Google.Analytics.Data.V1beta.RunReportResponse

  rpc :RunPivotReport,
      Google.Analytics.Data.V1beta.RunPivotReportRequest,
      Google.Analytics.Data.V1beta.RunPivotReportResponse

  rpc :BatchRunReports,
      Google.Analytics.Data.V1beta.BatchRunReportsRequest,
      Google.Analytics.Data.V1beta.BatchRunReportsResponse

  rpc :BatchRunPivotReports,
      Google.Analytics.Data.V1beta.BatchRunPivotReportsRequest,
      Google.Analytics.Data.V1beta.BatchRunPivotReportsResponse

  rpc :GetMetadata,
      Google.Analytics.Data.V1beta.GetMetadataRequest,
      Google.Analytics.Data.V1beta.Metadata

  rpc :RunRealtimeReport,
      Google.Analytics.Data.V1beta.RunRealtimeReportRequest,
      Google.Analytics.Data.V1beta.RunRealtimeReportResponse
end

defmodule Google.Analytics.Data.V1beta.BetaAnalyticsData.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Analytics.Data.V1beta.BetaAnalyticsData.Service
end
