defmodule Google.Firestore.Admin.V1beta1.OperationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INITIALIZING, 1
  field :PROCESSING, 2
  field :CANCELLING, 3
  field :FINALIZING, 4
  field :SUCCESSFUL, 5
  field :FAILED, 6
  field :CANCELLED, 7
end

defmodule Google.Firestore.Admin.V1beta1.IndexOperationMetadata.OperationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :CREATING_INDEX, 1
end

defmodule Google.Firestore.Admin.V1beta1.IndexOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :index, 3, type: :string

  field :operation_type, 4,
    type: Google.Firestore.Admin.V1beta1.IndexOperationMetadata.OperationType,
    json_name: "operationType",
    enum: true

  field :cancelled, 5, type: :bool

  field :document_progress, 6,
    type: Google.Firestore.Admin.V1beta1.Progress,
    json_name: "documentProgress"
end

defmodule Google.Firestore.Admin.V1beta1.Progress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :work_completed, 1, type: :int64, json_name: "workCompleted"
  field :work_estimated, 2, type: :int64, json_name: "workEstimated"
end

defmodule Google.Firestore.Admin.V1beta1.CreateIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :index, 2, type: Google.Firestore.Admin.V1beta1.Index
end

defmodule Google.Firestore.Admin.V1beta1.GetIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.ListIndexesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Firestore.Admin.V1beta1.DeleteIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.ListIndexesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :indexes, 1, repeated: true, type: Google.Firestore.Admin.V1beta1.Index
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Firestore.Admin.V1beta1.ExportDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :collection_ids, 3, repeated: true, type: :string, json_name: "collectionIds"
  field :output_uri_prefix, 4, type: :string, json_name: "outputUriPrefix"
end

defmodule Google.Firestore.Admin.V1beta1.ImportDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :collection_ids, 3, repeated: true, type: :string, json_name: "collectionIds"
  field :input_uri_prefix, 4, type: :string, json_name: "inputUriPrefix"
end

defmodule Google.Firestore.Admin.V1beta1.ExportDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix"
end

defmodule Google.Firestore.Admin.V1beta1.ExportDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :operation_state, 3,
    type: Google.Firestore.Admin.V1beta1.OperationState,
    json_name: "operationState",
    enum: true

  field :progress_documents, 4,
    type: Google.Firestore.Admin.V1beta1.Progress,
    json_name: "progressDocuments"

  field :progress_bytes, 5,
    type: Google.Firestore.Admin.V1beta1.Progress,
    json_name: "progressBytes"

  field :collection_ids, 6, repeated: true, type: :string, json_name: "collectionIds"
  field :output_uri_prefix, 7, type: :string, json_name: "outputUriPrefix"
end

defmodule Google.Firestore.Admin.V1beta1.ImportDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :operation_state, 3,
    type: Google.Firestore.Admin.V1beta1.OperationState,
    json_name: "operationState",
    enum: true

  field :progress_documents, 4,
    type: Google.Firestore.Admin.V1beta1.Progress,
    json_name: "progressDocuments"

  field :progress_bytes, 5,
    type: Google.Firestore.Admin.V1beta1.Progress,
    json_name: "progressBytes"

  field :collection_ids, 6, repeated: true, type: :string, json_name: "collectionIds"
  field :input_uri_prefix, 7, type: :string, json_name: "inputUriPrefix"
end

defmodule Google.Firestore.Admin.V1beta1.FirestoreAdmin.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.firestore.admin.v1beta1.FirestoreAdmin",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateIndex,
      Google.Firestore.Admin.V1beta1.CreateIndexRequest,
      Google.Longrunning.Operation

  rpc :ListIndexes,
      Google.Firestore.Admin.V1beta1.ListIndexesRequest,
      Google.Firestore.Admin.V1beta1.ListIndexesResponse

  rpc :GetIndex,
      Google.Firestore.Admin.V1beta1.GetIndexRequest,
      Google.Firestore.Admin.V1beta1.Index

  rpc :DeleteIndex, Google.Firestore.Admin.V1beta1.DeleteIndexRequest, Google.Protobuf.Empty

  rpc :ExportDocuments,
      Google.Firestore.Admin.V1beta1.ExportDocumentsRequest,
      Google.Longrunning.Operation

  rpc :ImportDocuments,
      Google.Firestore.Admin.V1beta1.ImportDocumentsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Firestore.Admin.V1beta1.FirestoreAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Firestore.Admin.V1beta1.FirestoreAdmin.Service
end