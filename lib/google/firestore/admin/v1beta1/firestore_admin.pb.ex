defmodule Google.Firestore.Admin.V1beta1.OperationState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :INITIALIZING
          | :PROCESSING
          | :CANCELLING
          | :FINALIZING
          | :SUCCESSFUL
          | :FAILED
          | :CANCELLED

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :OPERATION_TYPE_UNSPECIFIED | :CREATING_INDEX

  field :OPERATION_TYPE_UNSPECIFIED, 0

  field :CREATING_INDEX, 1
end

defmodule Google.Firestore.Admin.V1beta1.IndexOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          index: String.t(),
          operation_type: Google.Firestore.Admin.V1beta1.IndexOperationMetadata.OperationType.t(),
          cancelled: boolean,
          document_progress: Google.Firestore.Admin.V1beta1.Progress.t() | nil
        }

  defstruct [:start_time, :end_time, :index, :operation_type, :cancelled, :document_progress]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :index, 3, type: :string

  field :operation_type, 4,
    type: Google.Firestore.Admin.V1beta1.IndexOperationMetadata.OperationType,
    enum: true

  field :cancelled, 5, type: :bool
  field :document_progress, 6, type: Google.Firestore.Admin.V1beta1.Progress
end

defmodule Google.Firestore.Admin.V1beta1.Progress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          work_completed: integer,
          work_estimated: integer
        }

  defstruct [:work_completed, :work_estimated]

  field :work_completed, 1, type: :int64
  field :work_estimated, 2, type: :int64
end

defmodule Google.Firestore.Admin.V1beta1.CreateIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          index: Google.Firestore.Admin.V1beta1.Index.t() | nil
        }

  defstruct [:parent, :index]

  field :parent, 1, type: :string
  field :index, 2, type: Google.Firestore.Admin.V1beta1.Index
end

defmodule Google.Firestore.Admin.V1beta1.GetIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.ListIndexesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.DeleteIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.ListIndexesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          indexes: [Google.Firestore.Admin.V1beta1.Index.t()],
          next_page_token: String.t()
        }

  defstruct [:indexes, :next_page_token]

  field :indexes, 1, repeated: true, type: Google.Firestore.Admin.V1beta1.Index
  field :next_page_token, 2, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.ExportDocumentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          collection_ids: [String.t()],
          output_uri_prefix: String.t()
        }

  defstruct [:name, :collection_ids, :output_uri_prefix]

  field :name, 1, type: :string
  field :collection_ids, 3, repeated: true, type: :string
  field :output_uri_prefix, 4, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.ImportDocumentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          collection_ids: [String.t()],
          input_uri_prefix: String.t()
        }

  defstruct [:name, :collection_ids, :input_uri_prefix]

  field :name, 1, type: :string
  field :collection_ids, 3, repeated: true, type: :string
  field :input_uri_prefix, 4, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.ExportDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri_prefix: String.t()
        }

  defstruct [:output_uri_prefix]

  field :output_uri_prefix, 1, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.ExportDocumentsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          operation_state: Google.Firestore.Admin.V1beta1.OperationState.t(),
          progress_documents: Google.Firestore.Admin.V1beta1.Progress.t() | nil,
          progress_bytes: Google.Firestore.Admin.V1beta1.Progress.t() | nil,
          collection_ids: [String.t()],
          output_uri_prefix: String.t()
        }

  defstruct [
    :start_time,
    :end_time,
    :operation_state,
    :progress_documents,
    :progress_bytes,
    :collection_ids,
    :output_uri_prefix
  ]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :operation_state, 3, type: Google.Firestore.Admin.V1beta1.OperationState, enum: true
  field :progress_documents, 4, type: Google.Firestore.Admin.V1beta1.Progress
  field :progress_bytes, 5, type: Google.Firestore.Admin.V1beta1.Progress
  field :collection_ids, 6, repeated: true, type: :string
  field :output_uri_prefix, 7, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.ImportDocumentsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          operation_state: Google.Firestore.Admin.V1beta1.OperationState.t(),
          progress_documents: Google.Firestore.Admin.V1beta1.Progress.t() | nil,
          progress_bytes: Google.Firestore.Admin.V1beta1.Progress.t() | nil,
          collection_ids: [String.t()],
          input_uri_prefix: String.t()
        }

  defstruct [
    :start_time,
    :end_time,
    :operation_state,
    :progress_documents,
    :progress_bytes,
    :collection_ids,
    :input_uri_prefix
  ]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :operation_state, 3, type: Google.Firestore.Admin.V1beta1.OperationState, enum: true
  field :progress_documents, 4, type: Google.Firestore.Admin.V1beta1.Progress
  field :progress_bytes, 5, type: Google.Firestore.Admin.V1beta1.Progress
  field :collection_ids, 6, repeated: true, type: :string
  field :input_uri_prefix, 7, type: :string
end

defmodule Google.Firestore.Admin.V1beta1.FirestoreAdmin.Service do
  @moduledoc false
  use GRPC.Service, name: "google.firestore.admin.v1beta1.FirestoreAdmin"

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
