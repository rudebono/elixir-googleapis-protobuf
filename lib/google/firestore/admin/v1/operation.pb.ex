defmodule Google.Firestore.Admin.V1.OperationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATION_STATE_UNSPECIFIED, 0
  field :INITIALIZING, 1
  field :PROCESSING, 2
  field :CANCELLING, 3
  field :FINALIZING, 4
  field :SUCCESSFUL, 5
  field :FAILED, 6
  field :CANCELLED, 7
end

defmodule Google.Firestore.Admin.V1.FieldOperationMetadata.IndexConfigDelta.ChangeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CHANGE_TYPE_UNSPECIFIED, 0
  field :ADD, 1
  field :REMOVE, 2
end

defmodule Google.Firestore.Admin.V1.FieldOperationMetadata.TtlConfigDelta.ChangeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CHANGE_TYPE_UNSPECIFIED, 0
  field :ADD, 1
  field :REMOVE, 2
end

defmodule Google.Firestore.Admin.V1.IndexOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :index, 3, type: :string
  field :state, 4, type: Google.Firestore.Admin.V1.OperationState, enum: true

  field :progress_documents, 5,
    type: Google.Firestore.Admin.V1.Progress,
    json_name: "progressDocuments"

  field :progress_bytes, 6, type: Google.Firestore.Admin.V1.Progress, json_name: "progressBytes"
end

defmodule Google.Firestore.Admin.V1.FieldOperationMetadata.IndexConfigDelta do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :change_type, 1,
    type: Google.Firestore.Admin.V1.FieldOperationMetadata.IndexConfigDelta.ChangeType,
    json_name: "changeType",
    enum: true

  field :index, 2, type: Google.Firestore.Admin.V1.Index
end

defmodule Google.Firestore.Admin.V1.FieldOperationMetadata.TtlConfigDelta do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :change_type, 1,
    type: Google.Firestore.Admin.V1.FieldOperationMetadata.TtlConfigDelta.ChangeType,
    json_name: "changeType",
    enum: true
end

defmodule Google.Firestore.Admin.V1.FieldOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :field, 3, type: :string

  field :index_config_deltas, 4,
    repeated: true,
    type: Google.Firestore.Admin.V1.FieldOperationMetadata.IndexConfigDelta,
    json_name: "indexConfigDeltas"

  field :state, 5, type: Google.Firestore.Admin.V1.OperationState, enum: true

  field :progress_documents, 6,
    type: Google.Firestore.Admin.V1.Progress,
    json_name: "progressDocuments"

  field :progress_bytes, 7, type: Google.Firestore.Admin.V1.Progress, json_name: "progressBytes"

  field :ttl_config_delta, 8,
    type: Google.Firestore.Admin.V1.FieldOperationMetadata.TtlConfigDelta,
    json_name: "ttlConfigDelta"
end

defmodule Google.Firestore.Admin.V1.ExportDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :operation_state, 3,
    type: Google.Firestore.Admin.V1.OperationState,
    json_name: "operationState",
    enum: true

  field :progress_documents, 4,
    type: Google.Firestore.Admin.V1.Progress,
    json_name: "progressDocuments"

  field :progress_bytes, 5, type: Google.Firestore.Admin.V1.Progress, json_name: "progressBytes"
  field :collection_ids, 6, repeated: true, type: :string, json_name: "collectionIds"
  field :output_uri_prefix, 7, type: :string, json_name: "outputUriPrefix"
  field :namespace_ids, 8, repeated: true, type: :string, json_name: "namespaceIds"
  field :snapshot_time, 9, type: Google.Protobuf.Timestamp, json_name: "snapshotTime"
end

defmodule Google.Firestore.Admin.V1.ImportDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :operation_state, 3,
    type: Google.Firestore.Admin.V1.OperationState,
    json_name: "operationState",
    enum: true

  field :progress_documents, 4,
    type: Google.Firestore.Admin.V1.Progress,
    json_name: "progressDocuments"

  field :progress_bytes, 5, type: Google.Firestore.Admin.V1.Progress, json_name: "progressBytes"
  field :collection_ids, 6, repeated: true, type: :string, json_name: "collectionIds"
  field :input_uri_prefix, 7, type: :string, json_name: "inputUriPrefix"
  field :namespace_ids, 8, repeated: true, type: :string, json_name: "namespaceIds"
end

defmodule Google.Firestore.Admin.V1.BulkDeleteDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :operation_state, 3,
    type: Google.Firestore.Admin.V1.OperationState,
    json_name: "operationState",
    enum: true

  field :progress_documents, 4,
    type: Google.Firestore.Admin.V1.Progress,
    json_name: "progressDocuments"

  field :progress_bytes, 5, type: Google.Firestore.Admin.V1.Progress, json_name: "progressBytes"
  field :collection_ids, 6, repeated: true, type: :string, json_name: "collectionIds"
  field :namespace_ids, 7, repeated: true, type: :string, json_name: "namespaceIds"
  field :snapshot_time, 8, type: Google.Protobuf.Timestamp, json_name: "snapshotTime"
end

defmodule Google.Firestore.Admin.V1.ExportDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix"
end

defmodule Google.Firestore.Admin.V1.RestoreDatabaseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :operation_state, 3,
    type: Google.Firestore.Admin.V1.OperationState,
    json_name: "operationState",
    enum: true

  field :database, 4, type: :string, deprecated: false
  field :backup, 5, type: :string, deprecated: false

  field :progress_percentage, 8,
    type: Google.Firestore.Admin.V1.Progress,
    json_name: "progressPercentage"
end

defmodule Google.Firestore.Admin.V1.CloneDatabaseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :operation_state, 3,
    type: Google.Firestore.Admin.V1.OperationState,
    json_name: "operationState",
    enum: true

  field :database, 4, type: :string, deprecated: false
  field :pitr_snapshot, 7, type: Google.Firestore.Admin.V1.PitrSnapshot, json_name: "pitrSnapshot"

  field :progress_percentage, 6,
    type: Google.Firestore.Admin.V1.Progress,
    json_name: "progressPercentage"
end

defmodule Google.Firestore.Admin.V1.Progress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :estimated_work, 1, type: :int64, json_name: "estimatedWork"
  field :completed_work, 2, type: :int64, json_name: "completedWork"
end
