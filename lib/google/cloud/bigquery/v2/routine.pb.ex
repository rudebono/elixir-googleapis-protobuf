defmodule Google.Cloud.Bigquery.V2.Routine.RoutineType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ROUTINE_TYPE_UNSPECIFIED, 0
  field :SCALAR_FUNCTION, 1
  field :PROCEDURE, 2
  field :TABLE_VALUED_FUNCTION, 3
  field :AGGREGATE_FUNCTION, 4
end

defmodule Google.Cloud.Bigquery.V2.Routine.Language do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LANGUAGE_UNSPECIFIED, 0
  field :SQL, 1
  field :JAVASCRIPT, 2
  field :PYTHON, 3
  field :JAVA, 4
  field :SCALA, 5
end

defmodule Google.Cloud.Bigquery.V2.Routine.DeterminismLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DETERMINISM_LEVEL_UNSPECIFIED, 0
  field :DETERMINISTIC, 1
  field :NOT_DETERMINISTIC, 2
end

defmodule Google.Cloud.Bigquery.V2.Routine.SecurityMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SECURITY_MODE_UNSPECIFIED, 0
  field :DEFINER, 1
  field :INVOKER, 2
end

defmodule Google.Cloud.Bigquery.V2.Routine.DataGovernanceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATA_GOVERNANCE_TYPE_UNSPECIFIED, 0
  field :DATA_MASKING, 1
end

defmodule Google.Cloud.Bigquery.V2.Routine.Argument.ArgumentKind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ARGUMENT_KIND_UNSPECIFIED, 0
  field :FIXED_TYPE, 1
  field :ANY_TYPE, 2
end

defmodule Google.Cloud.Bigquery.V2.Routine.Argument.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :IN, 1
  field :OUT, 2
  field :INOUT, 3
end

defmodule Google.Cloud.Bigquery.V2.Routine.Argument do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :argument_kind, 2,
    type: Google.Cloud.Bigquery.V2.Routine.Argument.ArgumentKind,
    json_name: "argumentKind",
    enum: true,
    deprecated: false

  field :mode, 3, type: Google.Cloud.Bigquery.V2.Routine.Argument.Mode, enum: true
  field :data_type, 4, type: Google.Cloud.Bigquery.V2.StandardSqlDataType, json_name: "dataType"

  field :is_aggregate, 6,
    type: Google.Protobuf.BoolValue,
    json_name: "isAggregate",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.Routine.RemoteFunctionOptions.UserDefinedContextEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.V2.Routine.RemoteFunctionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :endpoint, 1, type: :string
  field :connection, 2, type: :string

  field :user_defined_context, 3,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.Routine.RemoteFunctionOptions.UserDefinedContextEntry,
    json_name: "userDefinedContext",
    map: true

  field :max_batching_rows, 4, type: :int64, json_name: "maxBatchingRows"
end

defmodule Google.Cloud.Bigquery.V2.Routine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :etag, 1, type: :string, deprecated: false

  field :routine_reference, 2,
    type: Google.Cloud.Bigquery.V2.RoutineReference,
    json_name: "routineReference",
    deprecated: false

  field :routine_type, 3,
    type: Google.Cloud.Bigquery.V2.Routine.RoutineType,
    json_name: "routineType",
    enum: true,
    deprecated: false

  field :creation_time, 4, type: :int64, json_name: "creationTime", deprecated: false
  field :last_modified_time, 5, type: :int64, json_name: "lastModifiedTime", deprecated: false

  field :language, 6,
    type: Google.Cloud.Bigquery.V2.Routine.Language,
    enum: true,
    deprecated: false

  field :arguments, 7, repeated: true, type: Google.Cloud.Bigquery.V2.Routine.Argument

  field :return_type, 10,
    type: Google.Cloud.Bigquery.V2.StandardSqlDataType,
    json_name: "returnType"

  field :return_table_type, 13,
    type: Google.Cloud.Bigquery.V2.StandardSqlTableType,
    json_name: "returnTableType",
    deprecated: false

  field :imported_libraries, 8, repeated: true, type: :string, json_name: "importedLibraries"
  field :definition_body, 9, type: :string, json_name: "definitionBody"
  field :description, 11, type: :string, deprecated: false

  field :determinism_level, 12,
    type: Google.Cloud.Bigquery.V2.Routine.DeterminismLevel,
    json_name: "determinismLevel",
    enum: true,
    deprecated: false

  field :security_mode, 18,
    type: Google.Cloud.Bigquery.V2.Routine.SecurityMode,
    json_name: "securityMode",
    enum: true,
    deprecated: false

  field :strict_mode, 14,
    type: Google.Protobuf.BoolValue,
    json_name: "strictMode",
    deprecated: false

  field :remote_function_options, 15,
    type: Google.Cloud.Bigquery.V2.Routine.RemoteFunctionOptions,
    json_name: "remoteFunctionOptions",
    deprecated: false

  field :spark_options, 16,
    type: Google.Cloud.Bigquery.V2.SparkOptions,
    json_name: "sparkOptions",
    deprecated: false

  field :data_governance_type, 17,
    type: Google.Cloud.Bigquery.V2.Routine.DataGovernanceType,
    json_name: "dataGovernanceType",
    enum: true,
    deprecated: false

  field :python_options, 20,
    type: Google.Cloud.Bigquery.V2.PythonOptions,
    json_name: "pythonOptions",
    deprecated: false

  field :external_runtime_options, 21,
    type: Google.Cloud.Bigquery.V2.ExternalRuntimeOptions,
    json_name: "externalRuntimeOptions",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.PythonOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entry_point, 1, type: :string, json_name: "entryPoint", deprecated: false
  field :packages, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.ExternalRuntimeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :container_memory, 1, type: :string, json_name: "containerMemory", deprecated: false
  field :container_cpu, 2, type: :double, json_name: "containerCpu", deprecated: false
  field :runtime_connection, 3, type: :string, json_name: "runtimeConnection", deprecated: false
  field :max_batching_rows, 4, type: :int64, json_name: "maxBatchingRows", deprecated: false
  field :runtime_version, 5, type: :string, json_name: "runtimeVersion", deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.SparkOptions.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Bigquery.V2.SparkOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :connection, 1, type: :string
  field :runtime_version, 2, type: :string, json_name: "runtimeVersion"
  field :container_image, 3, type: :string, json_name: "containerImage"

  field :properties, 4,
    repeated: true,
    type: Google.Cloud.Bigquery.V2.SparkOptions.PropertiesEntry,
    map: true

  field :main_file_uri, 5, type: :string, json_name: "mainFileUri"
  field :py_file_uris, 6, repeated: true, type: :string, json_name: "pyFileUris"
  field :jar_uris, 7, repeated: true, type: :string, json_name: "jarUris"
  field :file_uris, 8, repeated: true, type: :string, json_name: "fileUris"
  field :archive_uris, 9, repeated: true, type: :string, json_name: "archiveUris"
  field :main_class, 10, type: :string, json_name: "mainClass"
end

defmodule Google.Cloud.Bigquery.V2.GetRoutineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :routine_id, 3, type: :string, json_name: "routineId", deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.InsertRoutineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :routine, 3, type: Google.Cloud.Bigquery.V2.Routine, deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.UpdateRoutineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :routine_id, 3, type: :string, json_name: "routineId", deprecated: false
  field :routine, 4, type: Google.Cloud.Bigquery.V2.Routine, deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.PatchRoutineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :routine_id, 3, type: :string, json_name: "routineId", deprecated: false
  field :routine, 4, type: Google.Cloud.Bigquery.V2.Routine, deprecated: false
  field :field_mask, 5, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
end

defmodule Google.Cloud.Bigquery.V2.DeleteRoutineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :routine_id, 3, type: :string, json_name: "routineId", deprecated: false
end

defmodule Google.Cloud.Bigquery.V2.ListRoutinesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :max_results, 3, type: Google.Protobuf.UInt32Value, json_name: "maxResults"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :filter, 6, type: :string
end

defmodule Google.Cloud.Bigquery.V2.ListRoutinesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :routines, 1, repeated: true, type: Google.Cloud.Bigquery.V2.Routine
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.V2.RoutineService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.bigquery.v2.RoutineService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetRoutine, Google.Cloud.Bigquery.V2.GetRoutineRequest, Google.Cloud.Bigquery.V2.Routine

  rpc :InsertRoutine,
      Google.Cloud.Bigquery.V2.InsertRoutineRequest,
      Google.Cloud.Bigquery.V2.Routine

  rpc :UpdateRoutine,
      Google.Cloud.Bigquery.V2.UpdateRoutineRequest,
      Google.Cloud.Bigquery.V2.Routine

  rpc :PatchRoutine,
      Google.Cloud.Bigquery.V2.PatchRoutineRequest,
      Google.Cloud.Bigquery.V2.Routine

  rpc :DeleteRoutine, Google.Cloud.Bigquery.V2.DeleteRoutineRequest, Google.Protobuf.Empty

  rpc :ListRoutines,
      Google.Cloud.Bigquery.V2.ListRoutinesRequest,
      Google.Cloud.Bigquery.V2.ListRoutinesResponse
end

defmodule Google.Cloud.Bigquery.V2.RoutineService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Bigquery.V2.RoutineService.Service
end
