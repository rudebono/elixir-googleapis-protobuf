defmodule Google.Cloud.Dataqna.V1alpha.InterpretEntity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :INTERPRET_ENTITY_UNSPECIFIED, 0
  field :DIMENSION, 1
  field :METRIC, 2
end
defmodule Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretErrorCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :INTERPRET_ERROR_CODE_UNSPECIFIED, 0
  field :INVALID_QUERY, 1
  field :FAILED_TO_UNDERSTAND, 2
  field :FAILED_TO_ANSWER, 3
end
defmodule Google.Cloud.Dataqna.V1alpha.ExecutionInfo.JobExecutionState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :JOB_EXECUTION_STATE_UNSPECIFIED, 0
  field :NOT_EXECUTED, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end
defmodule Google.Cloud.Dataqna.V1alpha.InterpretationStructure.VisualizationType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :VISUALIZATION_TYPE_UNSPECIFIED, 0
  field :TABLE, 1
  field :BAR_CHART, 2
  field :COLUMN_CHART, 3
  field :TIMELINE, 4
  field :SCATTER_PLOT, 5
  field :PIE_CHART, 6
  field :LINE_CHART, 7
  field :AREA_CHART, 8
  field :COMBO_CHART, 9
  field :HISTOGRAM, 10
  field :GENERIC_CHART, 11
  field :CHART_NOT_UNDERSTOOD, 12
end
defmodule Google.Cloud.Dataqna.V1alpha.Question do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :scopes, 2, repeated: true, type: :string, deprecated: false
  field :query, 3, type: :string, deprecated: false

  field :data_source_annotations, 4,
    repeated: true,
    type: :string,
    json_name: "dataSourceAnnotations"

  field :interpret_error, 5,
    type: Google.Cloud.Dataqna.V1alpha.InterpretError,
    json_name: "interpretError"

  field :interpretations, 6, repeated: true, type: Google.Cloud.Dataqna.V1alpha.Interpretation
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :user_email, 8, type: :string, json_name: "userEmail", deprecated: false

  field :debug_flags, 9,
    type: Google.Cloud.Dataqna.V1alpha.DebugFlags,
    json_name: "debugFlags",
    deprecated: false

  field :debug_info, 10, type: Google.Protobuf.Any, json_name: "debugInfo"
end
defmodule Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretErrorDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :unsupported_details, 1,
    type: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretUnsupportedDetails,
    json_name: "unsupportedDetails"

  field :incomplete_query_details, 2,
    type: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretIncompleteQueryDetails,
    json_name: "incompleteQueryDetails"

  field :ambiguity_details, 3,
    type: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretAmbiguityDetails,
    json_name: "ambiguityDetails"
end
defmodule Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretUnsupportedDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :operators, 1, repeated: true, type: :string
  field :intent, 2, repeated: true, type: :string
end
defmodule Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretIncompleteQueryDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :entities, 1,
    repeated: true,
    type: Google.Cloud.Dataqna.V1alpha.InterpretEntity,
    enum: true
end
defmodule Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretAmbiguityDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Dataqna.V1alpha.InterpretError do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :message, 1, type: :string
  field :code, 2, type: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretErrorCode, enum: true
  field :details, 3, type: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretErrorDetails
end
defmodule Google.Cloud.Dataqna.V1alpha.ExecutionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :job_creation_status, 1, type: Google.Rpc.Status, json_name: "jobCreationStatus"

  field :job_execution_state, 2,
    type: Google.Cloud.Dataqna.V1alpha.ExecutionInfo.JobExecutionState,
    json_name: "jobExecutionState",
    enum: true

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :bigquery_job, 4, type: Google.Cloud.Dataqna.V1alpha.BigQueryJob, json_name: "bigqueryJob"
end
defmodule Google.Cloud.Dataqna.V1alpha.BigQueryJob do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :job_id, 1, type: :string, json_name: "jobId"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :location, 3, type: :string
end
defmodule Google.Cloud.Dataqna.V1alpha.Interpretation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :data_sources, 1, repeated: true, type: :string, json_name: "dataSources"
  field :confidence, 2, type: :double
  field :unused_phrases, 3, repeated: true, type: :string, json_name: "unusedPhrases"

  field :human_readable, 4,
    type: Google.Cloud.Dataqna.V1alpha.HumanReadable,
    json_name: "humanReadable"

  field :interpretation_structure, 5,
    type: Google.Cloud.Dataqna.V1alpha.InterpretationStructure,
    json_name: "interpretationStructure"

  field :data_query, 6, type: Google.Cloud.Dataqna.V1alpha.DataQuery, json_name: "dataQuery"

  field :execution_info, 7,
    type: Google.Cloud.Dataqna.V1alpha.ExecutionInfo,
    json_name: "executionInfo"
end
defmodule Google.Cloud.Dataqna.V1alpha.DataQuery do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :sql, 1, type: :string
end
defmodule Google.Cloud.Dataqna.V1alpha.HumanReadable do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :generated_interpretation, 1,
    type: Google.Cloud.Dataqna.V1alpha.AnnotatedString,
    json_name: "generatedInterpretation"

  field :original_question, 2,
    type: Google.Cloud.Dataqna.V1alpha.AnnotatedString,
    json_name: "originalQuestion"
end
defmodule Google.Cloud.Dataqna.V1alpha.InterpretationStructure.ColumnInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :output_alias, 1, type: :string, json_name: "outputAlias"
  field :display_name, 2, type: :string, json_name: "displayName"
end
defmodule Google.Cloud.Dataqna.V1alpha.InterpretationStructure do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :visualization_types, 1,
    repeated: true,
    type: Google.Cloud.Dataqna.V1alpha.InterpretationStructure.VisualizationType,
    json_name: "visualizationTypes",
    enum: true

  field :column_info, 2,
    repeated: true,
    type: Google.Cloud.Dataqna.V1alpha.InterpretationStructure.ColumnInfo,
    json_name: "columnInfo"
end
defmodule Google.Cloud.Dataqna.V1alpha.DebugFlags do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :include_va_query, 1, type: :bool, json_name: "includeVaQuery"
  field :include_nested_va_query, 2, type: :bool, json_name: "includeNestedVaQuery"
  field :include_human_interpretation, 3, type: :bool, json_name: "includeHumanInterpretation"
  field :include_aqua_debug_response, 4, type: :bool, json_name: "includeAquaDebugResponse"
  field :time_override, 5, type: :int64, json_name: "timeOverride"
  field :is_internal_google_user, 6, type: :bool, json_name: "isInternalGoogleUser"
  field :ignore_cache, 7, type: :bool, json_name: "ignoreCache"
  field :include_search_entities_rpc, 8, type: :bool, json_name: "includeSearchEntitiesRpc"

  field :include_list_column_annotations_rpc, 9,
    type: :bool,
    json_name: "includeListColumnAnnotationsRpc"

  field :include_virtual_analyst_entities, 10,
    type: :bool,
    json_name: "includeVirtualAnalystEntities"

  field :include_table_list, 11, type: :bool, json_name: "includeTableList"
  field :include_domain_list, 12, type: :bool, json_name: "includeDomainList"
end
