defmodule Google.Cloud.Clouddms.V1.DatabaseEntityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Clouddms.V1.BackgroundJobType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BACKGROUND_JOB_TYPE_UNSPECIFIED, 0
  field :BACKGROUND_JOB_TYPE_SOURCE_SEED, 1
  field :BACKGROUND_JOB_TYPE_CONVERT, 2
  field :BACKGROUND_JOB_TYPE_APPLY_DESTINATION, 3
  field :BACKGROUND_JOB_TYPE_IMPORT_RULES_FILE, 5
end

defmodule Google.Cloud.Clouddms.V1.ImportRulesFileFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :IMPORT_RULES_FILE_FORMAT_UNSPECIFIED, 0
  field :IMPORT_RULES_FILE_FORMAT_HARBOUR_BRIDGE_SESSION_FILE, 1
  field :IMPORT_RULES_FILE_FORMAT_ORATOPG_CONFIG_FILE, 2
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.JobCompletionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :JOB_COMPLETION_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Clouddms.V1.DatabaseEntity.TreeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TREE_TYPE_UNSPECIFIED, 0
  field :SOURCE, 1
  field :DRAFT, 2
  field :DESTINATION, 3
end

defmodule Google.Cloud.Clouddms.V1.DatabaseEngineInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :engine, 1, type: Google.Cloud.Clouddms.V1.DatabaseEngine, enum: true, deprecated: false
  field :version, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Clouddms.V1.ConversionWorkspace.GlobalSettingsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Clouddms.V1.ConversionWorkspace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :source, 2, type: Google.Cloud.Clouddms.V1.DatabaseEngineInfo, deprecated: false
  field :destination, 3, type: Google.Cloud.Clouddms.V1.DatabaseEngineInfo, deprecated: false

  field :global_settings, 4,
    repeated: true,
    type: Google.Cloud.Clouddms.V1.ConversionWorkspace.GlobalSettingsEntry,
    json_name: "globalSettings",
    map: true

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

  field :display_name, 11, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.SeedJobDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connection_profile, 1, type: :string, json_name: "connectionProfile"
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ImportRulesJobDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :files, 1, repeated: true, type: :string

  field :file_format, 2,
    type: Google.Cloud.Clouddms.V1.ImportRulesFileFormat,
    json_name: "fileFormat",
    enum: true
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ConvertJobDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :filter, 1, type: :string
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ApplyJobDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connection_profile, 1, type: :string, json_name: "connectionProfile"
  field :filter, 2, type: :string
end

defmodule Google.Cloud.Clouddms.V1.BackgroundJobLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    enum: true

  field :completion_comment, 6, type: :string, json_name: "completionComment"
  field :request_autocommit, 7, type: :bool, json_name: "requestAutocommit"

  field :seed_job_details, 100,
    type: Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.SeedJobDetails,
    json_name: "seedJobDetails",
    oneof: 0

  field :import_rules_job_details, 101,
    type: Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ImportRulesJobDetails,
    json_name: "importRulesJobDetails",
    oneof: 0

  field :convert_job_details, 102,
    type: Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ConvertJobDetails,
    json_name: "convertJobDetails",
    oneof: 0

  field :apply_job_details, 103,
    type: Google.Cloud.Clouddms.V1.BackgroundJobLogEntry.ApplyJobDetails,
    json_name: "applyJobDetails",
    oneof: 0
end

defmodule Google.Cloud.Clouddms.V1.DatabaseEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :entity_body, 0

  field :short_name, 1, type: :string, json_name: "shortName"
  field :parent_entity, 2, type: :string, json_name: "parentEntity"
  field :tree, 3, type: Google.Cloud.Clouddms.V1.DatabaseEntity.TreeType, enum: true

  field :entity_type, 4,
    type: Google.Cloud.Clouddms.V1.DatabaseEntityType,
    json_name: "entityType",
    enum: true

  field :mappings, 5, repeated: true, type: Google.Cloud.Clouddms.V1.EntityMapping
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
end

defmodule Google.Cloud.Clouddms.V1.SchemaEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :custom_features, 1, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.TableEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :columns, 1, repeated: true, type: Google.Cloud.Clouddms.V1.ColumnEntity
  field :constraints, 2, repeated: true, type: Google.Cloud.Clouddms.V1.ConstraintEntity
  field :indices, 3, repeated: true, type: Google.Cloud.Clouddms.V1.IndexEntity
  field :triggers, 4, repeated: true, type: Google.Cloud.Clouddms.V1.TriggerEntity
  field :custom_features, 5, type: Google.Protobuf.Struct, json_name: "customFeatures"
  field :comment, 6, type: :string
end

defmodule Google.Cloud.Clouddms.V1.ColumnEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :table_columns, 3, repeated: true, type: :string, json_name: "tableColumns"
  field :unique, 4, type: :bool
  field :custom_features, 5, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.TriggerEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :triggering_events, 2, repeated: true, type: :string, json_name: "triggeringEvents"
  field :trigger_type, 3, type: :string, json_name: "triggerType"
  field :sql_code, 4, type: :string, json_name: "sqlCode"
  field :custom_features, 5, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.ViewEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sql_code, 1, type: :string, json_name: "sqlCode"
  field :custom_features, 2, type: Google.Protobuf.Struct, json_name: "customFeatures"
  field :constraints, 3, repeated: true, type: Google.Cloud.Clouddms.V1.ConstraintEntity
end

defmodule Google.Cloud.Clouddms.V1.SequenceEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sql_code, 1, type: :string, json_name: "sqlCode"
  field :custom_features, 2, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.FunctionEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sql_code, 1, type: :string, json_name: "sqlCode"
  field :custom_features, 2, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.SynonymEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source_entity, 1, type: :string, json_name: "sourceEntity"

  field :source_type, 2,
    type: Google.Cloud.Clouddms.V1.DatabaseEntityType,
    json_name: "sourceType",
    enum: true

  field :custom_features, 3, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.PackageEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :package_sql_code, 1, type: :string, json_name: "packageSqlCode"
  field :package_body, 2, type: :string, json_name: "packageBody"
  field :custom_features, 3, type: Google.Protobuf.Struct, json_name: "customFeatures"
end

defmodule Google.Cloud.Clouddms.V1.EntityMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rule_id, 1, type: :string, json_name: "ruleId"
  field :rule_revision_id, 2, type: :string, json_name: "ruleRevisionId"
  field :mapping_comment, 3, type: :string, json_name: "mappingComment"
end