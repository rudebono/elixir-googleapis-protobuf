defmodule Google.Cloud.Clouddms.V1.ValuePresentInList do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VALUE_PRESENT_IN_LIST_UNSPECIFIED, 0
  field :VALUE_PRESENT_IN_LIST_IF_VALUE_LIST, 1
  field :VALUE_PRESENT_IN_LIST_IF_VALUE_NOT_LIST, 2
end

defmodule Google.Cloud.Clouddms.V1.DatabaseEntityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DATABASE_ENTITY_TYPE_UNSPECIFIED, 0
  field :DATABASE_ENTITY_TYPE_SCHEMA, 1
  field :DATABASE_ENTITY_TYPE_TABLE, 2
  field :DATABASE_ENTITY_TYPE_COLUMN, 3
  field :DATABASE_ENTITY_TYPE_CONSTRAINT, 4
  field :DATABASE_ENTITY_TYPE_INDEX, 5
  field :DATABASE_ENTITY_TYPE_TRIGGER, 6
  field :DATABASE_ENTITY_TYPE_VIEW, 7
  field :DATABASE_ENTITY_TYPE_SEQUENCE, 8
  field :DATABASE_ENTITY_TYPE_STORED_PROCEDURE, 9
  field :DATABASE_ENTITY_TYPE_FUNCTION, 10
  field :DATABASE_ENTITY_TYPE_SYNONYM, 11
  field :DATABASE_ENTITY_TYPE_DATABASE_PACKAGE, 12
  field :DATABASE_ENTITY_TYPE_UDT, 13
  field :DATABASE_ENTITY_TYPE_MATERIALIZED_VIEW, 14
  field :DATABASE_ENTITY_TYPE_DATABASE, 15
end

defmodule Google.Cloud.Clouddms.V1.EntityNameTransformation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENTITY_NAME_TRANSFORMATION_UNSPECIFIED, 0
  field :ENTITY_NAME_TRANSFORMATION_NO_TRANSFORMATION, 1
  field :ENTITY_NAME_TRANSFORMATION_LOWER_CASE, 2
  field :ENTITY_NAME_TRANSFORMATION_UPPER_CASE, 3
  field :ENTITY_NAME_TRANSFORMATION_CAPITALIZED_CASE, 4
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :BACKGROUND_JOB_TYPE_UNSPECIFIED, 0
  field :BACKGROUND_JOB_TYPE_SOURCE_SEED, 1
  field :BACKGROUND_JOB_TYPE_CONVERT, 2
  field :BACKGROUND_JOB_TYPE_APPLY_DESTINATION, 3
  field :BACKGROUND_JOB_TYPE_IMPORT_RULES_FILE, 5
end

defmodule Google.Cloud.Clouddms.V1.ImportRulesFileFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :IMPORT_RULES_FILE_FORMAT_UNSPECIFIED, 0
  field :IMPORT_RULES_FILE_FORMAT_HARBOUR_BRIDGE_SESSION_FILE, 1
  field :IMPORT_RULES_FILE_FORMAT_ORATOPG_CONFIG_FILE, 2
end

defmodule Google.Cloud.Clouddms.V1.ValueComparison do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VALUE_COMPARISON_UNSPECIFIED, 0
  field :VALUE_COMPARISON_IF_VALUE_SMALLER_THAN, 1
  field :VALUE_COMPARISON_IF_VALUE_SMALLER_EQUAL_THAN, 2
  field :VALUE_COMPARISON_IF_VALUE_LARGER_THAN, 3
  field :VALUE_COMPARISON_IF_VALUE_LARGER_EQUAL_THAN, 4
end

defmodule Google.Cloud.Clouddms.V1.NumericFilterOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :NUMERIC_FILTER_OPTION_UNSPECIFIED, 0
  field :NUMERIC_FILTER_OPTION_ALL, 1
  field :NUMERIC_FILTER_OPTION_LIMIT, 2
  field :NUMERIC_FILTER_OPTION_LIMITLESS, 3
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.JobCompletionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :JOB_COMPLETION_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Clouddms.V1.MappingRule.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :DELETED, 3
end

defmodule Google.Cloud.Clouddms.V1.DatabaseEntity.TreeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TREE_TYPE_UNSPECIFIED, 0
  field :SOURCE, 1
  field :DRAFT, 2
  field :DESTINATION, 3
end

defmodule Google.Cloud.Clouddms.V1.EntityIssue.IssueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ISSUE_TYPE_UNSPECIFIED, 0
  field :ISSUE_TYPE_DDL, 1
  field :ISSUE_TYPE_APPLY, 2
  field :ISSUE_TYPE_CONVERT, 3
end

defmodule Google.Cloud.Clouddms.V1.EntityIssue.IssueSeverity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ISSUE_SEVERITY_UNSPECIFIED, 0
  field :ISSUE_SEVERITY_INFO, 1
  field :ISSUE_SEVERITY_WARNING, 2
  field :ISSUE_SEVERITY_ERROR, 3
end

defmodule Google.Cloud.Clouddms.V1.DatabaseEngineInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :engine, 1, type: Google.Cloud.Clouddms.V1.DatabaseEngine, enum: true, deprecated: false
  field :version, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ConversionWorkspace.GlobalSettingsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Clouddms.V1.ConversionWorkspace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :source, 2, type: Google.Cloud.Clouddms.V1.DatabaseEngineInfo, deprecated: false
  field :destination, 3, type: Google.Cloud.Clouddms.V1.DatabaseEngineInfo, deprecated: false

  field :global_settings, 4,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.ConversionWorkspace.GlobalSettingsEntry,
    json_name: "globalSettings",
    map: true,
    deprecated: false

  field :has_uncommitted_changes, 5,
    type: :bool,
    json_name: "hasUncommittedChanges",
    deprecated: false

  field :latest_commit_id, 6, type: :string, json_name: "latestCommitId", deprecated: false

  field :latest_commit_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "latestCommitTime",
    deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :display_name, 11, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.SeedJobDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :connection_profile, 1, type: :string, json_name: "connectionProfile", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ImportRulesJobDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :files, 1, repeated: true, type: :string, deprecated: false

  field :file_format, 2,
    type: Google.Cloud.Clouddms.V1.ImportRulesFileFormat,
    json_name: "fileFormat",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ConvertJobDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :filter, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ApplyJobDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :connection_profile, 1, type: :string, json_name: "connectionProfile", deprecated: false
  field :filter, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :job_details, 0

  field :id, 1, type: :string

  field :job_type, 2,
    type: Google.Cloud.Clouddms.V1.BackgroundJobType,
    json_name: "jobType",
    enum: true

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :finish_time, 4, type: Google.Protobuf.Timestamp, json_name: "finishTime"

  field :completion_state, 5,
    type: Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.JobCompletionState,
    json_name: "completionState",
    enum: true,
    deprecated: false

  field :completion_comment, 6, type: :string, json_name: "completionComment", deprecated: false
  field :request_autocommit, 7, type: :bool, json_name: "requestAutocommit", deprecated: false

  field :seed_job_details, 100,
    type: Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.SeedJobDetails,
    json_name: "seedJobDetails",
    oneof: 0,
    deprecated: false

  field :import_rules_job_details, 101,
    type: Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ImportRulesJobDetails,
    json_name: "importRulesJobDetails",
    oneof: 0,
    deprecated: false

  field :convert_job_details, 102,
    type: Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ConvertJobDetails,
    json_name: "convertJobDetails",
    oneof: 0,
    deprecated: false

  field :apply_job_details, 103,
    type: Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ApplyJobDetails,
    json_name: "applyJobDetails",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.MappingRuleFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent_entity, 1, type: :string, json_name: "parentEntity", deprecated: false
  field :entity_name_prefix, 2, type: :string, json_name: "entityNamePrefix", deprecated: false
  field :entity_name_suffix, 3, type: :string, json_name: "entityNameSuffix", deprecated: false

  field :entity_name_contains, 4,
    type: :string,
    json_name: "entityNameContains",
    deprecated: false

  field :entities, 5, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.MappingRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :details, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :state, 3, type: Google.Cloud.Clouddms.V1.MappingRule.State, enum: true, deprecated: false

  field :rule_scope, 4,
    type: Google.Cloud.Clouddms.V1.DatabaseEntityType,
    json_name: "ruleScope",
    enum: true,
    deprecated: false

  field :filter, 5, type: Google.Cloud.Clouddms.V1.MappingRuleFilter, deprecated: false
  field :rule_order, 6, type: :int64, json_name: "ruleOrder", deprecated: false
  field :revision_id, 7, type: :string, json_name: "revisionId", deprecated: false

  field :revision_create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :single_entity_rename, 102,
    type: Google.Cloud.Clouddms.V1.SingleEntityRename,
    json_name: "singleEntityRename",
    oneof: 0,
    deprecated: false

  field :multi_entity_rename, 103,
    type: Google.Cloud.Clouddms.V1.MultiEntityRename,
    json_name: "multiEntityRename",
    oneof: 0,
    deprecated: false

  field :entity_move, 105,
    type: Google.Cloud.Clouddms.V1.EntityMove,
    json_name: "entityMove",
    oneof: 0,
    deprecated: false

  field :single_column_change, 106,
    type: Google.Cloud.Clouddms.V1.SingleColumnChange,
    json_name: "singleColumnChange",
    oneof: 0,
    deprecated: false

  field :multi_column_data_type_change, 107,
    type: Google.Cloud.Clouddms.V1.MultiColumnDatatypeChange,
    json_name: "multiColumnDataTypeChange",
    oneof: 0,
    deprecated: false

  field :conditional_column_set_value, 108,
    type: Google.Cloud.Clouddms.V1.ConditionalColumnSetValue,
    json_name: "conditionalColumnSetValue",
    oneof: 0,
    deprecated: false

  field :convert_rowid_column, 114,
    type: Google.Cloud.Clouddms.V1.ConvertRowIdToColumn,
    json_name: "convertRowidColumn",
    oneof: 0,
    deprecated: false

  field :set_table_primary_key, 115,
    type: Google.Cloud.Clouddms.V1.SetTablePrimaryKey,
    json_name: "setTablePrimaryKey",
    oneof: 0,
    deprecated: false

  field :single_package_change, 116,
    type: Google.Cloud.Clouddms.V1.SinglePackageChange,
    json_name: "singlePackageChange",
    oneof: 0,
    deprecated: false

  field :source_sql_change, 117,
    type: Google.Cloud.Clouddms.V1.SourceSqlChange,
    json_name: "sourceSqlChange",
    oneof: 0,
    deprecated: false

  field :filter_table_columns, 118,
    type: Google.Cloud.Clouddms.V1.FilterTableColumns,
    json_name: "filterTableColumns",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SingleEntityRename do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :new_name, 1, type: :string, json_name: "newName", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.MultiEntityRename do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :new_name_pattern, 1, type: :string, json_name: "newNamePattern", deprecated: false

  field :source_name_transformation, 2,
    type: Google.Cloud.Clouddms.V1.EntityNameTransformation,
    json_name: "sourceNameTransformation",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.EntityMove do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :new_schema, 1, type: :string, json_name: "newSchema", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SingleColumnChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_type, 1, type: :string, json_name: "dataType", deprecated: false
  field :charset, 2, type: :string, deprecated: false
  field :collation, 3, type: :string, deprecated: false
  field :length, 4, type: :int64, deprecated: false
  field :precision, 5, type: :int32, deprecated: false
  field :scale, 6, type: :int32, deprecated: false

  field :fractional_seconds_precision, 7,
    type: :int32,
    json_name: "fractionalSecondsPrecision",
    deprecated: false

  field :array, 8, type: :bool, deprecated: false
  field :array_length, 9, type: :int32, json_name: "arrayLength", deprecated: false
  field :nullable, 10, type: :bool, deprecated: false
  field :auto_generated, 11, type: :bool, json_name: "autoGenerated", deprecated: false
  field :udt, 12, type: :bool, deprecated: false

  field :custom_features, 13,
    type: Google.Protobuf.Struct,
    json_name: "customFeatures",
    deprecated: false

  field :set_values, 14, repeated: true, type: :string, json_name: "setValues", deprecated: false
  field :comment, 15, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.MultiColumnDatatypeChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source_filter, 0

  field :source_data_type_filter, 1,
    type: :string,
    json_name: "sourceDataTypeFilter",
    deprecated: false

  field :source_text_filter, 100,
    type: Google.Cloud.Clouddms.V1.SourceTextFilter,
    json_name: "sourceTextFilter",
    oneof: 0,
    deprecated: false

  field :source_numeric_filter, 101,
    type: Google.Cloud.Clouddms.V1.SourceNumericFilter,
    json_name: "sourceNumericFilter",
    oneof: 0,
    deprecated: false

  field :new_data_type, 2, type: :string, json_name: "newDataType", deprecated: false
  field :override_length, 3, type: :int64, json_name: "overrideLength", deprecated: false
  field :override_scale, 4, type: :int32, json_name: "overrideScale", deprecated: false
  field :override_precision, 5, type: :int32, json_name: "overridePrecision", deprecated: false

  field :override_fractional_seconds_precision, 6,
    type: :int32,
    json_name: "overrideFractionalSecondsPrecision",
    deprecated: false

  field :custom_features, 7,
    type: Google.Protobuf.Struct,
    json_name: "customFeatures",
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SourceTextFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_min_length_filter, 1,
    type: :int64,
    json_name: "sourceMinLengthFilter",
    deprecated: false

  field :source_max_length_filter, 2,
    type: :int64,
    json_name: "sourceMaxLengthFilter",
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SourceNumericFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_min_scale_filter, 1,
    type: :int32,
    json_name: "sourceMinScaleFilter",
    deprecated: false

  field :source_max_scale_filter, 2,
    type: :int32,
    json_name: "sourceMaxScaleFilter",
    deprecated: false

  field :source_min_precision_filter, 3,
    type: :int32,
    json_name: "sourceMinPrecisionFilter",
    deprecated: false

  field :source_max_precision_filter, 4,
    type: :int32,
    json_name: "sourceMaxPrecisionFilter",
    deprecated: false

  field :numeric_filter_option, 5,
    type: Google.Cloud.Clouddms.V1.NumericFilterOption,
    json_name: "numericFilterOption",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ConditionalColumnSetValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source_filter, 0

  field :source_text_filter, 100,
    type: Google.Cloud.Clouddms.V1.SourceTextFilter,
    json_name: "sourceTextFilter",
    oneof: 0,
    deprecated: false

  field :source_numeric_filter, 101,
    type: Google.Cloud.Clouddms.V1.SourceNumericFilter,
    json_name: "sourceNumericFilter",
    oneof: 0,
    deprecated: false

  field :value_transformation, 1,
    type: Google.Cloud.Clouddms.V1.ValueTransformation,
    json_name: "valueTransformation",
    deprecated: false

  field :custom_features, 2,
    type: Google.Protobuf.Struct,
    json_name: "customFeatures",
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ValueTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :filter, 0

  oneof :action, 1

  field :is_null, 100,
    type: Google.Protobuf.Empty,
    json_name: "isNull",
    oneof: 0,
    deprecated: false

  field :value_list, 101,
    type: Google.Cloud.Clouddms.V1.ValueListFilter,
    json_name: "valueList",
    oneof: 0,
    deprecated: false

  field :int_comparison, 102,
    type: Google.Cloud.Clouddms.V1.IntComparisonFilter,
    json_name: "intComparison",
    oneof: 0,
    deprecated: false

  field :double_comparison, 103,
    type: Google.Cloud.Clouddms.V1.DoubleComparisonFilter,
    json_name: "doubleComparison",
    oneof: 0,
    deprecated: false

  field :assign_null, 200,
    type: Google.Protobuf.Empty,
    json_name: "assignNull",
    oneof: 1,
    deprecated: false

  field :assign_specific_value, 201,
    type: Google.Cloud.Clouddms.V1.AssignSpecificValue,
    json_name: "assignSpecificValue",
    oneof: 1,
    deprecated: false

  field :assign_min_value, 202,
    type: Google.Protobuf.Empty,
    json_name: "assignMinValue",
    oneof: 1,
    deprecated: false

  field :assign_max_value, 203,
    type: Google.Protobuf.Empty,
    json_name: "assignMaxValue",
    oneof: 1,
    deprecated: false

  field :round_scale, 204,
    type: Google.Cloud.Clouddms.V1.RoundToScale,
    json_name: "roundScale",
    oneof: 1,
    deprecated: false

  field :apply_hash, 205,
    type: Google.Cloud.Clouddms.V1.ApplyHash,
    json_name: "applyHash",
    oneof: 1,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ConvertRowIdToColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :only_if_no_primary_key, 1,
    type: :bool,
    json_name: "onlyIfNoPrimaryKey",
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SetTablePrimaryKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :primary_key_columns, 1,
    repeated: true,
    type: :string,
    json_name: "primaryKeyColumns",
    deprecated: false

  field :primary_key, 2, type: :string, json_name: "primaryKey", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SinglePackageChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :package_description, 1, type: :string, json_name: "packageDescription", deprecated: false
  field :package_body, 2, type: :string, json_name: "packageBody", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.SourceSqlChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sql_code, 1, type: :string, json_name: "sqlCode", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.FilterTableColumns do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :include_columns, 1,
    repeated: true,
    type: :string,
    json_name: "includeColumns",
    deprecated: false

  field :exclude_columns, 2,
    repeated: true,
    type: :string,
    json_name: "excludeColumns",
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ValueListFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value_present_list, 1,
    type: Google.Cloud.Clouddms.V1.ValuePresentInList,
    json_name: "valuePresentList",
    enum: true,
    deprecated: false

  field :values, 2, repeated: true, type: :string, deprecated: false
  field :ignore_case, 3, type: :bool, json_name: "ignoreCase", deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.IntComparisonFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value_comparison, 1,
    type: Google.Cloud.Clouddms.V1.ValueComparison,
    json_name: "valueComparison",
    enum: true,
    deprecated: false

  field :value, 2, type: :int64, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.DoubleComparisonFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value_comparison, 1,
    type: Google.Cloud.Clouddms.V1.ValueComparison,
    json_name: "valueComparison",
    enum: true,
    deprecated: false

  field :value, 2, type: :double, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.AssignSpecificValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ApplyHash do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :hash_function, 0

  field :uuid_from_bytes, 100,
    type: Google.Protobuf.Empty,
    json_name: "uuidFromBytes",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.RoundToScale do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :scale, 1, type: :int32, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.DatabaseEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :entity_body, 0

  field :short_name, 1, type: :string, json_name: "shortName"
  field :parent_entity, 2, type: :string, json_name: "parentEntity"
  field :tree, 3, type: Google.Cloud.Clouddms.V1.DatabaseEntity.TreeType, enum: true

  field :entity_type, 4,
    type: Google.Cloud.Clouddms.V1.DatabaseEntityType,
    json_name: "entityType",
    enum: true

  field :mappings, 5, repeated: true, type: Google.Cloud.Clouddms.V1.EntityMapping

  field :entity_ddl, 6,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.EntityDdl,
    json_name: "entityDdl"

  field :issues, 7, repeated: true, type: Google.Cloud.Clouddms.V1.EntityIssue
  field :database, 101, type: Google.Cloud.Clouddms.V1.DatabaseInstanceEntity, oneof: 0
  field :schema, 102, type: Google.Cloud.Clouddms.V1.SchemaEntity, oneof: 0
  field :table, 103, type: Google.Cloud.Clouddms.V1.TableEntity, oneof: 0
  field :view, 104, type: Google.Cloud.Clouddms.V1.ViewEntity, oneof: 0
  field :sequence, 105, type: Google.Cloud.Clouddms.V1.SequenceEntity, oneof: 0

  field :stored_procedure, 106,
    type: Google.Cloud.Clouddms.V1.StoredProcedureEntity,
    json_name: "storedProcedure",
    oneof: 0

  field :database_function, 107,
    type: Google.Cloud.Clouddms.V1.FunctionEntity,
    json_name: "databaseFunction",
    oneof: 0

  field :synonym, 108, type: Google.Cloud.Clouddms.V1.SynonymEntity, oneof: 0

  field :database_package, 109,
    type: Google.Cloud.Clouddms.V1.PackageEntity,
    json_name: "databasePackage",
    oneof: 0

  field :udt, 110, type: Google.Cloud.Clouddms.V1.UDTEntity, oneof: 0

  field :materialized_view, 111,
    type: Google.Cloud.Clouddms.V1.MaterializedViewEntity,
    json_name: "materializedView",
    oneof: 0
end

defmodule Google.Cloud.Clouddms.V1.DatabaseInstanceEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :custom_features, 1, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.SchemaEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :custom_features, 1, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.TableEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :columns, 1, repeated: true, type: Google.Cloud.Clouddms.V1.ColumnEntity
  field :constraints, 2, repeated: true, type: Google.Cloud.Clouddms.V1.ConstraintEntity
  field :indices, 3, repeated: true, type: Google.Cloud.Clouddms.V1.IndexEntity
  field :triggers, 4, repeated: true, type: Google.Cloud.Clouddms.V1.TriggerEntity
  field :custom_features, 5, type: Google.Protobuf.Struct, json_name: "customFeatures"
  field :comment, 6, type: :string
end

defmodule Google.Cloud.Clouddms.V1.ColumnEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :data_type, 2, type: :string, json_name: "dataType"
  field :charset, 3, type: :string
  field :collation, 4, type: :string
  field :length, 5, type: :int64
  field :precision, 6, type: :int32
  field :scale, 7, type: :int32
  field :fractional_seconds_precision, 8, type: :int32, json_name: "fractionalSecondsPrecision"
  field :array, 9, type: :bool
  field :array_length, 10, type: :int32, json_name: "arrayLength"
  field :nullable, 11, type: :bool
  field :auto_generated, 12, type: :bool, json_name: "autoGenerated"
  field :udt, 13, type: :bool
  field :custom_features, 14, type: Google.Protobuf.Struct, json_name: "customFeatures"
  field :set_values, 15, repeated: true, type: :string, json_name: "setValues"
  field :comment, 16, type: :string
  field :ordinal_position, 17, type: :int32, json_name: "ordinalPosition"
  field :default_value, 18, type: :string, json_name: "defaultValue"
end

defmodule Google.Cloud.Clouddms.V1.ConstraintEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :table_columns, 3, repeated: true, type: :string, json_name: "tableColumns"
  field :custom_features, 4, type: Google.Protobuf.Struct, json_name: "customFeatures"
  field :reference_columns, 5, repeated: true, type: :string, json_name: "referenceColumns"
  field :reference_table, 6, type: :string, json_name: "referenceTable"
  field :table_name, 7, type: :string, json_name: "tableName"
end

defmodule Google.Cloud.Clouddms.V1.IndexEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :table_columns, 3, repeated: true, type: :string, json_name: "tableColumns"
  field :unique, 4, type: :bool
  field :custom_features, 5, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.TriggerEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :triggering_events, 2, repeated: true, type: :string, json_name: "triggeringEvents"
  field :trigger_type, 3, type: :string, json_name: "triggerType"
  field :sql_code, 4, type: :string, json_name: "sqlCode"
  field :custom_features, 5, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.ViewEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sql_code, 1, type: :string, json_name: "sqlCode"
  field :custom_features, 2, type: Google.Protobuf.Struct, json_name: "customFeatures"
  field :constraints, 3, repeated: true, type: Google.Cloud.Clouddms.V1.ConstraintEntity
end

defmodule Google.Cloud.Clouddms.V1.SequenceEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :increment, 1, type: :int64
  field :start_value, 2, type: :bytes, json_name: "startValue"
  field :max_value, 3, type: :bytes, json_name: "maxValue"
  field :min_value, 4, type: :bytes, json_name: "minValue"
  field :cycle, 5, type: :bool
  field :cache, 6, type: :int64
  field :custom_features, 7, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.StoredProcedureEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sql_code, 1, type: :string, json_name: "sqlCode"
  field :custom_features, 2, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.FunctionEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sql_code, 1, type: :string, json_name: "sqlCode"
  field :custom_features, 2, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.MaterializedViewEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sql_code, 1, type: :string, json_name: "sqlCode"
  field :custom_features, 2, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.SynonymEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_entity, 1, type: :string, json_name: "sourceEntity"

  field :source_type, 2,
    type: Google.Cloud.Clouddms.V1.DatabaseEntityType,
    json_name: "sourceType",
    enum: true

  field :custom_features, 3, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.PackageEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :package_sql_code, 1, type: :string, json_name: "packageSqlCode"
  field :package_body, 2, type: :string, json_name: "packageBody"
  field :custom_features, 3, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.UDTEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :udt_sql_code, 1, type: :string, json_name: "udtSqlCode"
  field :udt_body, 2, type: :string, json_name: "udtBody"
  field :custom_features, 3, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.EntityMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_entity, 1, type: :string, json_name: "sourceEntity"
  field :draft_entity, 2, type: :string, json_name: "draftEntity"

  field :source_type, 4,
    type: Google.Cloud.Clouddms.V1.DatabaseEntityType,
    json_name: "sourceType",
    enum: true

  field :draft_type, 5,
    type: Google.Cloud.Clouddms.V1.DatabaseEntityType,
    json_name: "draftType",
    enum: true

  field :mapping_log, 3,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.EntityMappingLogEntry,
    json_name: "mappingLog"
end

defmodule Google.Cloud.Clouddms.V1.EntityMappingLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :rule_id, 1, type: :string, json_name: "ruleId"
  field :rule_revision_id, 2, type: :string, json_name: "ruleRevisionId"
  field :mapping_comment, 3, type: :string, json_name: "mappingComment"
end

defmodule Google.Cloud.Clouddms.V1.EntityDdl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ddl_type, 1, type: :string, json_name: "ddlType"
  field :entity, 2, type: :string
  field :ddl, 3, type: :string

  field :entity_type, 4,
    type: Google.Cloud.Clouddms.V1.DatabaseEntityType,
    json_name: "entityType",
    enum: true

  field :issue_id, 100, repeated: true, type: :string, json_name: "issueId"
end

defmodule Google.Cloud.Clouddms.V1.EntityIssue.Position do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :line, 1, type: :int32
  field :column, 2, type: :int32
  field :offset, 3, type: :int32
  field :length, 4, type: :int32
end

defmodule Google.Cloud.Clouddms.V1.EntityIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :type, 2, type: Google.Cloud.Clouddms.V1.EntityIssue.IssueType, enum: true
  field :severity, 3, type: Google.Cloud.Clouddms.V1.EntityIssue.IssueSeverity, enum: true
  field :message, 4, type: :string
  field :code, 5, type: :string
  field :ddl, 6, proto3_optional: true, type: :string
  field :position, 7, proto3_optional: true, type: Google.Cloud.Clouddms.V1.EntityIssue.Position

  field :entity_type, 8,
    type: Google.Cloud.Clouddms.V1.DatabaseEntityType,
    json_name: "entityType",
    enum: true
end