defmodule Google.Cloud.Dataplex.V1.DataQualityResult.PostScanActionsResult.BigQueryExportResult.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :SKIPPED, 3
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule.StatisticRangeExpectation.ColumnStatistic do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATISTIC_UNDEFINED, 0
  field :MEAN, 1
  field :MIN, 2
  field :MAX, 3
end

defmodule Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.BigQueryExport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :results_table, 1, type: :string, json_name: "resultsTable", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.Recipients do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :emails, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.ScoreThresholdTrigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :score_threshold, 2, type: :float, json_name: "scoreThreshold", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.JobFailureTrigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.JobEndTrigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.NotificationReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :recipients, 1,
    type: Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.Recipients,
    deprecated: false

  field :score_threshold_trigger, 2,
    type: Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.ScoreThresholdTrigger,
    json_name: "scoreThresholdTrigger",
    deprecated: false

  field :job_failure_trigger, 4,
    type: Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.JobFailureTrigger,
    json_name: "jobFailureTrigger",
    deprecated: false

  field :job_end_trigger, 5,
    type: Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.JobEndTrigger,
    json_name: "jobEndTrigger",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :bigquery_export, 1,
    type: Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.BigQueryExport,
    json_name: "bigqueryExport",
    deprecated: false

  field :notification_report, 2,
    type: Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions.NotificationReport,
    json_name: "notificationReport",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualitySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rules, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataQualityRule,
    deprecated: false

  field :sampling_percent, 4, type: :float, json_name: "samplingPercent", deprecated: false
  field :row_filter, 5, type: :string, json_name: "rowFilter", deprecated: false

  field :post_scan_actions, 6,
    type: Google.Cloud.Dataplex.V1.DataQualitySpec.PostScanActions,
    json_name: "postScanActions",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityResult.PostScanActionsResult.BigQueryExportResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :state, 1,
    type:
      Google.Cloud.Dataplex.V1.DataQualityResult.PostScanActionsResult.BigQueryExportResult.State,
    enum: true,
    deprecated: false

  field :message, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityResult.PostScanActionsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :bigquery_export_result, 1,
    type: Google.Cloud.Dataplex.V1.DataQualityResult.PostScanActionsResult.BigQueryExportResult,
    json_name: "bigqueryExportResult",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :passed, 5, type: :bool
  field :score, 9, proto3_optional: true, type: :float, deprecated: false
  field :dimensions, 2, repeated: true, type: Google.Cloud.Dataplex.V1.DataQualityDimensionResult

  field :columns, 10,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataQualityColumnResult,
    deprecated: false

  field :rules, 3, repeated: true, type: Google.Cloud.Dataplex.V1.DataQualityRuleResult
  field :row_count, 4, type: :int64, json_name: "rowCount"
  field :scanned_data, 7, type: Google.Cloud.Dataplex.V1.ScannedData, json_name: "scannedData"

  field :post_scan_actions_result, 8,
    type: Google.Cloud.Dataplex.V1.DataQualityResult.PostScanActionsResult,
    json_name: "postScanActionsResult",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRuleResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rule, 1, type: Google.Cloud.Dataplex.V1.DataQualityRule
  field :passed, 7, type: :bool
  field :evaluated_count, 9, type: :int64, json_name: "evaluatedCount"
  field :passed_count, 8, type: :int64, json_name: "passedCount"
  field :null_count, 5, type: :int64, json_name: "nullCount"
  field :pass_ratio, 6, type: :double, json_name: "passRatio"
  field :failing_rows_query, 10, type: :string, json_name: "failingRowsQuery"
  field :assertion_row_count, 11, type: :int64, json_name: "assertionRowCount", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityDimensionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension, 1, type: Google.Cloud.Dataplex.V1.DataQualityDimension, deprecated: false
  field :passed, 3, type: :bool
  field :score, 4, proto3_optional: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule.RangeExpectation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :min_value, 1, type: :string, json_name: "minValue", deprecated: false
  field :max_value, 2, type: :string, json_name: "maxValue", deprecated: false
  field :strict_min_enabled, 3, type: :bool, json_name: "strictMinEnabled", deprecated: false
  field :strict_max_enabled, 4, type: :bool, json_name: "strictMaxEnabled", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule.NonNullExpectation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule.SetExpectation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule.RegexExpectation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :regex, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule.UniquenessExpectation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule.StatisticRangeExpectation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :statistic, 1,
    type: Google.Cloud.Dataplex.V1.DataQualityRule.StatisticRangeExpectation.ColumnStatistic,
    enum: true,
    deprecated: false

  field :min_value, 2, type: :string, json_name: "minValue", deprecated: false
  field :max_value, 3, type: :string, json_name: "maxValue", deprecated: false
  field :strict_min_enabled, 4, type: :bool, json_name: "strictMinEnabled", deprecated: false
  field :strict_max_enabled, 5, type: :bool, json_name: "strictMaxEnabled", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule.RowConditionExpectation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :sql_expression, 1, type: :string, json_name: "sqlExpression", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule.TableConditionExpectation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :sql_expression, 1, type: :string, json_name: "sqlExpression", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule.SqlAssertion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :sql_statement, 1, type: :string, json_name: "sqlStatement", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :rule_type, 0

  field :range_expectation, 1,
    type: Google.Cloud.Dataplex.V1.DataQualityRule.RangeExpectation,
    json_name: "rangeExpectation",
    oneof: 0

  field :non_null_expectation, 2,
    type: Google.Cloud.Dataplex.V1.DataQualityRule.NonNullExpectation,
    json_name: "nonNullExpectation",
    oneof: 0

  field :set_expectation, 3,
    type: Google.Cloud.Dataplex.V1.DataQualityRule.SetExpectation,
    json_name: "setExpectation",
    oneof: 0

  field :regex_expectation, 4,
    type: Google.Cloud.Dataplex.V1.DataQualityRule.RegexExpectation,
    json_name: "regexExpectation",
    oneof: 0

  field :uniqueness_expectation, 100,
    type: Google.Cloud.Dataplex.V1.DataQualityRule.UniquenessExpectation,
    json_name: "uniquenessExpectation",
    oneof: 0

  field :statistic_range_expectation, 101,
    type: Google.Cloud.Dataplex.V1.DataQualityRule.StatisticRangeExpectation,
    json_name: "statisticRangeExpectation",
    oneof: 0

  field :row_condition_expectation, 200,
    type: Google.Cloud.Dataplex.V1.DataQualityRule.RowConditionExpectation,
    json_name: "rowConditionExpectation",
    oneof: 0

  field :table_condition_expectation, 201,
    type: Google.Cloud.Dataplex.V1.DataQualityRule.TableConditionExpectation,
    json_name: "tableConditionExpectation",
    oneof: 0

  field :sql_assertion, 202,
    type: Google.Cloud.Dataplex.V1.DataQualityRule.SqlAssertion,
    json_name: "sqlAssertion",
    oneof: 0

  field :column, 500, type: :string, deprecated: false
  field :ignore_null, 501, type: :bool, json_name: "ignoreNull", deprecated: false
  field :dimension, 502, type: :string, deprecated: false
  field :threshold, 503, type: :double, deprecated: false
  field :name, 504, type: :string, deprecated: false
  field :description, 505, type: :string, deprecated: false
  field :suspended, 506, type: :bool, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataQualityColumnResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :column, 1, type: :string, deprecated: false
  field :score, 2, proto3_optional: true, type: :float, deprecated: false
end
