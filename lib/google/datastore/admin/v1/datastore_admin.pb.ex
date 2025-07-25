defmodule Google.Datastore.Admin.V1.OperationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :EXPORT_ENTITIES, 1
  field :IMPORT_ENTITIES, 2
  field :CREATE_INDEX, 3
  field :DELETE_INDEX, 4
end

defmodule Google.Datastore.Admin.V1.CommonMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INITIALIZING, 1
  field :PROCESSING, 2
  field :CANCELLING, 3
  field :FINALIZING, 4
  field :SUCCESSFUL, 5
  field :FAILED, 6
  field :CANCELLED, 7
end

defmodule Google.Datastore.Admin.V1.CommonMetadata.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Datastore.Admin.V1.CommonMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :operation_type, 3,
    type: Google.Datastore.Admin.V1.OperationType,
    json_name: "operationType",
    enum: true

  field :labels, 4,
    repeated: true,
    type: Google.Datastore.Admin.V1.CommonMetadata.LabelsEntry,
    map: true

  field :state, 5, type: Google.Datastore.Admin.V1.CommonMetadata.State, enum: true
end

defmodule Google.Datastore.Admin.V1.Progress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :work_completed, 1, type: :int64, json_name: "workCompleted"
  field :work_estimated, 2, type: :int64, json_name: "workEstimated"
end

defmodule Google.Datastore.Admin.V1.ExportEntitiesRequest.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Datastore.Admin.V1.ExportEntitiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Datastore.Admin.V1.ExportEntitiesRequest.LabelsEntry,
    map: true

  field :entity_filter, 3, type: Google.Datastore.Admin.V1.EntityFilter, json_name: "entityFilter"
  field :output_url_prefix, 4, type: :string, json_name: "outputUrlPrefix", deprecated: false
end

defmodule Google.Datastore.Admin.V1.ImportEntitiesRequest.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Datastore.Admin.V1.ImportEntitiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Datastore.Admin.V1.ImportEntitiesRequest.LabelsEntry,
    map: true

  field :input_url, 3, type: :string, json_name: "inputUrl", deprecated: false
  field :entity_filter, 4, type: Google.Datastore.Admin.V1.EntityFilter, json_name: "entityFilter"
end

defmodule Google.Datastore.Admin.V1.ExportEntitiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output_url, 1, type: :string, json_name: "outputUrl"
end

defmodule Google.Datastore.Admin.V1.ExportEntitiesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :common, 1, type: Google.Datastore.Admin.V1.CommonMetadata

  field :progress_entities, 2,
    type: Google.Datastore.Admin.V1.Progress,
    json_name: "progressEntities"

  field :progress_bytes, 3, type: Google.Datastore.Admin.V1.Progress, json_name: "progressBytes"
  field :entity_filter, 4, type: Google.Datastore.Admin.V1.EntityFilter, json_name: "entityFilter"
  field :output_url_prefix, 5, type: :string, json_name: "outputUrlPrefix"
end

defmodule Google.Datastore.Admin.V1.ImportEntitiesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :common, 1, type: Google.Datastore.Admin.V1.CommonMetadata

  field :progress_entities, 2,
    type: Google.Datastore.Admin.V1.Progress,
    json_name: "progressEntities"

  field :progress_bytes, 3, type: Google.Datastore.Admin.V1.Progress, json_name: "progressBytes"
  field :entity_filter, 4, type: Google.Datastore.Admin.V1.EntityFilter, json_name: "entityFilter"
  field :input_url, 5, type: :string, json_name: "inputUrl"
end

defmodule Google.Datastore.Admin.V1.EntityFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kinds, 1, repeated: true, type: :string
  field :namespace_ids, 2, repeated: true, type: :string, json_name: "namespaceIds"
end

defmodule Google.Datastore.Admin.V1.CreateIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :index, 3, type: Google.Datastore.Admin.V1.Index
end

defmodule Google.Datastore.Admin.V1.DeleteIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :index_id, 3, type: :string, json_name: "indexId"
end

defmodule Google.Datastore.Admin.V1.GetIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :index_id, 3, type: :string, json_name: "indexId"
end

defmodule Google.Datastore.Admin.V1.ListIndexesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :filter, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Datastore.Admin.V1.ListIndexesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :indexes, 1, repeated: true, type: Google.Datastore.Admin.V1.Index
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Datastore.Admin.V1.IndexOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :common, 1, type: Google.Datastore.Admin.V1.CommonMetadata

  field :progress_entities, 2,
    type: Google.Datastore.Admin.V1.Progress,
    json_name: "progressEntities"

  field :index_id, 3, type: :string, json_name: "indexId"
end

defmodule Google.Datastore.Admin.V1.DatastoreFirestoreMigrationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :migration_state, 1,
    type: Google.Datastore.Admin.V1.MigrationState,
    json_name: "migrationState",
    enum: true

  field :migration_step, 2,
    type: Google.Datastore.Admin.V1.MigrationStep,
    json_name: "migrationStep",
    enum: true
end

defmodule Google.Datastore.Admin.V1.DatastoreAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.datastore.admin.v1.DatastoreAdmin",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ExportEntities,
      Google.Datastore.Admin.V1.ExportEntitiesRequest,
      Google.Longrunning.Operation

  rpc :ImportEntities,
      Google.Datastore.Admin.V1.ImportEntitiesRequest,
      Google.Longrunning.Operation

  rpc :CreateIndex, Google.Datastore.Admin.V1.CreateIndexRequest, Google.Longrunning.Operation

  rpc :DeleteIndex, Google.Datastore.Admin.V1.DeleteIndexRequest, Google.Longrunning.Operation

  rpc :GetIndex, Google.Datastore.Admin.V1.GetIndexRequest, Google.Datastore.Admin.V1.Index

  rpc :ListIndexes,
      Google.Datastore.Admin.V1.ListIndexesRequest,
      Google.Datastore.Admin.V1.ListIndexesResponse
end

defmodule Google.Datastore.Admin.V1.DatastoreAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Datastore.Admin.V1.DatastoreAdmin.Service
end
