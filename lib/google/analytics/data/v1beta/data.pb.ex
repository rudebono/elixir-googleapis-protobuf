defmodule Google.Analytics.Data.V1beta.MetricAggregation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :METRIC_AGGREGATION_UNSPECIFIED, 0
  field :TOTAL, 1
  field :MINIMUM, 5
  field :MAXIMUM, 6
  field :COUNT, 4
end

defmodule Google.Analytics.Data.V1beta.MetricType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :METRIC_TYPE_UNSPECIFIED, 0
  field :TYPE_INTEGER, 1
  field :TYPE_FLOAT, 2
  field :TYPE_SECONDS, 4
  field :TYPE_MILLISECONDS, 5
  field :TYPE_MINUTES, 6
  field :TYPE_HOURS, 7
  field :TYPE_STANDARD, 8
  field :TYPE_CURRENCY, 9
  field :TYPE_FEET, 10
  field :TYPE_MILES, 11
  field :TYPE_METERS, 12
  field :TYPE_KILOMETERS, 13
end

defmodule Google.Analytics.Data.V1beta.RestrictedMetricType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RESTRICTED_METRIC_TYPE_UNSPECIFIED, 0
  field :COST_DATA, 1
  field :REVENUE_DATA, 2
end

defmodule Google.Analytics.Data.V1beta.Compatibility do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :COMPATIBILITY_UNSPECIFIED, 0
  field :COMPATIBLE, 1
  field :INCOMPATIBLE, 2
end

defmodule Google.Analytics.Data.V1beta.Filter.StringFilter.MatchType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MATCH_TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :BEGINS_WITH, 2
  field :ENDS_WITH, 3
  field :CONTAINS, 4
  field :FULL_REGEXP, 5
  field :PARTIAL_REGEXP, 6
end

defmodule Google.Analytics.Data.V1beta.Filter.NumericFilter.Operation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OPERATION_UNSPECIFIED, 0
  field :EQUAL, 1
  field :LESS_THAN, 2
  field :LESS_THAN_OR_EQUAL, 3
  field :GREATER_THAN, 4
  field :GREATER_THAN_OR_EQUAL, 5
end

defmodule Google.Analytics.Data.V1beta.OrderBy.DimensionOrderBy.OrderType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ORDER_TYPE_UNSPECIFIED, 0
  field :ALPHANUMERIC, 1
  field :CASE_INSENSITIVE_ALPHANUMERIC, 2
  field :NUMERIC, 3
end

defmodule Google.Analytics.Data.V1beta.CohortsRange.Granularity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :GRANULARITY_UNSPECIFIED, 0
  field :DAILY, 1
  field :WEEKLY, 2
  field :MONTHLY, 3
end

defmodule Google.Analytics.Data.V1beta.MetricMetadata.BlockedReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :BLOCKED_REASON_UNSPECIFIED, 0
  field :NO_REVENUE_METRICS, 1
  field :NO_COST_METRICS, 2
end

defmodule Google.Analytics.Data.V1beta.DateRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :start_date, 1, type: :string, json_name: "startDate"
  field :end_date, 2, type: :string, json_name: "endDate"
  field :name, 3, type: :string
end

defmodule Google.Analytics.Data.V1beta.MinuteRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :start_minutes_ago, 1, proto3_optional: true, type: :int32, json_name: "startMinutesAgo"
  field :end_minutes_ago, 2, proto3_optional: true, type: :int32, json_name: "endMinutesAgo"
  field :name, 3, type: :string
end

defmodule Google.Analytics.Data.V1beta.Dimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :dimension_expression, 2,
    type: Google.Analytics.Data.V1beta.DimensionExpression,
    json_name: "dimensionExpression"
end

defmodule Google.Analytics.Data.V1beta.DimensionExpression.CaseExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_name, 1, type: :string, json_name: "dimensionName"
end

defmodule Google.Analytics.Data.V1beta.DimensionExpression.ConcatenateExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_names, 1, repeated: true, type: :string, json_name: "dimensionNames"
  field :delimiter, 2, type: :string
end

defmodule Google.Analytics.Data.V1beta.DimensionExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_expression, 0

  field :lower_case, 4,
    type: Google.Analytics.Data.V1beta.DimensionExpression.CaseExpression,
    json_name: "lowerCase",
    oneof: 0

  field :upper_case, 5,
    type: Google.Analytics.Data.V1beta.DimensionExpression.CaseExpression,
    json_name: "upperCase",
    oneof: 0

  field :concatenate, 6,
    type: Google.Analytics.Data.V1beta.DimensionExpression.ConcatenateExpression,
    oneof: 0
end

defmodule Google.Analytics.Data.V1beta.Metric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :expression, 2, type: :string
  field :invisible, 3, type: :bool
end

defmodule Google.Analytics.Data.V1beta.Comparison do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_comparison, 0

  field :name, 1, proto3_optional: true, type: :string

  field :dimension_filter, 2,
    type: Google.Analytics.Data.V1beta.FilterExpression,
    json_name: "dimensionFilter",
    oneof: 0

  field :comparison, 3, type: :string, oneof: 0
end

defmodule Google.Analytics.Data.V1beta.FilterExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :expr, 0

  field :and_group, 1,
    type: Google.Analytics.Data.V1beta.FilterExpressionList,
    json_name: "andGroup",
    oneof: 0

  field :or_group, 2,
    type: Google.Analytics.Data.V1beta.FilterExpressionList,
    json_name: "orGroup",
    oneof: 0

  field :not_expression, 3,
    type: Google.Analytics.Data.V1beta.FilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :filter, 4, type: Google.Analytics.Data.V1beta.Filter, oneof: 0
end

defmodule Google.Analytics.Data.V1beta.FilterExpressionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :expressions, 1, repeated: true, type: Google.Analytics.Data.V1beta.FilterExpression
end

defmodule Google.Analytics.Data.V1beta.Filter.StringFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :match_type, 1,
    type: Google.Analytics.Data.V1beta.Filter.StringFilter.MatchType,
    json_name: "matchType",
    enum: true

  field :value, 2, type: :string
  field :case_sensitive, 3, type: :bool, json_name: "caseSensitive"
end

defmodule Google.Analytics.Data.V1beta.Filter.InListFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
  field :case_sensitive, 2, type: :bool, json_name: "caseSensitive"
end

defmodule Google.Analytics.Data.V1beta.Filter.NumericFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :operation, 1,
    type: Google.Analytics.Data.V1beta.Filter.NumericFilter.Operation,
    enum: true

  field :value, 2, type: Google.Analytics.Data.V1beta.NumericValue
end

defmodule Google.Analytics.Data.V1beta.Filter.BetweenFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :from_value, 1, type: Google.Analytics.Data.V1beta.NumericValue, json_name: "fromValue"
  field :to_value, 2, type: Google.Analytics.Data.V1beta.NumericValue, json_name: "toValue"
end

defmodule Google.Analytics.Data.V1beta.Filter.EmptyFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Analytics.Data.V1beta.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_filter, 0

  field :field_name, 1, type: :string, json_name: "fieldName"

  field :string_filter, 3,
    type: Google.Analytics.Data.V1beta.Filter.StringFilter,
    json_name: "stringFilter",
    oneof: 0

  field :in_list_filter, 4,
    type: Google.Analytics.Data.V1beta.Filter.InListFilter,
    json_name: "inListFilter",
    oneof: 0

  field :numeric_filter, 5,
    type: Google.Analytics.Data.V1beta.Filter.NumericFilter,
    json_name: "numericFilter",
    oneof: 0

  field :between_filter, 6,
    type: Google.Analytics.Data.V1beta.Filter.BetweenFilter,
    json_name: "betweenFilter",
    oneof: 0

  field :empty_filter, 8,
    type: Google.Analytics.Data.V1beta.Filter.EmptyFilter,
    json_name: "emptyFilter",
    oneof: 0
end

defmodule Google.Analytics.Data.V1beta.OrderBy.MetricOrderBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName"
end

defmodule Google.Analytics.Data.V1beta.OrderBy.DimensionOrderBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_name, 1, type: :string, json_name: "dimensionName"

  field :order_type, 2,
    type: Google.Analytics.Data.V1beta.OrderBy.DimensionOrderBy.OrderType,
    json_name: "orderType",
    enum: true
end

defmodule Google.Analytics.Data.V1beta.OrderBy.PivotOrderBy.PivotSelection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_name, 1, type: :string, json_name: "dimensionName"
  field :dimension_value, 2, type: :string, json_name: "dimensionValue"
end

defmodule Google.Analytics.Data.V1beta.OrderBy.PivotOrderBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName"

  field :pivot_selections, 2,
    repeated: true,
    type: Google.Analytics.Data.V1beta.OrderBy.PivotOrderBy.PivotSelection,
    json_name: "pivotSelections"
end

defmodule Google.Analytics.Data.V1beta.OrderBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_order_by, 0

  field :metric, 1, type: Google.Analytics.Data.V1beta.OrderBy.MetricOrderBy, oneof: 0
  field :dimension, 2, type: Google.Analytics.Data.V1beta.OrderBy.DimensionOrderBy, oneof: 0
  field :pivot, 3, type: Google.Analytics.Data.V1beta.OrderBy.PivotOrderBy, oneof: 0
  field :desc, 4, type: :bool
end

defmodule Google.Analytics.Data.V1beta.Pivot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :field_names, 1, repeated: true, type: :string, json_name: "fieldNames"

  field :order_bys, 2,
    repeated: true,
    type: Google.Analytics.Data.V1beta.OrderBy,
    json_name: "orderBys"

  field :offset, 3, type: :int64
  field :limit, 4, type: :int64

  field :metric_aggregations, 5,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricAggregation,
    json_name: "metricAggregations",
    enum: true
end

defmodule Google.Analytics.Data.V1beta.CohortSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cohorts, 1, repeated: true, type: Google.Analytics.Data.V1beta.Cohort

  field :cohorts_range, 2,
    type: Google.Analytics.Data.V1beta.CohortsRange,
    json_name: "cohortsRange"

  field :cohort_report_settings, 3,
    type: Google.Analytics.Data.V1beta.CohortReportSettings,
    json_name: "cohortReportSettings"
end

defmodule Google.Analytics.Data.V1beta.Cohort do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :dimension, 2, type: :string
  field :date_range, 3, type: Google.Analytics.Data.V1beta.DateRange, json_name: "dateRange"
end

defmodule Google.Analytics.Data.V1beta.CohortsRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :granularity, 1, type: Google.Analytics.Data.V1beta.CohortsRange.Granularity, enum: true
  field :start_offset, 2, type: :int32, json_name: "startOffset"
  field :end_offset, 3, type: :int32, json_name: "endOffset"
end

defmodule Google.Analytics.Data.V1beta.CohortReportSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :accumulate, 1, type: :bool
end

defmodule Google.Analytics.Data.V1beta.ResponseMetaData.SchemaRestrictionResponse.ActiveMetricRestriction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_name, 1, proto3_optional: true, type: :string, json_name: "metricName"

  field :restricted_metric_types, 2,
    repeated: true,
    type: Google.Analytics.Data.V1beta.RestrictedMetricType,
    json_name: "restrictedMetricTypes",
    enum: true
end

defmodule Google.Analytics.Data.V1beta.ResponseMetaData.SchemaRestrictionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :active_metric_restrictions, 1,
    repeated: true,
    type:
      Google.Analytics.Data.V1beta.ResponseMetaData.SchemaRestrictionResponse.ActiveMetricRestriction,
    json_name: "activeMetricRestrictions"
end

defmodule Google.Analytics.Data.V1beta.ResponseMetaData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data_loss_from_other_row, 3, type: :bool, json_name: "dataLossFromOtherRow"

  field :schema_restriction_response, 4,
    proto3_optional: true,
    type: Google.Analytics.Data.V1beta.ResponseMetaData.SchemaRestrictionResponse,
    json_name: "schemaRestrictionResponse"

  field :currency_code, 5, proto3_optional: true, type: :string, json_name: "currencyCode"
  field :time_zone, 6, proto3_optional: true, type: :string, json_name: "timeZone"
  field :empty_reason, 7, proto3_optional: true, type: :string, json_name: "emptyReason"

  field :subject_to_thresholding, 8,
    proto3_optional: true,
    type: :bool,
    json_name: "subjectToThresholding"

  field :sampling_metadatas, 9,
    repeated: true,
    type: Google.Analytics.Data.V1beta.SamplingMetadata,
    json_name: "samplingMetadatas"
end

defmodule Google.Analytics.Data.V1beta.SamplingMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :samples_read_count, 1, type: :int64, json_name: "samplesReadCount"
  field :sampling_space_size, 2, type: :int64, json_name: "samplingSpaceSize"
end

defmodule Google.Analytics.Data.V1beta.DimensionHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Analytics.Data.V1beta.MetricHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Analytics.Data.V1beta.MetricType, enum: true
end

defmodule Google.Analytics.Data.V1beta.PivotHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pivot_dimension_headers, 1,
    repeated: true,
    type: Google.Analytics.Data.V1beta.PivotDimensionHeader,
    json_name: "pivotDimensionHeaders"

  field :row_count, 2, type: :int32, json_name: "rowCount"
end

defmodule Google.Analytics.Data.V1beta.PivotDimensionHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_values, 1,
    repeated: true,
    type: Google.Analytics.Data.V1beta.DimensionValue,
    json_name: "dimensionValues"
end

defmodule Google.Analytics.Data.V1beta.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_values, 1,
    repeated: true,
    type: Google.Analytics.Data.V1beta.DimensionValue,
    json_name: "dimensionValues"

  field :metric_values, 2,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricValue,
    json_name: "metricValues"
end

defmodule Google.Analytics.Data.V1beta.DimensionValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_value, 0

  field :value, 1, type: :string, oneof: 0
end

defmodule Google.Analytics.Data.V1beta.MetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_value, 0

  field :value, 4, type: :string, oneof: 0
end

defmodule Google.Analytics.Data.V1beta.NumericValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_value, 0

  field :int64_value, 1, type: :int64, json_name: "int64Value", oneof: 0
  field :double_value, 2, type: :double, json_name: "doubleValue", oneof: 0
end

defmodule Google.Analytics.Data.V1beta.PropertyQuota do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tokens_per_day, 1,
    type: Google.Analytics.Data.V1beta.QuotaStatus,
    json_name: "tokensPerDay"

  field :tokens_per_hour, 2,
    type: Google.Analytics.Data.V1beta.QuotaStatus,
    json_name: "tokensPerHour"

  field :concurrent_requests, 3,
    type: Google.Analytics.Data.V1beta.QuotaStatus,
    json_name: "concurrentRequests"

  field :server_errors_per_project_per_hour, 4,
    type: Google.Analytics.Data.V1beta.QuotaStatus,
    json_name: "serverErrorsPerProjectPerHour"

  field :potentially_thresholded_requests_per_hour, 5,
    type: Google.Analytics.Data.V1beta.QuotaStatus,
    json_name: "potentiallyThresholdedRequestsPerHour"

  field :tokens_per_project_per_hour, 6,
    type: Google.Analytics.Data.V1beta.QuotaStatus,
    json_name: "tokensPerProjectPerHour"
end

defmodule Google.Analytics.Data.V1beta.QuotaStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :consumed, 1, proto3_optional: true, type: :int32
  field :remaining, 2, proto3_optional: true, type: :int32
end

defmodule Google.Analytics.Data.V1beta.DimensionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :api_name, 1, type: :string, json_name: "apiName"
  field :ui_name, 2, type: :string, json_name: "uiName"
  field :description, 3, type: :string
  field :deprecated_api_names, 4, repeated: true, type: :string, json_name: "deprecatedApiNames"
  field :custom_definition, 5, type: :bool, json_name: "customDefinition"
  field :category, 7, type: :string
end

defmodule Google.Analytics.Data.V1beta.MetricMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :api_name, 1, type: :string, json_name: "apiName"
  field :ui_name, 2, type: :string, json_name: "uiName"
  field :description, 3, type: :string
  field :deprecated_api_names, 4, repeated: true, type: :string, json_name: "deprecatedApiNames"
  field :type, 5, type: Google.Analytics.Data.V1beta.MetricType, enum: true
  field :expression, 6, type: :string
  field :custom_definition, 7, type: :bool, json_name: "customDefinition"

  field :blocked_reasons, 8,
    repeated: true,
    type: Google.Analytics.Data.V1beta.MetricMetadata.BlockedReason,
    json_name: "blockedReasons",
    enum: true

  field :category, 10, type: :string
end

defmodule Google.Analytics.Data.V1beta.ComparisonMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :api_name, 1, type: :string, json_name: "apiName"
  field :ui_name, 2, type: :string, json_name: "uiName"
  field :description, 3, type: :string
end

defmodule Google.Analytics.Data.V1beta.DimensionCompatibility do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_metadata, 1,
    proto3_optional: true,
    type: Google.Analytics.Data.V1beta.DimensionMetadata,
    json_name: "dimensionMetadata"

  field :compatibility, 2,
    proto3_optional: true,
    type: Google.Analytics.Data.V1beta.Compatibility,
    enum: true
end

defmodule Google.Analytics.Data.V1beta.MetricCompatibility do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_metadata, 1,
    proto3_optional: true,
    type: Google.Analytics.Data.V1beta.MetricMetadata,
    json_name: "metricMetadata"

  field :compatibility, 2,
    proto3_optional: true,
    type: Google.Analytics.Data.V1beta.Compatibility,
    enum: true
end
