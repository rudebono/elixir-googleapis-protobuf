defmodule Google.Monitoring.V3.AlertPolicy.ConditionCombinerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :COMBINE_UNSPECIFIED, 0
  field :AND, 1
  field :OR, 2
  field :AND_WITH_MATCHING_RESOURCE, 3
end

defmodule Google.Monitoring.V3.AlertPolicy.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :ERROR, 2
  field :WARNING, 3
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.EvaluationMissingData do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EVALUATION_MISSING_DATA_UNSPECIFIED, 0
  field :EVALUATION_MISSING_DATA_INACTIVE, 1
  field :EVALUATION_MISSING_DATA_ACTIVE, 2
  field :EVALUATION_MISSING_DATA_NO_OP, 3
end

defmodule Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationPrompt do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :NOTIFICATION_PROMPT_UNSPECIFIED, 0
  field :OPENED, 1
  field :CLOSED, 3
end

defmodule Google.Monitoring.V3.AlertPolicy.Documentation.Link do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :url, 2, type: :string
end

defmodule Google.Monitoring.V3.AlertPolicy.Documentation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :content, 1, type: :string
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :subject, 3, type: :string, deprecated: false

  field :links, 4,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy.Documentation.Link,
    deprecated: false
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.Trigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :type, 0

  field :count, 1, type: :int32, oneof: 0
  field :percent, 2, type: :double, oneof: 0
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.MetricThreshold.ForecastOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :forecast_horizon, 1,
    type: Google.Protobuf.Duration,
    json_name: "forecastHorizon",
    deprecated: false
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.MetricThreshold do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :filter, 2, type: :string, deprecated: false
  field :aggregations, 8, repeated: true, type: Google.Monitoring.V3.Aggregation
  field :denominator_filter, 9, type: :string, json_name: "denominatorFilter"

  field :denominator_aggregations, 10,
    repeated: true,
    type: Google.Monitoring.V3.Aggregation,
    json_name: "denominatorAggregations"

  field :forecast_options, 12,
    type: Google.Monitoring.V3.AlertPolicy.Condition.MetricThreshold.ForecastOptions,
    json_name: "forecastOptions"

  field :comparison, 4, type: Google.Monitoring.V3.ComparisonType, enum: true
  field :threshold_value, 5, type: :double, json_name: "thresholdValue"
  field :duration, 6, type: Google.Protobuf.Duration
  field :trigger, 7, type: Google.Monitoring.V3.AlertPolicy.Condition.Trigger

  field :evaluation_missing_data, 11,
    type: Google.Monitoring.V3.AlertPolicy.Condition.EvaluationMissingData,
    json_name: "evaluationMissingData",
    enum: true
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.MetricAbsence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :filter, 1, type: :string, deprecated: false
  field :aggregations, 5, repeated: true, type: Google.Monitoring.V3.Aggregation
  field :duration, 2, type: Google.Protobuf.Duration
  field :trigger, 3, type: Google.Monitoring.V3.AlertPolicy.Condition.Trigger
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.LogMatch.LabelExtractorsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.LogMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :filter, 1, type: :string, deprecated: false

  field :label_extractors, 2,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy.Condition.LogMatch.LabelExtractorsEntry,
    json_name: "labelExtractors",
    map: true
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.MonitoringQueryLanguageCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :query, 1, type: :string
  field :duration, 2, type: Google.Protobuf.Duration
  field :trigger, 3, type: Google.Monitoring.V3.AlertPolicy.Condition.Trigger

  field :evaluation_missing_data, 4,
    type: Google.Monitoring.V3.AlertPolicy.Condition.EvaluationMissingData,
    json_name: "evaluationMissingData",
    enum: true
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.PrometheusQueryLanguageCondition.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.PrometheusQueryLanguageCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :query, 1, type: :string, deprecated: false
  field :duration, 2, type: Google.Protobuf.Duration, deprecated: false

  field :evaluation_interval, 3,
    type: Google.Protobuf.Duration,
    json_name: "evaluationInterval",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy.Condition.PrometheusQueryLanguageCondition.LabelsEntry,
    map: true,
    deprecated: false

  field :rule_group, 5, type: :string, json_name: "ruleGroup", deprecated: false
  field :alert_rule, 6, type: :string, json_name: "alertRule", deprecated: false

  field :disable_metric_validation, 7,
    type: :bool,
    json_name: "disableMetricValidation",
    deprecated: false
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition.Minutes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :periodicity, 1, type: :int32, deprecated: false
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition.Hourly do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :periodicity, 1, type: :int32, deprecated: false

  field :minute_offset, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "minuteOffset",
    deprecated: false
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition.Daily do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :periodicity, 1, type: :int32, deprecated: false

  field :execution_time, 2,
    type: Google.Type.TimeOfDay,
    json_name: "executionTime",
    deprecated: false
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition.RowCountTest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :comparison, 1, type: Google.Monitoring.V3.ComparisonType, enum: true, deprecated: false
  field :threshold, 2, type: :int64, deprecated: false
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition.BooleanTest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :column, 1, type: :string, deprecated: false
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :schedule, 0

  oneof :evaluate, 1

  field :query, 1, type: :string, deprecated: false

  field :minutes, 2,
    type: Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition.Minutes,
    oneof: 0

  field :hourly, 3, type: Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition.Hourly, oneof: 0
  field :daily, 4, type: Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition.Daily, oneof: 0

  field :row_count_test, 5,
    type: Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition.RowCountTest,
    json_name: "rowCountTest",
    oneof: 1

  field :boolean_test, 6,
    type: Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition.BooleanTest,
    json_name: "booleanTest",
    oneof: 1
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :condition, 0

  field :name, 12, type: :string
  field :display_name, 6, type: :string, json_name: "displayName"

  field :condition_threshold, 1,
    type: Google.Monitoring.V3.AlertPolicy.Condition.MetricThreshold,
    json_name: "conditionThreshold",
    oneof: 0

  field :condition_absent, 2,
    type: Google.Monitoring.V3.AlertPolicy.Condition.MetricAbsence,
    json_name: "conditionAbsent",
    oneof: 0

  field :condition_matched_log, 20,
    type: Google.Monitoring.V3.AlertPolicy.Condition.LogMatch,
    json_name: "conditionMatchedLog",
    oneof: 0

  field :condition_monitoring_query_language, 19,
    type: Google.Monitoring.V3.AlertPolicy.Condition.MonitoringQueryLanguageCondition,
    json_name: "conditionMonitoringQueryLanguage",
    oneof: 0

  field :condition_prometheus_query_language, 21,
    type: Google.Monitoring.V3.AlertPolicy.Condition.PrometheusQueryLanguageCondition,
    json_name: "conditionPrometheusQueryLanguage",
    oneof: 0

  field :condition_sql, 22,
    type: Google.Monitoring.V3.AlertPolicy.Condition.SqlCondition,
    json_name: "conditionSql",
    oneof: 0
end

defmodule Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationRateLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :period, 1, type: Google.Protobuf.Duration
end

defmodule Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationChannelStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :notification_channel_names, 1,
    repeated: true,
    type: :string,
    json_name: "notificationChannelNames"

  field :renotify_interval, 2, type: Google.Protobuf.Duration, json_name: "renotifyInterval"
end

defmodule Google.Monitoring.V3.AlertPolicy.AlertStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :notification_rate_limit, 1,
    type: Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationRateLimit,
    json_name: "notificationRateLimit"

  field :notification_prompts, 2,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationPrompt,
    json_name: "notificationPrompts",
    enum: true

  field :auto_close, 3, type: Google.Protobuf.Duration, json_name: "autoClose"

  field :notification_channel_strategy, 4,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationChannelStrategy,
    json_name: "notificationChannelStrategy"
end

defmodule Google.Monitoring.V3.AlertPolicy.UserLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Monitoring.V3.AlertPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :documentation, 13, type: Google.Monitoring.V3.AlertPolicy.Documentation

  field :user_labels, 16,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy.UserLabelsEntry,
    json_name: "userLabels",
    map: true

  field :conditions, 12, repeated: true, type: Google.Monitoring.V3.AlertPolicy.Condition
  field :combiner, 6, type: Google.Monitoring.V3.AlertPolicy.ConditionCombinerType, enum: true
  field :enabled, 17, type: Google.Protobuf.BoolValue
  field :validity, 18, type: Google.Rpc.Status

  field :notification_channels, 14,
    repeated: true,
    type: :string,
    json_name: "notificationChannels"

  field :creation_record, 10,
    type: Google.Monitoring.V3.MutationRecord,
    json_name: "creationRecord"

  field :mutation_record, 11,
    type: Google.Monitoring.V3.MutationRecord,
    json_name: "mutationRecord"

  field :alert_strategy, 21,
    type: Google.Monitoring.V3.AlertPolicy.AlertStrategy,
    json_name: "alertStrategy"

  field :severity, 22,
    type: Google.Monitoring.V3.AlertPolicy.Severity,
    enum: true,
    deprecated: false
end
