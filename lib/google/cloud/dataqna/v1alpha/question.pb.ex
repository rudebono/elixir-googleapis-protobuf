defmodule Google.Cloud.Dataqna.V1alpha.InterpretEntity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :INTERPRET_ENTITY_UNSPECIFIED | :DIMENSION | :METRIC

  field :INTERPRET_ENTITY_UNSPECIFIED, 0
  field :DIMENSION, 1
  field :METRIC, 2
end

defmodule Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretErrorCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INTERPRET_ERROR_CODE_UNSPECIFIED
          | :INVALID_QUERY
          | :FAILED_TO_UNDERSTAND
          | :FAILED_TO_ANSWER

  field :INTERPRET_ERROR_CODE_UNSPECIFIED, 0
  field :INVALID_QUERY, 1
  field :FAILED_TO_UNDERSTAND, 2
  field :FAILED_TO_ANSWER, 3
end

defmodule Google.Cloud.Dataqna.V1alpha.ExecutionInfo.JobExecutionState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :JOB_EXECUTION_STATE_UNSPECIFIED
          | :NOT_EXECUTED
          | :RUNNING
          | :SUCCEEDED
          | :FAILED

  field :JOB_EXECUTION_STATE_UNSPECIFIED, 0
  field :NOT_EXECUTED, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Dataqna.V1alpha.InterpretationStructure.VisualizationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :VISUALIZATION_TYPE_UNSPECIFIED
          | :TABLE
          | :BAR_CHART
          | :COLUMN_CHART
          | :TIMELINE
          | :SCATTER_PLOT
          | :PIE_CHART
          | :LINE_CHART
          | :AREA_CHART
          | :COMBO_CHART
          | :HISTOGRAM
          | :GENERIC_CHART
          | :CHART_NOT_UNDERSTOOD

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          scopes: [String.t()],
          query: String.t(),
          data_source_annotations: [String.t()],
          interpret_error: Google.Cloud.Dataqna.V1alpha.InterpretError.t() | nil,
          interpretations: [Google.Cloud.Dataqna.V1alpha.Interpretation.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          user_email: String.t(),
          debug_flags: Google.Cloud.Dataqna.V1alpha.DebugFlags.t() | nil,
          debug_info: Google.Protobuf.Any.t() | nil
        }

  defstruct [
    :name,
    :scopes,
    :query,
    :data_source_annotations,
    :interpret_error,
    :interpretations,
    :create_time,
    :user_email,
    :debug_flags,
    :debug_info
  ]

  field :name, 1, type: :string
  field :scopes, 2, repeated: true, type: :string
  field :query, 3, type: :string

  field :data_source_annotations, 4,
    repeated: true,
    type: :string,
    json_name: "dataSourceAnnotations"

  field :interpret_error, 5,
    type: Google.Cloud.Dataqna.V1alpha.InterpretError,
    json_name: "interpretError"

  field :interpretations, 6, repeated: true, type: Google.Cloud.Dataqna.V1alpha.Interpretation
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :user_email, 8, type: :string, json_name: "userEmail"
  field :debug_flags, 9, type: Google.Cloud.Dataqna.V1alpha.DebugFlags, json_name: "debugFlags"
  field :debug_info, 10, type: Google.Protobuf.Any, json_name: "debugInfo"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretErrorDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          unsupported_details:
            Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretUnsupportedDetails.t() | nil,
          incomplete_query_details:
            Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretIncompleteQueryDetails.t() | nil,
          ambiguity_details:
            Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretAmbiguityDetails.t() | nil
        }

  defstruct [:unsupported_details, :incomplete_query_details, :ambiguity_details]

  field :unsupported_details, 1,
    type: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretUnsupportedDetails,
    json_name: "unsupportedDetails"

  field :incomplete_query_details, 2,
    type: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretIncompleteQueryDetails,
    json_name: "incompleteQueryDetails"

  field :ambiguity_details, 3,
    type: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretAmbiguityDetails,
    json_name: "ambiguityDetails"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretUnsupportedDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operators: [String.t()],
          intent: [String.t()]
        }

  defstruct [:operators, :intent]

  field :operators, 1, repeated: true, type: :string
  field :intent, 2, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretIncompleteQueryDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entities: [Google.Cloud.Dataqna.V1alpha.InterpretEntity.t()]
        }

  defstruct [:entities]

  field :entities, 1,
    repeated: true,
    type: Google.Cloud.Dataqna.V1alpha.InterpretEntity,
    enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretAmbiguityDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.InterpretError do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t(),
          code: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretErrorCode.t(),
          details: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretErrorDetails.t() | nil
        }

  defstruct [:message, :code, :details]

  field :message, 1, type: :string
  field :code, 2, type: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretErrorCode, enum: true
  field :details, 3, type: Google.Cloud.Dataqna.V1alpha.InterpretError.InterpretErrorDetails

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.ExecutionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_creation_status: Google.Rpc.Status.t() | nil,
          job_execution_state: Google.Cloud.Dataqna.V1alpha.ExecutionInfo.JobExecutionState.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          bigquery_job: Google.Cloud.Dataqna.V1alpha.BigQueryJob.t() | nil
        }

  defstruct [:job_creation_status, :job_execution_state, :create_time, :bigquery_job]

  field :job_creation_status, 1, type: Google.Rpc.Status, json_name: "jobCreationStatus"

  field :job_execution_state, 2,
    type: Google.Cloud.Dataqna.V1alpha.ExecutionInfo.JobExecutionState,
    enum: true,
    json_name: "jobExecutionState"

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :bigquery_job, 4, type: Google.Cloud.Dataqna.V1alpha.BigQueryJob, json_name: "bigqueryJob"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.BigQueryJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          job_id: String.t(),
          project_id: String.t(),
          location: String.t()
        }

  defstruct [:job_id, :project_id, :location]

  field :job_id, 1, type: :string, json_name: "jobId"
  field :project_id, 2, type: :string, json_name: "projectId"
  field :location, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.Interpretation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_sources: [String.t()],
          confidence: float | :infinity | :negative_infinity | :nan,
          unused_phrases: [String.t()],
          human_readable: Google.Cloud.Dataqna.V1alpha.HumanReadable.t() | nil,
          interpretation_structure:
            Google.Cloud.Dataqna.V1alpha.InterpretationStructure.t() | nil,
          data_query: Google.Cloud.Dataqna.V1alpha.DataQuery.t() | nil,
          execution_info: Google.Cloud.Dataqna.V1alpha.ExecutionInfo.t() | nil
        }

  defstruct [
    :data_sources,
    :confidence,
    :unused_phrases,
    :human_readable,
    :interpretation_structure,
    :data_query,
    :execution_info
  ]

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.DataQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sql: String.t()
        }

  defstruct [:sql]

  field :sql, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.HumanReadable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generated_interpretation: Google.Cloud.Dataqna.V1alpha.AnnotatedString.t() | nil,
          original_question: Google.Cloud.Dataqna.V1alpha.AnnotatedString.t() | nil
        }

  defstruct [:generated_interpretation, :original_question]

  field :generated_interpretation, 1,
    type: Google.Cloud.Dataqna.V1alpha.AnnotatedString,
    json_name: "generatedInterpretation"

  field :original_question, 2,
    type: Google.Cloud.Dataqna.V1alpha.AnnotatedString,
    json_name: "originalQuestion"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.InterpretationStructure.ColumnInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_alias: String.t(),
          display_name: String.t()
        }

  defstruct [:output_alias, :display_name]

  field :output_alias, 1, type: :string, json_name: "outputAlias"
  field :display_name, 2, type: :string, json_name: "displayName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.InterpretationStructure do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          visualization_types: [
            Google.Cloud.Dataqna.V1alpha.InterpretationStructure.VisualizationType.t()
          ],
          column_info: [Google.Cloud.Dataqna.V1alpha.InterpretationStructure.ColumnInfo.t()]
        }

  defstruct [:visualization_types, :column_info]

  field :visualization_types, 1,
    repeated: true,
    type: Google.Cloud.Dataqna.V1alpha.InterpretationStructure.VisualizationType,
    enum: true,
    json_name: "visualizationTypes"

  field :column_info, 2,
    repeated: true,
    type: Google.Cloud.Dataqna.V1alpha.InterpretationStructure.ColumnInfo,
    json_name: "columnInfo"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataqna.V1alpha.DebugFlags do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          include_va_query: boolean,
          include_nested_va_query: boolean,
          include_human_interpretation: boolean,
          include_aqua_debug_response: boolean,
          time_override: integer,
          is_internal_google_user: boolean,
          ignore_cache: boolean,
          include_search_entities_rpc: boolean,
          include_list_column_annotations_rpc: boolean,
          include_virtual_analyst_entities: boolean,
          include_table_list: boolean,
          include_domain_list: boolean
        }

  defstruct [
    :include_va_query,
    :include_nested_va_query,
    :include_human_interpretation,
    :include_aqua_debug_response,
    :time_override,
    :is_internal_google_user,
    :ignore_cache,
    :include_search_entities_rpc,
    :include_list_column_annotations_rpc,
    :include_virtual_analyst_entities,
    :include_table_list,
    :include_domain_list
  ]

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

  def transform_module(), do: nil
end
