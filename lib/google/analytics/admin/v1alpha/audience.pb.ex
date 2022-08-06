defmodule Google.Analytics.Admin.V1alpha.AudienceFilterScope do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :AUDIENCE_FILTER_SCOPE_UNSPECIFIED, 0
  field :AUDIENCE_FILTER_SCOPE_WITHIN_SAME_EVENT, 1
  field :AUDIENCE_FILTER_SCOPE_WITHIN_SAME_SESSION, 2
  field :AUDIENCE_FILTER_SCOPE_ACROSS_ALL_SESSIONS, 3
end
defmodule Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.StringFilter.MatchType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :MATCH_TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :BEGINS_WITH, 2
  field :ENDS_WITH, 3
  field :CONTAINS, 4
  field :FULL_REGEXP, 5
  field :PARTIAL_REGEXP, 6
end
defmodule Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.NumericFilter.Operation do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :OPERATION_UNSPECIFIED, 0
  field :EQUAL, 1
  field :LESS_THAN, 2
  field :LESS_THAN_OR_EQUAL, 3
  field :GREATER_THAN, 4
  field :GREATER_THAN_OR_EQUAL, 5
end
defmodule Google.Analytics.Admin.V1alpha.AudienceFilterClause.AudienceClauseType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :AUDIENCE_CLAUSE_TYPE_UNSPECIFIED, 0
  field :INCLUDE, 1
  field :EXCLUDE, 2
end
defmodule Google.Analytics.Admin.V1alpha.AudienceEventTrigger.LogCondition do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :LOG_CONDITION_UNSPECIFIED, 0
  field :AUDIENCE_JOINED, 1
  field :AUDIENCE_MEMBERSHIP_RENEWED, 2
end
defmodule Google.Analytics.Admin.V1alpha.Audience.AudienceExclusionDurationMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :AUDIENCE_EXCLUSION_DURATION_MODE_UNSPECIFIED, 0
  field :EXCLUDE_TEMPORARILY, 1
  field :EXCLUDE_PERMANENTLY, 2
end
defmodule Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.StringFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :match_type, 1,
    type: Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.StringFilter.MatchType,
    json_name: "matchType",
    enum: true,
    deprecated: false

  field :value, 2, type: :string, deprecated: false
  field :case_sensitive, 3, type: :bool, json_name: "caseSensitive", deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.InListFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false
  field :case_sensitive, 2, type: :bool, json_name: "caseSensitive", deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.NumericValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :one_value, 0

  field :int64_value, 1, type: :int64, json_name: "int64Value", oneof: 0
  field :double_value, 2, type: :double, json_name: "doubleValue", oneof: 0
end
defmodule Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.NumericFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :operation, 1,
    type: Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.NumericFilter.Operation,
    enum: true,
    deprecated: false

  field :value, 2,
    type: Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.NumericValue,
    deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.BetweenFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :from_value, 1,
    type: Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.NumericValue,
    json_name: "fromValue",
    deprecated: false

  field :to_value, 2,
    type: Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.NumericValue,
    json_name: "toValue",
    deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :one_filter, 0

  field :string_filter, 2,
    type: Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.StringFilter,
    json_name: "stringFilter",
    oneof: 0

  field :in_list_filter, 3,
    type: Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.InListFilter,
    json_name: "inListFilter",
    oneof: 0

  field :numeric_filter, 4,
    type: Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.NumericFilter,
    json_name: "numericFilter",
    oneof: 0

  field :between_filter, 5,
    type: Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter.BetweenFilter,
    json_name: "betweenFilter",
    oneof: 0

  field :field_name, 1, type: :string, json_name: "fieldName", deprecated: false
  field :at_any_point_in_time, 6, type: :bool, json_name: "atAnyPointInTime", deprecated: false
  field :in_any_n_day_period, 7, type: :int32, json_name: "inAnyNDayPeriod", deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.AudienceEventFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :event_name, 1, type: :string, json_name: "eventName", deprecated: false

  field :event_parameter_filter_expression, 2,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterExpression,
    json_name: "eventParameterFilterExpression",
    deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.AudienceFilterExpression do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :expr, 0

  field :and_group, 1,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterExpressionList,
    json_name: "andGroup",
    oneof: 0

  field :or_group, 2,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterExpressionList,
    json_name: "orGroup",
    oneof: 0

  field :not_expression, 3,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :dimension_or_metric_filter, 4,
    type: Google.Analytics.Admin.V1alpha.AudienceDimensionOrMetricFilter,
    json_name: "dimensionOrMetricFilter",
    oneof: 0

  field :event_filter, 5,
    type: Google.Analytics.Admin.V1alpha.AudienceEventFilter,
    json_name: "eventFilter",
    oneof: 0
end
defmodule Google.Analytics.Admin.V1alpha.AudienceFilterExpressionList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :filter_expressions, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterExpression,
    json_name: "filterExpressions"
end
defmodule Google.Analytics.Admin.V1alpha.AudienceSimpleFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :scope, 1,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterScope,
    enum: true,
    deprecated: false

  field :filter_expression, 2,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterExpression,
    json_name: "filterExpression",
    deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.AudienceSequenceFilter.AudienceSequenceStep do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :scope, 1,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterScope,
    enum: true,
    deprecated: false

  field :immediately_follows, 2, type: :bool, json_name: "immediatelyFollows", deprecated: false

  field :constraint_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "constraintDuration",
    deprecated: false

  field :filter_expression, 4,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterExpression,
    json_name: "filterExpression",
    deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.AudienceSequenceFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :scope, 1,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterScope,
    enum: true,
    deprecated: false

  field :sequence_maximum_duration, 2,
    type: Google.Protobuf.Duration,
    json_name: "sequenceMaximumDuration",
    deprecated: false

  field :sequence_steps, 3,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AudienceSequenceFilter.AudienceSequenceStep,
    json_name: "sequenceSteps",
    deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.AudienceFilterClause do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :filter, 0

  field :simple_filter, 2,
    type: Google.Analytics.Admin.V1alpha.AudienceSimpleFilter,
    json_name: "simpleFilter",
    oneof: 0

  field :sequence_filter, 3,
    type: Google.Analytics.Admin.V1alpha.AudienceSequenceFilter,
    json_name: "sequenceFilter",
    oneof: 0

  field :clause_type, 1,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterClause.AudienceClauseType,
    json_name: "clauseType",
    enum: true,
    deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.AudienceEventTrigger do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :event_name, 1, type: :string, json_name: "eventName", deprecated: false

  field :log_condition, 2,
    type: Google.Analytics.Admin.V1alpha.AudienceEventTrigger.LogCondition,
    json_name: "logCondition",
    enum: true,
    deprecated: false
end
defmodule Google.Analytics.Admin.V1alpha.Audience do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :membership_duration_days, 4,
    type: :int32,
    json_name: "membershipDurationDays",
    deprecated: false

  field :ads_personalization_enabled, 5,
    type: :bool,
    json_name: "adsPersonalizationEnabled",
    deprecated: false

  field :event_trigger, 6,
    type: Google.Analytics.Admin.V1alpha.AudienceEventTrigger,
    json_name: "eventTrigger",
    deprecated: false

  field :exclusion_duration_mode, 7,
    type: Google.Analytics.Admin.V1alpha.Audience.AudienceExclusionDurationMode,
    json_name: "exclusionDurationMode",
    enum: true,
    deprecated: false

  field :filter_clauses, 8,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AudienceFilterClause,
    json_name: "filterClauses",
    deprecated: false
end
