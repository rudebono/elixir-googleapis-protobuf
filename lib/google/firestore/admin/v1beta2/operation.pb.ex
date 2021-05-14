defmodule Google.Firestore.Admin.V1beta2.OperationState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPERATION_STATE_UNSPECIFIED
          | :INITIALIZING
          | :PROCESSING
          | :CANCELLING
          | :FINALIZING
          | :SUCCESSFUL
          | :FAILED
          | :CANCELLED

  field :OPERATION_STATE_UNSPECIFIED, 0

  field :INITIALIZING, 1

  field :PROCESSING, 2

  field :CANCELLING, 3

  field :FINALIZING, 4

  field :SUCCESSFUL, 5

  field :FAILED, 6

  field :CANCELLED, 7
end

defmodule Google.Firestore.Admin.V1beta2.FieldOperationMetadata.IndexConfigDelta.ChangeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CHANGE_TYPE_UNSPECIFIED | :ADD | :REMOVE

  field :CHANGE_TYPE_UNSPECIFIED, 0

  field :ADD, 1

  field :REMOVE, 2
end

defmodule Google.Firestore.Admin.V1beta2.IndexOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          index: String.t(),
          state: Google.Firestore.Admin.V1beta2.OperationState.t(),
          progress_documents: Google.Firestore.Admin.V1beta2.Progress.t() | nil,
          progress_bytes: Google.Firestore.Admin.V1beta2.Progress.t() | nil
        }

  defstruct [:start_time, :end_time, :index, :state, :progress_documents, :progress_bytes]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :index, 3, type: :string
  field :state, 4, type: Google.Firestore.Admin.V1beta2.OperationState, enum: true
  field :progress_documents, 5, type: Google.Firestore.Admin.V1beta2.Progress
  field :progress_bytes, 6, type: Google.Firestore.Admin.V1beta2.Progress
end

defmodule Google.Firestore.Admin.V1beta2.FieldOperationMetadata.IndexConfigDelta do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          change_type:
            Google.Firestore.Admin.V1beta2.FieldOperationMetadata.IndexConfigDelta.ChangeType.t(),
          index: Google.Firestore.Admin.V1beta2.Index.t() | nil
        }

  defstruct [:change_type, :index]

  field :change_type, 1,
    type: Google.Firestore.Admin.V1beta2.FieldOperationMetadata.IndexConfigDelta.ChangeType,
    enum: true

  field :index, 2, type: Google.Firestore.Admin.V1beta2.Index
end

defmodule Google.Firestore.Admin.V1beta2.FieldOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          field: String.t(),
          index_config_deltas: [
            Google.Firestore.Admin.V1beta2.FieldOperationMetadata.IndexConfigDelta.t()
          ],
          state: Google.Firestore.Admin.V1beta2.OperationState.t(),
          document_progress: Google.Firestore.Admin.V1beta2.Progress.t() | nil,
          bytes_progress: Google.Firestore.Admin.V1beta2.Progress.t() | nil
        }

  defstruct [
    :start_time,
    :end_time,
    :field,
    :index_config_deltas,
    :state,
    :document_progress,
    :bytes_progress
  ]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :field, 3, type: :string

  field :index_config_deltas, 4,
    repeated: true,
    type: Google.Firestore.Admin.V1beta2.FieldOperationMetadata.IndexConfigDelta

  field :state, 5, type: Google.Firestore.Admin.V1beta2.OperationState, enum: true
  field :document_progress, 6, type: Google.Firestore.Admin.V1beta2.Progress
  field :bytes_progress, 7, type: Google.Firestore.Admin.V1beta2.Progress
end

defmodule Google.Firestore.Admin.V1beta2.ExportDocumentsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          operation_state: Google.Firestore.Admin.V1beta2.OperationState.t(),
          progress_documents: Google.Firestore.Admin.V1beta2.Progress.t() | nil,
          progress_bytes: Google.Firestore.Admin.V1beta2.Progress.t() | nil,
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
  field :operation_state, 3, type: Google.Firestore.Admin.V1beta2.OperationState, enum: true
  field :progress_documents, 4, type: Google.Firestore.Admin.V1beta2.Progress
  field :progress_bytes, 5, type: Google.Firestore.Admin.V1beta2.Progress
  field :collection_ids, 6, repeated: true, type: :string
  field :output_uri_prefix, 7, type: :string
end

defmodule Google.Firestore.Admin.V1beta2.ImportDocumentsMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          operation_state: Google.Firestore.Admin.V1beta2.OperationState.t(),
          progress_documents: Google.Firestore.Admin.V1beta2.Progress.t() | nil,
          progress_bytes: Google.Firestore.Admin.V1beta2.Progress.t() | nil,
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
  field :operation_state, 3, type: Google.Firestore.Admin.V1beta2.OperationState, enum: true
  field :progress_documents, 4, type: Google.Firestore.Admin.V1beta2.Progress
  field :progress_bytes, 5, type: Google.Firestore.Admin.V1beta2.Progress
  field :collection_ids, 6, repeated: true, type: :string
  field :input_uri_prefix, 7, type: :string
end

defmodule Google.Firestore.Admin.V1beta2.ExportDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri_prefix: String.t()
        }

  defstruct [:output_uri_prefix]

  field :output_uri_prefix, 1, type: :string
end

defmodule Google.Firestore.Admin.V1beta2.Progress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          estimated_work: integer,
          completed_work: integer
        }

  defstruct [:estimated_work, :completed_work]

  field :estimated_work, 1, type: :int64
  field :completed_work, 2, type: :int64
end
