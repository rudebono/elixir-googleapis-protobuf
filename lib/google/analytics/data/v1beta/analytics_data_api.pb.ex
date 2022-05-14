defmodule Google.Analytics.Data.V1beta.CheckCompatibilityRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :property, 1, type: :string
  field :dimensions, 2, repeated: true, type: Google.Analytics.Data.V1beta.Dimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1beta.Metric

  field :dimension_filter, 4,
    type: Google.Analytics.Data.V1beta.FilterExpression,
    json_name: "dimensionFilter"

  field :metric_filter, 5,
    type: Google.Analytics.Data.V1beta.FilterExpression,
    json_name: "metricFilter"

  field :compatibility_filter, 6,
    type: Google.Analytics.Data.V1beta.Compatibility,
    json_name: "compatibilityFilter",
    enum: true
end
defmodule Google.Analytics.Data.V1beta.CheckCompatibilityResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :dimension_compatibilities, 1,
    repeated: true,
    type: Google.Analytics.Data.V1beta.DimensionCompatibility,
    json_name: "dimensionCompatibilities"

  field :metric_compatibilities, 2,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricCompatibility,
    json_name: "metricCompatibilities"
end
defmodule Google.Analytics.Data.V1beta.Metadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 3, type: :string
  field :dimensions, 1, repeated: true, type: Google.Analytics.Data.V1beta.DimensionMetadata
  field :metrics, 2, repeated: true, type: Google.Analytics.Data.V1beta.MetricMetadata
end
defmodule Google.Analytics.Data.V1beta.RunReportRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :property, 1, type: :string
  field :dimensions, 2, repeated: true, type: Google.Analytics.Data.V1beta.Dimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1beta.Metric

  field :date_ranges, 4,
    repeated: true,
    type: Google.Analytics.Data.V1beta.DateRange,
    json_name: "dateRanges"

  field :dimension_filter, 5,
    type: Google.Analytics.Data.V1beta.FilterExpression,
    json_name: "dimensionFilter"

  field :metric_filter, 6,
    type: Google.Analytics.Data.V1beta.FilterExpression,
    json_name: "metricFilter"

  field :offset, 7, type: :int64
  field :limit, 8, type: :int64

  field :metric_aggregations, 9,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricAggregation,
    json_name: "metricAggregations",
    enum: true

  field :order_bys, 10,
    repeated: true,
    type: Google.Analytics.Data.V1beta.OrderBy,
    json_name: "orderBys"

  field :currency_code, 11, type: :string, json_name: "currencyCode"
  field :cohort_spec, 12, type: Google.Analytics.Data.V1beta.CohortSpec, json_name: "cohortSpec"
  field :keep_empty_rows, 13, type: :bool, json_name: "keepEmptyRows"
  field :return_property_quota, 14, type: :bool, json_name: "returnPropertyQuota"
end
defmodule Google.Analytics.Data.V1beta.RunReportResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :dimension_headers, 1,
    repeated: true,
    type: Google.Analytics.Data.V1beta.DimensionHeader,
    json_name: "dimensionHeaders"

  field :metric_headers, 2,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricHeader,
    json_name: "metricHeaders"

  field :rows, 3, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :totals, 4, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :maximums, 5, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :minimums, 6, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :row_count, 7, type: :int32, json_name: "rowCount"
  field :metadata, 8, type: Google.Analytics.Data.V1beta.ResponseMetaData

  field :property_quota, 9,
    type: Google.Analytics.Data.V1beta.PropertyQuota,
    json_name: "propertyQuota"

  field :kind, 10, type: :string
end
defmodule Google.Analytics.Data.V1beta.RunPivotReportRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :property, 1, type: :string
  field :dimensions, 2, repeated: true, type: Google.Analytics.Data.V1beta.Dimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1beta.Metric

  field :date_ranges, 4,
    repeated: true,
    type: Google.Analytics.Data.V1beta.DateRange,
    json_name: "dateRanges"

  field :pivots, 5, repeated: true, type: Google.Analytics.Data.V1beta.Pivot

  field :dimension_filter, 6,
    type: Google.Analytics.Data.V1beta.FilterExpression,
    json_name: "dimensionFilter"

  field :metric_filter, 7,
    type: Google.Analytics.Data.V1beta.FilterExpression,
    json_name: "metricFilter"

  field :currency_code, 8, type: :string, json_name: "currencyCode"
  field :cohort_spec, 9, type: Google.Analytics.Data.V1beta.CohortSpec, json_name: "cohortSpec"
  field :keep_empty_rows, 10, type: :bool, json_name: "keepEmptyRows"
  field :return_property_quota, 11, type: :bool, json_name: "returnPropertyQuota"
end
defmodule Google.Analytics.Data.V1beta.RunPivotReportResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :pivot_headers, 1,
    repeated: true,
    type: Google.Analytics.Data.V1beta.PivotHeader,
    json_name: "pivotHeaders"

  field :dimension_headers, 2,
    repeated: true,
    type: Google.Analytics.Data.V1beta.DimensionHeader,
    json_name: "dimensionHeaders"

  field :metric_headers, 3,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricHeader,
    json_name: "metricHeaders"

  field :rows, 4, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :aggregates, 5, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :metadata, 6, type: Google.Analytics.Data.V1beta.ResponseMetaData

  field :property_quota, 7,
    type: Google.Analytics.Data.V1beta.PropertyQuota,
    json_name: "propertyQuota"

  field :kind, 8, type: :string
end
defmodule Google.Analytics.Data.V1beta.BatchRunReportsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :property, 1, type: :string
  field :requests, 2, repeated: true, type: Google.Analytics.Data.V1beta.RunReportRequest
end
defmodule Google.Analytics.Data.V1beta.BatchRunReportsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :reports, 1, repeated: true, type: Google.Analytics.Data.V1beta.RunReportResponse
  field :kind, 2, type: :string
end
defmodule Google.Analytics.Data.V1beta.BatchRunPivotReportsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :property, 1, type: :string
  field :requests, 2, repeated: true, type: Google.Analytics.Data.V1beta.RunPivotReportRequest
end
defmodule Google.Analytics.Data.V1beta.BatchRunPivotReportsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :pivot_reports, 1,
    repeated: true,
    type: Google.Analytics.Data.V1beta.RunPivotReportResponse,
    json_name: "pivotReports"

  field :kind, 2, type: :string
end
defmodule Google.Analytics.Data.V1beta.GetMetadataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Analytics.Data.V1beta.RunRealtimeReportRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :property, 1, type: :string
  field :dimensions, 2, repeated: true, type: Google.Analytics.Data.V1beta.Dimension
  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1beta.Metric

  field :dimension_filter, 4,
    type: Google.Analytics.Data.V1beta.FilterExpression,
    json_name: "dimensionFilter"

  field :metric_filter, 5,
    type: Google.Analytics.Data.V1beta.FilterExpression,
    json_name: "metricFilter"

  field :limit, 6, type: :int64

  field :metric_aggregations, 7,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricAggregation,
    json_name: "metricAggregations",
    enum: true

  field :order_bys, 8,
    repeated: true,
    type: Google.Analytics.Data.V1beta.OrderBy,
    json_name: "orderBys"

  field :return_property_quota, 9, type: :bool, json_name: "returnPropertyQuota"

  field :minute_ranges, 10,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MinuteRange,
    json_name: "minuteRanges"
end
defmodule Google.Analytics.Data.V1beta.RunRealtimeReportResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :dimension_headers, 1,
    repeated: true,
    type: Google.Analytics.Data.V1beta.DimensionHeader,
    json_name: "dimensionHeaders"

  field :metric_headers, 2,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricHeader,
    json_name: "metricHeaders"

  field :rows, 3, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :totals, 4, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :maximums, 5, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :minimums, 6, repeated: true, type: Google.Analytics.Data.V1beta.Row
  field :row_count, 7, type: :int32, json_name: "rowCount"

  field :property_quota, 8,
    type: Google.Analytics.Data.V1beta.PropertyQuota,
    json_name: "propertyQuota"

  field :kind, 9, type: :string
end
defmodule Google.Analytics.Data.V1beta.BetaAnalyticsData.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.analytics.data.v1beta.BetaAnalyticsData",
    protoc_gen_elixir_version: "0.10.0"

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

  rpc :CheckCompatibility,
      Google.Analytics.Data.V1beta.CheckCompatibilityRequest,
      Google.Analytics.Data.V1beta.CheckCompatibilityResponse
end

defmodule Google.Analytics.Data.V1beta.BetaAnalyticsData.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Analytics.Data.V1beta.BetaAnalyticsData.Service
end
