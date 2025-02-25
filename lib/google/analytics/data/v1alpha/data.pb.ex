defmodule Google.Analytics.Data.V1alpha.UserCriteriaScoping do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :USER_CRITERIA_SCOPING_UNSPECIFIED, 0
  field :USER_CRITERIA_WITHIN_SAME_EVENT, 1
  field :USER_CRITERIA_WITHIN_SAME_SESSION, 2
  field :USER_CRITERIA_ACROSS_ALL_SESSIONS, 3
end

defmodule Google.Analytics.Data.V1alpha.UserExclusionDuration do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :USER_EXCLUSION_DURATION_UNSPECIFIED, 0
  field :USER_EXCLUSION_TEMPORARY, 1
  field :USER_EXCLUSION_PERMANENT, 2
end

defmodule Google.Analytics.Data.V1alpha.SessionCriteriaScoping do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SESSION_CRITERIA_SCOPING_UNSPECIFIED, 0
  field :SESSION_CRITERIA_WITHIN_SAME_EVENT, 1
  field :SESSION_CRITERIA_WITHIN_SAME_SESSION, 2
end

defmodule Google.Analytics.Data.V1alpha.SessionExclusionDuration do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SESSION_EXCLUSION_DURATION_UNSPECIFIED, 0
  field :SESSION_EXCLUSION_TEMPORARY, 1
  field :SESSION_EXCLUSION_PERMANENT, 2
end

defmodule Google.Analytics.Data.V1alpha.EventCriteriaScoping do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EVENT_CRITERIA_SCOPING_UNSPECIFIED, 0
  field :EVENT_CRITERIA_WITHIN_SAME_EVENT, 1
end

defmodule Google.Analytics.Data.V1alpha.EventExclusionDuration do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EVENT_EXCLUSION_DURATION_UNSPECIFIED, 0
  field :EVENT_EXCLUSION_PERMANENT, 1
end

defmodule Google.Analytics.Data.V1alpha.MetricAggregation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :METRIC_AGGREGATION_UNSPECIFIED, 0
  field :TOTAL, 1
  field :MINIMUM, 5
  field :MAXIMUM, 6
  field :COUNT, 4
end

defmodule Google.Analytics.Data.V1alpha.MetricType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Analytics.Data.V1alpha.RestrictedMetricType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESTRICTED_METRIC_TYPE_UNSPECIFIED, 0
  field :COST_DATA, 1
  field :REVENUE_DATA, 2
end

defmodule Google.Analytics.Data.V1alpha.SamplingLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SAMPLING_LEVEL_UNSPECIFIED, 0
  field :LOW, 1
  field :MEDIUM, 2
  field :UNSAMPLED, 3
end

defmodule Google.Analytics.Data.V1alpha.StringFilter.MatchType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MATCH_TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :BEGINS_WITH, 2
  field :ENDS_WITH, 3
  field :CONTAINS, 4
  field :FULL_REGEXP, 5
  field :PARTIAL_REGEXP, 6
end

defmodule Google.Analytics.Data.V1alpha.NumericFilter.Operation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OPERATION_UNSPECIFIED, 0
  field :EQUAL, 1
  field :LESS_THAN, 2
  field :LESS_THAN_OR_EQUAL, 3
  field :GREATER_THAN, 4
  field :GREATER_THAN_OR_EQUAL, 5
end

defmodule Google.Analytics.Data.V1alpha.OrderBy.DimensionOrderBy.OrderType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ORDER_TYPE_UNSPECIFIED, 0
  field :ALPHANUMERIC, 1
  field :CASE_INSENSITIVE_ALPHANUMERIC, 2
  field :NUMERIC, 3
end

defmodule Google.Analytics.Data.V1alpha.CohortsRange.Granularity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GRANULARITY_UNSPECIFIED, 0
  field :DAILY, 1
  field :WEEKLY, 2
  field :MONTHLY, 3
end

defmodule Google.Analytics.Data.V1alpha.DateRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_date, 1, type: :string, json_name: "startDate"
  field :end_date, 2, type: :string, json_name: "endDate"
  field :name, 3, type: :string
end

defmodule Google.Analytics.Data.V1alpha.Dimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string

  field :dimension_expression, 2,
    type: Google.Analytics.Data.V1alpha.DimensionExpression,
    json_name: "dimensionExpression"
end

defmodule Google.Analytics.Data.V1alpha.DimensionExpression.CaseExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dimension_name, 1, type: :string, json_name: "dimensionName"
end

defmodule Google.Analytics.Data.V1alpha.DimensionExpression.ConcatenateExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dimension_names, 1, repeated: true, type: :string, json_name: "dimensionNames"
  field :delimiter, 2, type: :string
end

defmodule Google.Analytics.Data.V1alpha.DimensionExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_expression, 0

  field :lower_case, 4,
    type: Google.Analytics.Data.V1alpha.DimensionExpression.CaseExpression,
    json_name: "lowerCase",
    oneof: 0

  field :upper_case, 5,
    type: Google.Analytics.Data.V1alpha.DimensionExpression.CaseExpression,
    json_name: "upperCase",
    oneof: 0

  field :concatenate, 6,
    type: Google.Analytics.Data.V1alpha.DimensionExpression.ConcatenateExpression,
    oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.Metric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :expression, 2, type: :string
  field :invisible, 3, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.FilterExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :expr, 0

  field :and_group, 1,
    type: Google.Analytics.Data.V1alpha.FilterExpressionList,
    json_name: "andGroup",
    oneof: 0

  field :or_group, 2,
    type: Google.Analytics.Data.V1alpha.FilterExpressionList,
    json_name: "orGroup",
    oneof: 0

  field :not_expression, 3,
    type: Google.Analytics.Data.V1alpha.FilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :filter, 4, type: Google.Analytics.Data.V1alpha.Filter, oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.FilterExpressionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :expressions, 1, repeated: true, type: Google.Analytics.Data.V1alpha.FilterExpression
end

defmodule Google.Analytics.Data.V1alpha.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_filter, 0

  field :field_name, 1, type: :string, json_name: "fieldName"

  field :string_filter, 2,
    type: Google.Analytics.Data.V1alpha.StringFilter,
    json_name: "stringFilter",
    oneof: 0

  field :in_list_filter, 3,
    type: Google.Analytics.Data.V1alpha.InListFilter,
    json_name: "inListFilter",
    oneof: 0

  field :numeric_filter, 4,
    type: Google.Analytics.Data.V1alpha.NumericFilter,
    json_name: "numericFilter",
    oneof: 0

  field :between_filter, 5,
    type: Google.Analytics.Data.V1alpha.BetweenFilter,
    json_name: "betweenFilter",
    oneof: 0

  field :empty_filter, 6,
    type: Google.Analytics.Data.V1alpha.EmptyFilter,
    json_name: "emptyFilter",
    oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.StringFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :match_type, 1,
    type: Google.Analytics.Data.V1alpha.StringFilter.MatchType,
    json_name: "matchType",
    enum: true

  field :value, 2, type: :string
  field :case_sensitive, 3, type: :bool, json_name: "caseSensitive"
end

defmodule Google.Analytics.Data.V1alpha.InListFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :values, 1, repeated: true, type: :string
  field :case_sensitive, 2, type: :bool, json_name: "caseSensitive"
end

defmodule Google.Analytics.Data.V1alpha.NumericFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation, 1, type: Google.Analytics.Data.V1alpha.NumericFilter.Operation, enum: true
  field :value, 2, type: Google.Analytics.Data.V1alpha.NumericValue
end

defmodule Google.Analytics.Data.V1alpha.OrderBy.MetricOrderBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName"
end

defmodule Google.Analytics.Data.V1alpha.OrderBy.DimensionOrderBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dimension_name, 1, type: :string, json_name: "dimensionName"

  field :order_type, 2,
    type: Google.Analytics.Data.V1alpha.OrderBy.DimensionOrderBy.OrderType,
    json_name: "orderType",
    enum: true
end

defmodule Google.Analytics.Data.V1alpha.OrderBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_order_by, 0

  field :metric, 1, type: Google.Analytics.Data.V1alpha.OrderBy.MetricOrderBy, oneof: 0
  field :dimension, 2, type: Google.Analytics.Data.V1alpha.OrderBy.DimensionOrderBy, oneof: 0
  field :desc, 4, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.BetweenFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :from_value, 1, type: Google.Analytics.Data.V1alpha.NumericValue, json_name: "fromValue"
  field :to_value, 2, type: Google.Analytics.Data.V1alpha.NumericValue, json_name: "toValue"
end

defmodule Google.Analytics.Data.V1alpha.EmptyFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Analytics.Data.V1alpha.NumericValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_value, 0

  field :int64_value, 1, type: :int64, json_name: "int64Value", oneof: 0
  field :double_value, 2, type: :double, json_name: "doubleValue", oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.CohortSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cohorts, 1, repeated: true, type: Google.Analytics.Data.V1alpha.Cohort

  field :cohorts_range, 2,
    type: Google.Analytics.Data.V1alpha.CohortsRange,
    json_name: "cohortsRange"

  field :cohort_report_settings, 3,
    type: Google.Analytics.Data.V1alpha.CohortReportSettings,
    json_name: "cohortReportSettings"
end

defmodule Google.Analytics.Data.V1alpha.Cohort do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :dimension, 2, type: :string
  field :date_range, 3, type: Google.Analytics.Data.V1alpha.DateRange, json_name: "dateRange"
end

defmodule Google.Analytics.Data.V1alpha.CohortsRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :granularity, 1, type: Google.Analytics.Data.V1alpha.CohortsRange.Granularity, enum: true
  field :start_offset, 2, type: :int32, json_name: "startOffset"
  field :end_offset, 3, type: :int32, json_name: "endOffset"
end

defmodule Google.Analytics.Data.V1alpha.CohortReportSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :accumulate, 1, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.ResponseMetaData.SchemaRestrictionResponse.ActiveMetricRestriction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :metric_name, 1, proto3_optional: true, type: :string, json_name: "metricName"

  field :restricted_metric_types, 2,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.RestrictedMetricType,
    json_name: "restrictedMetricTypes",
    enum: true
end

defmodule Google.Analytics.Data.V1alpha.ResponseMetaData.SchemaRestrictionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :active_metric_restrictions, 1,
    repeated: true,
    type:
      Google.Analytics.Data.V1alpha.ResponseMetaData.SchemaRestrictionResponse.ActiveMetricRestriction,
    json_name: "activeMetricRestrictions"
end

defmodule Google.Analytics.Data.V1alpha.ResponseMetaData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_loss_from_other_row, 3, type: :bool, json_name: "dataLossFromOtherRow"

  field :schema_restriction_response, 4,
    proto3_optional: true,
    type: Google.Analytics.Data.V1alpha.ResponseMetaData.SchemaRestrictionResponse,
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
    type: Google.Analytics.Data.V1alpha.SamplingMetadata,
    json_name: "samplingMetadatas"
end

defmodule Google.Analytics.Data.V1alpha.DimensionHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Analytics.Data.V1alpha.MetricHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Analytics.Data.V1alpha.MetricType, enum: true
end

defmodule Google.Analytics.Data.V1alpha.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dimension_values, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.DimensionValue,
    json_name: "dimensionValues"

  field :metric_values, 2,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.MetricValue,
    json_name: "metricValues"
end

defmodule Google.Analytics.Data.V1alpha.DimensionValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_value, 0

  field :value, 1, type: :string, oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.MetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_value, 0

  field :value, 4, type: :string, oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.PropertyQuota do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tokens_per_day, 1,
    type: Google.Analytics.Data.V1alpha.QuotaStatus,
    json_name: "tokensPerDay"

  field :tokens_per_hour, 2,
    type: Google.Analytics.Data.V1alpha.QuotaStatus,
    json_name: "tokensPerHour"

  field :concurrent_requests, 3,
    type: Google.Analytics.Data.V1alpha.QuotaStatus,
    json_name: "concurrentRequests"

  field :server_errors_per_project_per_hour, 4,
    type: Google.Analytics.Data.V1alpha.QuotaStatus,
    json_name: "serverErrorsPerProjectPerHour"

  field :potentially_thresholded_requests_per_hour, 5,
    type: Google.Analytics.Data.V1alpha.QuotaStatus,
    json_name: "potentiallyThresholdedRequestsPerHour"

  field :tokens_per_project_per_hour, 6,
    type: Google.Analytics.Data.V1alpha.QuotaStatus,
    json_name: "tokensPerProjectPerHour"
end

defmodule Google.Analytics.Data.V1alpha.QuotaStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :consumed, 1, type: :int32
  field :remaining, 2, type: :int32
end

defmodule Google.Analytics.Data.V1alpha.FunnelBreakdown do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :breakdown_dimension, 1,
    type: Google.Analytics.Data.V1alpha.Dimension,
    json_name: "breakdownDimension"

  field :limit, 2, proto3_optional: true, type: :int64
end

defmodule Google.Analytics.Data.V1alpha.FunnelNextAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :next_action_dimension, 1,
    type: Google.Analytics.Data.V1alpha.Dimension,
    json_name: "nextActionDimension"

  field :limit, 2, proto3_optional: true, type: :int64
end

defmodule Google.Analytics.Data.V1alpha.Funnel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :is_open_funnel, 1, type: :bool, json_name: "isOpenFunnel"
  field :steps, 2, repeated: true, type: Google.Analytics.Data.V1alpha.FunnelStep
end

defmodule Google.Analytics.Data.V1alpha.FunnelStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :is_directly_followed_by, 2, type: :bool, json_name: "isDirectlyFollowedBy"

  field :within_duration_from_prior_step, 3,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "withinDurationFromPriorStep"

  field :filter_expression, 4,
    type: Google.Analytics.Data.V1alpha.FunnelFilterExpression,
    json_name: "filterExpression"
end

defmodule Google.Analytics.Data.V1alpha.FunnelSubReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dimension_headers, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.DimensionHeader,
    json_name: "dimensionHeaders"

  field :metric_headers, 2,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.MetricHeader,
    json_name: "metricHeaders"

  field :rows, 3, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :metadata, 4, type: Google.Analytics.Data.V1alpha.FunnelResponseMetadata
end

defmodule Google.Analytics.Data.V1alpha.UserSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_inclusion_criteria, 1,
    type: Google.Analytics.Data.V1alpha.UserSegmentCriteria,
    json_name: "userInclusionCriteria"

  field :exclusion, 2, type: Google.Analytics.Data.V1alpha.UserSegmentExclusion
end

defmodule Google.Analytics.Data.V1alpha.UserSegmentCriteria do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :and_condition_groups, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.UserSegmentConditionGroup,
    json_name: "andConditionGroups"

  field :and_sequence_groups, 2,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.UserSegmentSequenceGroup,
    json_name: "andSequenceGroups"
end

defmodule Google.Analytics.Data.V1alpha.UserSegmentConditionGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :condition_scoping, 1,
    type: Google.Analytics.Data.V1alpha.UserCriteriaScoping,
    json_name: "conditionScoping",
    enum: true

  field :segment_filter_expression, 2,
    type: Google.Analytics.Data.V1alpha.SegmentFilterExpression,
    json_name: "segmentFilterExpression"
end

defmodule Google.Analytics.Data.V1alpha.UserSegmentSequenceGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sequence_scoping, 1,
    type: Google.Analytics.Data.V1alpha.UserCriteriaScoping,
    json_name: "sequenceScoping",
    enum: true

  field :sequence_maximum_duration, 2,
    type: Google.Protobuf.Duration,
    json_name: "sequenceMaximumDuration"

  field :user_sequence_steps, 3,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.UserSequenceStep,
    json_name: "userSequenceSteps"
end

defmodule Google.Analytics.Data.V1alpha.UserSequenceStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :is_directly_followed_by, 1, type: :bool, json_name: "isDirectlyFollowedBy"

  field :step_scoping, 2,
    type: Google.Analytics.Data.V1alpha.UserCriteriaScoping,
    json_name: "stepScoping",
    enum: true

  field :segment_filter_expression, 3,
    type: Google.Analytics.Data.V1alpha.SegmentFilterExpression,
    json_name: "segmentFilterExpression"
end

defmodule Google.Analytics.Data.V1alpha.UserSegmentExclusion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_exclusion_duration, 1,
    type: Google.Analytics.Data.V1alpha.UserExclusionDuration,
    json_name: "userExclusionDuration",
    enum: true

  field :user_exclusion_criteria, 2,
    type: Google.Analytics.Data.V1alpha.UserSegmentCriteria,
    json_name: "userExclusionCriteria"
end

defmodule Google.Analytics.Data.V1alpha.SessionSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session_inclusion_criteria, 1,
    type: Google.Analytics.Data.V1alpha.SessionSegmentCriteria,
    json_name: "sessionInclusionCriteria"

  field :exclusion, 2, type: Google.Analytics.Data.V1alpha.SessionSegmentExclusion
end

defmodule Google.Analytics.Data.V1alpha.SessionSegmentCriteria do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :and_condition_groups, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.SessionSegmentConditionGroup,
    json_name: "andConditionGroups"
end

defmodule Google.Analytics.Data.V1alpha.SessionSegmentConditionGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :condition_scoping, 1,
    type: Google.Analytics.Data.V1alpha.SessionCriteriaScoping,
    json_name: "conditionScoping",
    enum: true

  field :segment_filter_expression, 2,
    type: Google.Analytics.Data.V1alpha.SegmentFilterExpression,
    json_name: "segmentFilterExpression"
end

defmodule Google.Analytics.Data.V1alpha.SessionSegmentExclusion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session_exclusion_duration, 1,
    type: Google.Analytics.Data.V1alpha.SessionExclusionDuration,
    json_name: "sessionExclusionDuration",
    enum: true

  field :session_exclusion_criteria, 2,
    type: Google.Analytics.Data.V1alpha.SessionSegmentCriteria,
    json_name: "sessionExclusionCriteria"
end

defmodule Google.Analytics.Data.V1alpha.EventSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_inclusion_criteria, 1,
    type: Google.Analytics.Data.V1alpha.EventSegmentCriteria,
    json_name: "eventInclusionCriteria"

  field :exclusion, 2, type: Google.Analytics.Data.V1alpha.EventSegmentExclusion
end

defmodule Google.Analytics.Data.V1alpha.EventSegmentCriteria do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :and_condition_groups, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.EventSegmentConditionGroup,
    json_name: "andConditionGroups"
end

defmodule Google.Analytics.Data.V1alpha.EventSegmentConditionGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :condition_scoping, 1,
    type: Google.Analytics.Data.V1alpha.EventCriteriaScoping,
    json_name: "conditionScoping",
    enum: true

  field :segment_filter_expression, 2,
    type: Google.Analytics.Data.V1alpha.SegmentFilterExpression,
    json_name: "segmentFilterExpression"
end

defmodule Google.Analytics.Data.V1alpha.EventSegmentExclusion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_exclusion_duration, 1,
    type: Google.Analytics.Data.V1alpha.EventExclusionDuration,
    json_name: "eventExclusionDuration",
    enum: true

  field :event_exclusion_criteria, 2,
    type: Google.Analytics.Data.V1alpha.EventSegmentCriteria,
    json_name: "eventExclusionCriteria"
end

defmodule Google.Analytics.Data.V1alpha.Segment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_segment_scope, 0

  field :name, 1, type: :string

  field :user_segment, 2,
    type: Google.Analytics.Data.V1alpha.UserSegment,
    json_name: "userSegment",
    oneof: 0

  field :session_segment, 3,
    type: Google.Analytics.Data.V1alpha.SessionSegment,
    json_name: "sessionSegment",
    oneof: 0

  field :event_segment, 4,
    type: Google.Analytics.Data.V1alpha.EventSegment,
    json_name: "eventSegment",
    oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.SegmentFilterExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :expr, 0

  field :and_group, 1,
    type: Google.Analytics.Data.V1alpha.SegmentFilterExpressionList,
    json_name: "andGroup",
    oneof: 0

  field :or_group, 2,
    type: Google.Analytics.Data.V1alpha.SegmentFilterExpressionList,
    json_name: "orGroup",
    oneof: 0

  field :not_expression, 3,
    type: Google.Analytics.Data.V1alpha.SegmentFilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :segment_filter, 4,
    type: Google.Analytics.Data.V1alpha.SegmentFilter,
    json_name: "segmentFilter",
    oneof: 0

  field :segment_event_filter, 5,
    type: Google.Analytics.Data.V1alpha.SegmentEventFilter,
    json_name: "segmentEventFilter",
    oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.SegmentFilterExpressionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :expressions, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.SegmentFilterExpression
end

defmodule Google.Analytics.Data.V1alpha.SegmentFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_filter, 0

  field :field_name, 1, type: :string, json_name: "fieldName"

  field :string_filter, 4,
    type: Google.Analytics.Data.V1alpha.StringFilter,
    json_name: "stringFilter",
    oneof: 0

  field :in_list_filter, 5,
    type: Google.Analytics.Data.V1alpha.InListFilter,
    json_name: "inListFilter",
    oneof: 0

  field :numeric_filter, 6,
    type: Google.Analytics.Data.V1alpha.NumericFilter,
    json_name: "numericFilter",
    oneof: 0

  field :between_filter, 7,
    type: Google.Analytics.Data.V1alpha.BetweenFilter,
    json_name: "betweenFilter",
    oneof: 0

  field :filter_scoping, 8,
    type: Google.Analytics.Data.V1alpha.SegmentFilterScoping,
    json_name: "filterScoping"
end

defmodule Google.Analytics.Data.V1alpha.SegmentFilterScoping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :at_any_point_in_time, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "atAnyPointInTime"
end

defmodule Google.Analytics.Data.V1alpha.SegmentEventFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_name, 1, proto3_optional: true, type: :string, json_name: "eventName"

  field :segment_parameter_filter_expression, 2,
    proto3_optional: true,
    type: Google.Analytics.Data.V1alpha.SegmentParameterFilterExpression,
    json_name: "segmentParameterFilterExpression"
end

defmodule Google.Analytics.Data.V1alpha.SegmentParameterFilterExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :expr, 0

  field :and_group, 1,
    type: Google.Analytics.Data.V1alpha.SegmentParameterFilterExpressionList,
    json_name: "andGroup",
    oneof: 0

  field :or_group, 2,
    type: Google.Analytics.Data.V1alpha.SegmentParameterFilterExpressionList,
    json_name: "orGroup",
    oneof: 0

  field :not_expression, 3,
    type: Google.Analytics.Data.V1alpha.SegmentParameterFilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :segment_parameter_filter, 4,
    type: Google.Analytics.Data.V1alpha.SegmentParameterFilter,
    json_name: "segmentParameterFilter",
    oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.SegmentParameterFilterExpressionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :expressions, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.SegmentParameterFilterExpression
end

defmodule Google.Analytics.Data.V1alpha.SegmentParameterFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_parameter, 0

  oneof :one_filter, 1

  field :event_parameter_name, 1, type: :string, json_name: "eventParameterName", oneof: 0
  field :item_parameter_name, 2, type: :string, json_name: "itemParameterName", oneof: 0

  field :string_filter, 4,
    type: Google.Analytics.Data.V1alpha.StringFilter,
    json_name: "stringFilter",
    oneof: 1

  field :in_list_filter, 5,
    type: Google.Analytics.Data.V1alpha.InListFilter,
    json_name: "inListFilter",
    oneof: 1

  field :numeric_filter, 6,
    type: Google.Analytics.Data.V1alpha.NumericFilter,
    json_name: "numericFilter",
    oneof: 1

  field :between_filter, 7,
    type: Google.Analytics.Data.V1alpha.BetweenFilter,
    json_name: "betweenFilter",
    oneof: 1

  field :filter_scoping, 8,
    type: Google.Analytics.Data.V1alpha.SegmentParameterFilterScoping,
    json_name: "filterScoping"
end

defmodule Google.Analytics.Data.V1alpha.SegmentParameterFilterScoping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :in_any_n_day_period, 1, proto3_optional: true, type: :int64, json_name: "inAnyNDayPeriod"
end

defmodule Google.Analytics.Data.V1alpha.FunnelFilterExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :expr, 0

  field :and_group, 1,
    type: Google.Analytics.Data.V1alpha.FunnelFilterExpressionList,
    json_name: "andGroup",
    oneof: 0

  field :or_group, 2,
    type: Google.Analytics.Data.V1alpha.FunnelFilterExpressionList,
    json_name: "orGroup",
    oneof: 0

  field :not_expression, 3,
    type: Google.Analytics.Data.V1alpha.FunnelFilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :funnel_field_filter, 4,
    type: Google.Analytics.Data.V1alpha.FunnelFieldFilter,
    json_name: "funnelFieldFilter",
    oneof: 0

  field :funnel_event_filter, 5,
    type: Google.Analytics.Data.V1alpha.FunnelEventFilter,
    json_name: "funnelEventFilter",
    oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.FunnelFilterExpressionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :expressions, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.FunnelFilterExpression
end

defmodule Google.Analytics.Data.V1alpha.FunnelFieldFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_filter, 0

  field :field_name, 1, type: :string, json_name: "fieldName"

  field :string_filter, 4,
    type: Google.Analytics.Data.V1alpha.StringFilter,
    json_name: "stringFilter",
    oneof: 0

  field :in_list_filter, 5,
    type: Google.Analytics.Data.V1alpha.InListFilter,
    json_name: "inListFilter",
    oneof: 0

  field :numeric_filter, 6,
    type: Google.Analytics.Data.V1alpha.NumericFilter,
    json_name: "numericFilter",
    oneof: 0

  field :between_filter, 7,
    type: Google.Analytics.Data.V1alpha.BetweenFilter,
    json_name: "betweenFilter",
    oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.FunnelEventFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_name, 1, proto3_optional: true, type: :string, json_name: "eventName"

  field :funnel_parameter_filter_expression, 2,
    proto3_optional: true,
    type: Google.Analytics.Data.V1alpha.FunnelParameterFilterExpression,
    json_name: "funnelParameterFilterExpression"
end

defmodule Google.Analytics.Data.V1alpha.FunnelParameterFilterExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :expr, 0

  field :and_group, 1,
    type: Google.Analytics.Data.V1alpha.FunnelParameterFilterExpressionList,
    json_name: "andGroup",
    oneof: 0

  field :or_group, 2,
    type: Google.Analytics.Data.V1alpha.FunnelParameterFilterExpressionList,
    json_name: "orGroup",
    oneof: 0

  field :not_expression, 3,
    type: Google.Analytics.Data.V1alpha.FunnelParameterFilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :funnel_parameter_filter, 4,
    type: Google.Analytics.Data.V1alpha.FunnelParameterFilter,
    json_name: "funnelParameterFilter",
    oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.FunnelParameterFilterExpressionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :expressions, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.FunnelParameterFilterExpression
end

defmodule Google.Analytics.Data.V1alpha.FunnelParameterFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :one_parameter, 0

  oneof :one_filter, 1

  field :event_parameter_name, 1, type: :string, json_name: "eventParameterName", oneof: 0
  field :item_parameter_name, 2, type: :string, json_name: "itemParameterName", oneof: 0

  field :string_filter, 4,
    type: Google.Analytics.Data.V1alpha.StringFilter,
    json_name: "stringFilter",
    oneof: 1

  field :in_list_filter, 5,
    type: Google.Analytics.Data.V1alpha.InListFilter,
    json_name: "inListFilter",
    oneof: 1

  field :numeric_filter, 6,
    type: Google.Analytics.Data.V1alpha.NumericFilter,
    json_name: "numericFilter",
    oneof: 1

  field :between_filter, 7,
    type: Google.Analytics.Data.V1alpha.BetweenFilter,
    json_name: "betweenFilter",
    oneof: 1
end

defmodule Google.Analytics.Data.V1alpha.FunnelResponseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sampling_metadatas, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.SamplingMetadata,
    json_name: "samplingMetadatas"
end

defmodule Google.Analytics.Data.V1alpha.SamplingMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :samples_read_count, 1, type: :int64, json_name: "samplesReadCount"
  field :sampling_space_size, 2, type: :int64, json_name: "samplingSpaceSize"
end
