defmodule Google.Analytics.Data.V1alpha.Metadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          dimensions: [Google.Analytics.Data.V1alpha.DimensionMetadata.t()],
          metrics: [Google.Analytics.Data.V1alpha.MetricMetadata.t()]
        }

  defstruct [:name, :dimensions, :metrics]

  field :name, 3, type: :string
  field :dimensions, 1, repeated: true, type: Google.Analytics.Data.V1alpha.DimensionMetadata
  field :metrics, 2, repeated: true, type: Google.Analytics.Data.V1alpha.MetricMetadata
end

defmodule Google.Analytics.Data.V1alpha.RunReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Analytics.Data.V1alpha.Entity.t() | nil,
          dimensions: [Google.Analytics.Data.V1alpha.Dimension.t()],
          metrics: [Google.Analytics.Data.V1alpha.Metric.t()],
          date_ranges: [Google.Analytics.Data.V1alpha.DateRange.t()],
          offset: integer,
          limit: integer,
          metric_aggregations: [[Google.Analytics.Data.V1alpha.MetricAggregation.t()]],
          dimension_filter: Google.Analytics.Data.V1alpha.FilterExpression.t() | nil,
          metric_filter: Google.Analytics.Data.V1alpha.FilterExpression.t() | nil,
          order_bys: [Google.Analytics.Data.V1alpha.OrderBy.t()],
          currency_code: String.t(),
          cohort_spec: Google.Analytics.Data.V1alpha.CohortSpec.t() | nil,
          keep_empty_rows: boolean,
          return_property_quota: boolean
        }

  defstruct [
    :entity,
    :dimensions,
    :metrics,
    :date_ranges,
    :offset,
    :limit,
    :metric_aggregations,
    :dimension_filter,
    :metric_filter,
    :order_bys,
    :currency_code,
    :cohort_spec,
    :keep_empty_rows,
    :return_property_quota
  ]

  field :entity, 1, type: Google.Analytics.Data.V1alpha.Entity
  field :dimensions, 2, repeated: true, type: Google.Analytics.Data.V1alpha.Dimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1alpha.Metric
  field :date_ranges, 4, repeated: true, type: Google.Analytics.Data.V1alpha.DateRange
  field :offset, 5, type: :int64
  field :limit, 6, type: :int64

  field :metric_aggregations, 7,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.MetricAggregation,
    enum: true

  field :dimension_filter, 8, type: Google.Analytics.Data.V1alpha.FilterExpression
  field :metric_filter, 9, type: Google.Analytics.Data.V1alpha.FilterExpression
  field :order_bys, 10, repeated: true, type: Google.Analytics.Data.V1alpha.OrderBy
  field :currency_code, 11, type: :string
  field :cohort_spec, 12, type: Google.Analytics.Data.V1alpha.CohortSpec
  field :keep_empty_rows, 13, type: :bool
  field :return_property_quota, 14, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.RunReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_headers: [Google.Analytics.Data.V1alpha.DimensionHeader.t()],
          metric_headers: [Google.Analytics.Data.V1alpha.MetricHeader.t()],
          rows: [Google.Analytics.Data.V1alpha.Row.t()],
          totals: [Google.Analytics.Data.V1alpha.Row.t()],
          maximums: [Google.Analytics.Data.V1alpha.Row.t()],
          minimums: [Google.Analytics.Data.V1alpha.Row.t()],
          row_count: integer,
          metadata: Google.Analytics.Data.V1alpha.ResponseMetaData.t() | nil,
          property_quota: Google.Analytics.Data.V1alpha.PropertyQuota.t() | nil
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
    :property_quota
  ]

  field :dimension_headers, 11,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.DimensionHeader

  field :metric_headers, 1, repeated: true, type: Google.Analytics.Data.V1alpha.MetricHeader
  field :rows, 2, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :totals, 8, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :maximums, 9, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :minimums, 10, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :row_count, 12, type: :int32
  field :metadata, 6, type: Google.Analytics.Data.V1alpha.ResponseMetaData
  field :property_quota, 7, type: Google.Analytics.Data.V1alpha.PropertyQuota
end

defmodule Google.Analytics.Data.V1alpha.RunPivotReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Analytics.Data.V1alpha.Entity.t() | nil,
          dimensions: [Google.Analytics.Data.V1alpha.Dimension.t()],
          metrics: [Google.Analytics.Data.V1alpha.Metric.t()],
          dimension_filter: Google.Analytics.Data.V1alpha.FilterExpression.t() | nil,
          metric_filter: Google.Analytics.Data.V1alpha.FilterExpression.t() | nil,
          pivots: [Google.Analytics.Data.V1alpha.Pivot.t()],
          date_ranges: [Google.Analytics.Data.V1alpha.DateRange.t()],
          currency_code: String.t(),
          cohort_spec: Google.Analytics.Data.V1alpha.CohortSpec.t() | nil,
          keep_empty_rows: boolean,
          return_property_quota: boolean
        }

  defstruct [
    :entity,
    :dimensions,
    :metrics,
    :dimension_filter,
    :metric_filter,
    :pivots,
    :date_ranges,
    :currency_code,
    :cohort_spec,
    :keep_empty_rows,
    :return_property_quota
  ]

  field :entity, 1, type: Google.Analytics.Data.V1alpha.Entity
  field :dimensions, 2, repeated: true, type: Google.Analytics.Data.V1alpha.Dimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1alpha.Metric
  field :dimension_filter, 4, type: Google.Analytics.Data.V1alpha.FilterExpression
  field :metric_filter, 5, type: Google.Analytics.Data.V1alpha.FilterExpression
  field :pivots, 6, repeated: true, type: Google.Analytics.Data.V1alpha.Pivot
  field :date_ranges, 7, repeated: true, type: Google.Analytics.Data.V1alpha.DateRange
  field :currency_code, 8, type: :string
  field :cohort_spec, 9, type: Google.Analytics.Data.V1alpha.CohortSpec
  field :keep_empty_rows, 10, type: :bool
  field :return_property_quota, 11, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.RunPivotReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pivot_headers: [Google.Analytics.Data.V1alpha.PivotHeader.t()],
          dimension_headers: [Google.Analytics.Data.V1alpha.DimensionHeader.t()],
          metric_headers: [Google.Analytics.Data.V1alpha.MetricHeader.t()],
          rows: [Google.Analytics.Data.V1alpha.Row.t()],
          aggregates: [Google.Analytics.Data.V1alpha.Row.t()],
          metadata: Google.Analytics.Data.V1alpha.ResponseMetaData.t() | nil,
          property_quota: Google.Analytics.Data.V1alpha.PropertyQuota.t() | nil
        }

  defstruct [
    :pivot_headers,
    :dimension_headers,
    :metric_headers,
    :rows,
    :aggregates,
    :metadata,
    :property_quota
  ]

  field :pivot_headers, 1, repeated: true, type: Google.Analytics.Data.V1alpha.PivotHeader
  field :dimension_headers, 7, repeated: true, type: Google.Analytics.Data.V1alpha.DimensionHeader
  field :metric_headers, 2, repeated: true, type: Google.Analytics.Data.V1alpha.MetricHeader
  field :rows, 3, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :aggregates, 4, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :metadata, 5, type: Google.Analytics.Data.V1alpha.ResponseMetaData
  field :property_quota, 6, type: Google.Analytics.Data.V1alpha.PropertyQuota
end

defmodule Google.Analytics.Data.V1alpha.BatchRunReportsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Analytics.Data.V1alpha.Entity.t() | nil,
          requests: [Google.Analytics.Data.V1alpha.RunReportRequest.t()]
        }

  defstruct [:entity, :requests]

  field :entity, 1, type: Google.Analytics.Data.V1alpha.Entity
  field :requests, 2, repeated: true, type: Google.Analytics.Data.V1alpha.RunReportRequest
end

defmodule Google.Analytics.Data.V1alpha.BatchRunReportsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reports: [Google.Analytics.Data.V1alpha.RunReportResponse.t()]
        }

  defstruct [:reports]

  field :reports, 1, repeated: true, type: Google.Analytics.Data.V1alpha.RunReportResponse
end

defmodule Google.Analytics.Data.V1alpha.BatchRunPivotReportsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity: Google.Analytics.Data.V1alpha.Entity.t() | nil,
          requests: [Google.Analytics.Data.V1alpha.RunPivotReportRequest.t()]
        }

  defstruct [:entity, :requests]

  field :entity, 1, type: Google.Analytics.Data.V1alpha.Entity
  field :requests, 2, repeated: true, type: Google.Analytics.Data.V1alpha.RunPivotReportRequest
end

defmodule Google.Analytics.Data.V1alpha.BatchRunPivotReportsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pivot_reports: [Google.Analytics.Data.V1alpha.RunPivotReportResponse.t()]
        }

  defstruct [:pivot_reports]

  field :pivot_reports, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.RunPivotReportResponse
end

defmodule Google.Analytics.Data.V1alpha.GetMetadataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Data.V1alpha.RunRealtimeReportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property: String.t(),
          dimensions: [Google.Analytics.Data.V1alpha.Dimension.t()],
          metrics: [Google.Analytics.Data.V1alpha.Metric.t()],
          limit: integer,
          dimension_filter: Google.Analytics.Data.V1alpha.FilterExpression.t() | nil,
          metric_filter: Google.Analytics.Data.V1alpha.FilterExpression.t() | nil,
          metric_aggregations: [[Google.Analytics.Data.V1alpha.MetricAggregation.t()]],
          order_bys: [Google.Analytics.Data.V1alpha.OrderBy.t()],
          return_property_quota: boolean
        }

  defstruct [
    :property,
    :dimensions,
    :metrics,
    :limit,
    :dimension_filter,
    :metric_filter,
    :metric_aggregations,
    :order_bys,
    :return_property_quota
  ]

  field :property, 1, type: :string
  field :dimensions, 2, repeated: true, type: Google.Analytics.Data.V1alpha.Dimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1alpha.Metric
  field :limit, 4, type: :int64
  field :dimension_filter, 5, type: Google.Analytics.Data.V1alpha.FilterExpression
  field :metric_filter, 6, type: Google.Analytics.Data.V1alpha.FilterExpression

  field :metric_aggregations, 7,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.MetricAggregation,
    enum: true

  field :order_bys, 8, repeated: true, type: Google.Analytics.Data.V1alpha.OrderBy
  field :return_property_quota, 9, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.RunRealtimeReportResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_headers: [Google.Analytics.Data.V1alpha.DimensionHeader.t()],
          metric_headers: [Google.Analytics.Data.V1alpha.MetricHeader.t()],
          rows: [Google.Analytics.Data.V1alpha.Row.t()],
          totals: [Google.Analytics.Data.V1alpha.Row.t()],
          maximums: [Google.Analytics.Data.V1alpha.Row.t()],
          minimums: [Google.Analytics.Data.V1alpha.Row.t()],
          row_count: integer,
          property_quota: Google.Analytics.Data.V1alpha.PropertyQuota.t() | nil
        }

  defstruct [
    :dimension_headers,
    :metric_headers,
    :rows,
    :totals,
    :maximums,
    :minimums,
    :row_count,
    :property_quota
  ]

  field :dimension_headers, 1, repeated: true, type: Google.Analytics.Data.V1alpha.DimensionHeader
  field :metric_headers, 2, repeated: true, type: Google.Analytics.Data.V1alpha.MetricHeader
  field :rows, 3, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :totals, 4, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :maximums, 5, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :minimums, 6, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :row_count, 7, type: :int32
  field :property_quota, 8, type: Google.Analytics.Data.V1alpha.PropertyQuota
end

defmodule Google.Analytics.Data.V1alpha.AlphaAnalyticsData.Service do
  @moduledoc false
  use GRPC.Service, name: "google.analytics.data.v1alpha.AlphaAnalyticsData"

  rpc :RunReport,
      Google.Analytics.Data.V1alpha.RunReportRequest,
      Google.Analytics.Data.V1alpha.RunReportResponse

  rpc :RunPivotReport,
      Google.Analytics.Data.V1alpha.RunPivotReportRequest,
      Google.Analytics.Data.V1alpha.RunPivotReportResponse

  rpc :BatchRunReports,
      Google.Analytics.Data.V1alpha.BatchRunReportsRequest,
      Google.Analytics.Data.V1alpha.BatchRunReportsResponse

  rpc :BatchRunPivotReports,
      Google.Analytics.Data.V1alpha.BatchRunPivotReportsRequest,
      Google.Analytics.Data.V1alpha.BatchRunPivotReportsResponse

  rpc :GetMetadata,
      Google.Analytics.Data.V1alpha.GetMetadataRequest,
      Google.Analytics.Data.V1alpha.Metadata

  rpc :RunRealtimeReport,
      Google.Analytics.Data.V1alpha.RunRealtimeReportRequest,
      Google.Analytics.Data.V1alpha.RunRealtimeReportResponse
end

defmodule Google.Analytics.Data.V1alpha.AlphaAnalyticsData.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Analytics.Data.V1alpha.AlphaAnalyticsData.Service
end
