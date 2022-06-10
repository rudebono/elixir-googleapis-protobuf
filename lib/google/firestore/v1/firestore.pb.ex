defmodule Google.Firestore.V1.TargetChange.TargetChangeType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :NO_CHANGE, 0
  field :ADD, 1
  field :REMOVE, 2
  field :CURRENT, 3
  field :RESET, 4
end
defmodule Google.Firestore.V1.GetDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :consistency_selector, 0

  field :name, 1, type: :string, deprecated: false
  field :mask, 2, type: Google.Firestore.V1.DocumentMask
  field :transaction, 3, type: :bytes, oneof: 0
  field :read_time, 5, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 0
end
defmodule Google.Firestore.V1.ListDocumentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :consistency_selector, 0

  field :parent, 1, type: :string, deprecated: false
  field :collection_id, 2, type: :string, json_name: "collectionId", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 6, type: :string, json_name: "orderBy"
  field :mask, 7, type: Google.Firestore.V1.DocumentMask
  field :transaction, 8, type: :bytes, oneof: 0
  field :read_time, 10, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 0
  field :show_missing, 12, type: :bool, json_name: "showMissing"
end
defmodule Google.Firestore.V1.ListDocumentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Firestore.V1.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Firestore.V1.CreateDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :collection_id, 2, type: :string, json_name: "collectionId", deprecated: false
  field :document_id, 3, type: :string, json_name: "documentId"
  field :document, 4, type: Google.Firestore.V1.Document, deprecated: false
  field :mask, 5, type: Google.Firestore.V1.DocumentMask
end
defmodule Google.Firestore.V1.UpdateDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :document, 1, type: Google.Firestore.V1.Document, deprecated: false
  field :update_mask, 2, type: Google.Firestore.V1.DocumentMask, json_name: "updateMask"
  field :mask, 3, type: Google.Firestore.V1.DocumentMask
  field :current_document, 4, type: Google.Firestore.V1.Precondition, json_name: "currentDocument"
end
defmodule Google.Firestore.V1.DeleteDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :current_document, 2, type: Google.Firestore.V1.Precondition, json_name: "currentDocument"
end
defmodule Google.Firestore.V1.BatchGetDocumentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :consistency_selector, 0

  field :database, 1, type: :string, deprecated: false
  field :documents, 2, repeated: true, type: :string
  field :mask, 3, type: Google.Firestore.V1.DocumentMask
  field :transaction, 4, type: :bytes, oneof: 0

  field :new_transaction, 5,
    type: Google.Firestore.V1.TransactionOptions,
    json_name: "newTransaction",
    oneof: 0

  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 0
end
defmodule Google.Firestore.V1.BatchGetDocumentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :result, 0

  field :found, 1, type: Google.Firestore.V1.Document, oneof: 0
  field :missing, 2, type: :string, oneof: 0
  field :transaction, 3, type: :bytes
  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime"
end
defmodule Google.Firestore.V1.BeginTransactionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :options, 2, type: Google.Firestore.V1.TransactionOptions
end
defmodule Google.Firestore.V1.BeginTransactionResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :transaction, 1, type: :bytes
end
defmodule Google.Firestore.V1.CommitRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :writes, 2, repeated: true, type: Google.Firestore.V1.Write
  field :transaction, 3, type: :bytes
end
defmodule Google.Firestore.V1.CommitResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :write_results, 1,
    repeated: true,
    type: Google.Firestore.V1.WriteResult,
    json_name: "writeResults"

  field :commit_time, 2, type: Google.Protobuf.Timestamp, json_name: "commitTime"
end
defmodule Google.Firestore.V1.RollbackRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :transaction, 2, type: :bytes, deprecated: false
end
defmodule Google.Firestore.V1.RunQueryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :query_type, 0
  oneof :consistency_selector, 1

  field :parent, 1, type: :string, deprecated: false

  field :structured_query, 2,
    type: Google.Firestore.V1.StructuredQuery,
    json_name: "structuredQuery",
    oneof: 0

  field :transaction, 5, type: :bytes, oneof: 1

  field :new_transaction, 6,
    type: Google.Firestore.V1.TransactionOptions,
    json_name: "newTransaction",
    oneof: 1

  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 1
end
defmodule Google.Firestore.V1.RunQueryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :continuation_selector, 0

  field :transaction, 2, type: :bytes
  field :document, 1, type: Google.Firestore.V1.Document
  field :read_time, 3, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :skipped_results, 4, type: :int32, json_name: "skippedResults"
  field :done, 6, type: :bool, oneof: 0
end
defmodule Google.Firestore.V1.PartitionQueryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :query_type, 0
  oneof :consistency_selector, 1

  field :parent, 1, type: :string, deprecated: false

  field :structured_query, 2,
    type: Google.Firestore.V1.StructuredQuery,
    json_name: "structuredQuery",
    oneof: 0

  field :partition_count, 3, type: :int64, json_name: "partitionCount"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :read_time, 6, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 1
end
defmodule Google.Firestore.V1.PartitionQueryResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partitions, 1, repeated: true, type: Google.Firestore.V1.Cursor
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Firestore.V1.WriteRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Firestore.V1.WriteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :stream_id, 2, type: :string, json_name: "streamId"
  field :writes, 3, repeated: true, type: Google.Firestore.V1.Write
  field :stream_token, 4, type: :bytes, json_name: "streamToken"
  field :labels, 5, repeated: true, type: Google.Firestore.V1.WriteRequest.LabelsEntry, map: true
end
defmodule Google.Firestore.V1.WriteResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :stream_id, 1, type: :string, json_name: "streamId"
  field :stream_token, 2, type: :bytes, json_name: "streamToken"

  field :write_results, 3,
    repeated: true,
    type: Google.Firestore.V1.WriteResult,
    json_name: "writeResults"

  field :commit_time, 4, type: Google.Protobuf.Timestamp, json_name: "commitTime"
end
defmodule Google.Firestore.V1.ListenRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Firestore.V1.ListenRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :target_change, 0

  field :database, 1, type: :string, deprecated: false
  field :add_target, 2, type: Google.Firestore.V1.Target, json_name: "addTarget", oneof: 0
  field :remove_target, 3, type: :int32, json_name: "removeTarget", oneof: 0
  field :labels, 4, repeated: true, type: Google.Firestore.V1.ListenRequest.LabelsEntry, map: true
end
defmodule Google.Firestore.V1.ListenResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :response_type, 0

  field :target_change, 2,
    type: Google.Firestore.V1.TargetChange,
    json_name: "targetChange",
    oneof: 0

  field :document_change, 3,
    type: Google.Firestore.V1.DocumentChange,
    json_name: "documentChange",
    oneof: 0

  field :document_delete, 4,
    type: Google.Firestore.V1.DocumentDelete,
    json_name: "documentDelete",
    oneof: 0

  field :document_remove, 6,
    type: Google.Firestore.V1.DocumentRemove,
    json_name: "documentRemove",
    oneof: 0

  field :filter, 5, type: Google.Firestore.V1.ExistenceFilter, oneof: 0
end
defmodule Google.Firestore.V1.Target.DocumentsTarget do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :documents, 2, repeated: true, type: :string
end
defmodule Google.Firestore.V1.Target.QueryTarget do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :query_type, 0

  field :parent, 1, type: :string

  field :structured_query, 2,
    type: Google.Firestore.V1.StructuredQuery,
    json_name: "structuredQuery",
    oneof: 0
end
defmodule Google.Firestore.V1.Target do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :target_type, 0
  oneof :resume_type, 1

  field :query, 2, type: Google.Firestore.V1.Target.QueryTarget, oneof: 0
  field :documents, 3, type: Google.Firestore.V1.Target.DocumentsTarget, oneof: 0
  field :resume_token, 4, type: :bytes, json_name: "resumeToken", oneof: 1
  field :read_time, 11, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 1
  field :target_id, 5, type: :int32, json_name: "targetId"
  field :once, 6, type: :bool
end
defmodule Google.Firestore.V1.TargetChange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :target_change_type, 1,
    type: Google.Firestore.V1.TargetChange.TargetChangeType,
    json_name: "targetChangeType",
    enum: true

  field :target_ids, 2, repeated: true, type: :int32, json_name: "targetIds"
  field :cause, 3, type: Google.Rpc.Status
  field :resume_token, 4, type: :bytes, json_name: "resumeToken"
  field :read_time, 6, type: Google.Protobuf.Timestamp, json_name: "readTime"
end
defmodule Google.Firestore.V1.ListCollectionIdsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :consistency_selector, 0

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime", oneof: 0
end
defmodule Google.Firestore.V1.ListCollectionIdsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :collection_ids, 1, repeated: true, type: :string, json_name: "collectionIds"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Firestore.V1.BatchWriteRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Firestore.V1.BatchWriteRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :database, 1, type: :string, deprecated: false
  field :writes, 2, repeated: true, type: Google.Firestore.V1.Write

  field :labels, 3,
    repeated: true,
    type: Google.Firestore.V1.BatchWriteRequest.LabelsEntry,
    map: true
end
defmodule Google.Firestore.V1.BatchWriteResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :write_results, 1,
    repeated: true,
    type: Google.Firestore.V1.WriteResult,
    json_name: "writeResults"

  field :status, 2, repeated: true, type: Google.Rpc.Status
end
defmodule Google.Firestore.V1.Firestore.Service do
  @moduledoc false
  use GRPC.Service, name: "google.firestore.v1.Firestore", protoc_gen_elixir_version: "0.10.0"

  rpc :GetDocument, Google.Firestore.V1.GetDocumentRequest, Google.Firestore.V1.Document

  rpc :ListDocuments,
      Google.Firestore.V1.ListDocumentsRequest,
      Google.Firestore.V1.ListDocumentsResponse

  rpc :UpdateDocument, Google.Firestore.V1.UpdateDocumentRequest, Google.Firestore.V1.Document

  rpc :DeleteDocument, Google.Firestore.V1.DeleteDocumentRequest, Google.Protobuf.Empty

  rpc :BatchGetDocuments,
      Google.Firestore.V1.BatchGetDocumentsRequest,
      stream(Google.Firestore.V1.BatchGetDocumentsResponse)

  rpc :BeginTransaction,
      Google.Firestore.V1.BeginTransactionRequest,
      Google.Firestore.V1.BeginTransactionResponse

  rpc :Commit, Google.Firestore.V1.CommitRequest, Google.Firestore.V1.CommitResponse

  rpc :Rollback, Google.Firestore.V1.RollbackRequest, Google.Protobuf.Empty

  rpc :RunQuery, Google.Firestore.V1.RunQueryRequest, stream(Google.Firestore.V1.RunQueryResponse)

  rpc :PartitionQuery,
      Google.Firestore.V1.PartitionQueryRequest,
      Google.Firestore.V1.PartitionQueryResponse

  rpc :Write, stream(Google.Firestore.V1.WriteRequest), stream(Google.Firestore.V1.WriteResponse)

  rpc :Listen,
      stream(Google.Firestore.V1.ListenRequest),
      stream(Google.Firestore.V1.ListenResponse)

  rpc :ListCollectionIds,
      Google.Firestore.V1.ListCollectionIdsRequest,
      Google.Firestore.V1.ListCollectionIdsResponse

  rpc :BatchWrite, Google.Firestore.V1.BatchWriteRequest, Google.Firestore.V1.BatchWriteResponse

  rpc :CreateDocument, Google.Firestore.V1.CreateDocumentRequest, Google.Firestore.V1.Document
end

defmodule Google.Firestore.V1.Firestore.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Firestore.V1.Firestore.Service
end
