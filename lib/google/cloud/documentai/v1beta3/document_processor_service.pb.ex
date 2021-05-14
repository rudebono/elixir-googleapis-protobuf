defmodule Google.Cloud.Documentai.V1beta3.HumanReviewStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :SKIPPED | :VALIDATION_PASSED | :IN_PROGRESS | :ERROR

  field :STATE_UNSPECIFIED, 0

  field :SKIPPED, 1

  field :VALIDATION_PASSED, 2

  field :IN_PROGRESS, 3

  field :ERROR, 4
end

defmodule Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :WAITING
          | :RUNNING
          | :SUCCEEDED
          | :CANCELLING
          | :CANCELLED
          | :FAILED

  field :STATE_UNSPECIFIED, 0

  field :WAITING, 1

  field :RUNNING, 2

  field :SUCCEEDED, 3

  field :CANCELLING, 4

  field :CANCELLED, 5

  field :FAILED, 6
end

defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :CANCELLING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :CANCELLING, 2

  field :SUCCEEDED, 3

  field :FAILED, 4

  field :CANCELLED, 5
end

defmodule Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :RUNNING
          | :CANCELLING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :CANCELLING, 2

  field :SUCCEEDED, 3

  field :FAILED, 4

  field :CANCELLED, 5
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          name: String.t(),
          document: Google.Cloud.Documentai.V1beta3.Document.t() | nil,
          skip_human_review: boolean
        }

  defstruct [:source, :name, :document, :skip_human_review]

  oneof :source, 0
  field :inline_document, 4, type: Google.Cloud.Documentai.V1beta3.Document, oneof: 0
  field :raw_document, 5, type: Google.Cloud.Documentai.V1beta3.RawDocument, oneof: 0
  field :name, 1, type: :string
  field :document, 2, type: Google.Cloud.Documentai.V1beta3.Document, deprecated: true
  field :skip_human_review, 3, type: :bool
end

defmodule Google.Cloud.Documentai.V1beta3.HumanReviewStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Documentai.V1beta3.HumanReviewStatus.State.t(),
          state_message: String.t(),
          human_review_operation: String.t()
        }

  defstruct [:state, :state_message, :human_review_operation]

  field :state, 1, type: Google.Cloud.Documentai.V1beta3.HumanReviewStatus.State, enum: true
  field :state_message, 2, type: :string
  field :human_review_operation, 3, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.ProcessResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          document: Google.Cloud.Documentai.V1beta3.Document.t() | nil,
          human_review_operation: String.t(),
          human_review_status: Google.Cloud.Documentai.V1beta3.HumanReviewStatus.t() | nil
        }

  defstruct [:document, :human_review_operation, :human_review_status]

  field :document, 1, type: Google.Cloud.Documentai.V1beta3.Document
  field :human_review_operation, 2, type: :string, deprecated: true
  field :human_review_status, 3, type: Google.Cloud.Documentai.V1beta3.HumanReviewStatus
end

defmodule Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchInputConfig do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_source: String.t(),
          mime_type: String.t()
        }

  defstruct [:gcs_source, :mime_type]

  field :gcs_source, 1, type: :string
  field :mime_type, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchOutputConfig do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_destination: String.t()
        }

  defstruct [:gcs_destination]

  field :gcs_destination, 1, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.BatchProcessRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          input_configs: [
            Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchInputConfig.t()
          ],
          output_config:
            Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchOutputConfig.t() | nil,
          input_documents: Google.Cloud.Documentai.V1beta3.BatchDocumentsInputConfig.t() | nil,
          document_output_config: Google.Cloud.Documentai.V1beta3.DocumentOutputConfig.t() | nil,
          skip_human_review: boolean
        }

  defstruct [
    :name,
    :input_configs,
    :output_config,
    :input_documents,
    :document_output_config,
    :skip_human_review
  ]

  field :name, 1, type: :string

  field :input_configs, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchInputConfig,
    deprecated: true

  field :output_config, 3,
    type: Google.Cloud.Documentai.V1beta3.BatchProcessRequest.BatchOutputConfig,
    deprecated: true

  field :input_documents, 5, type: Google.Cloud.Documentai.V1beta3.BatchDocumentsInputConfig
  field :document_output_config, 6, type: Google.Cloud.Documentai.V1beta3.DocumentOutputConfig
  field :skip_human_review, 4, type: :bool
end

defmodule Google.Cloud.Documentai.V1beta3.BatchProcessResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.IndividualProcessStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_gcs_source: String.t(),
          status: Google.Rpc.Status.t() | nil,
          output_gcs_destination: String.t(),
          human_review_operation: String.t(),
          human_review_status: Google.Cloud.Documentai.V1beta3.HumanReviewStatus.t() | nil
        }

  defstruct [
    :input_gcs_source,
    :status,
    :output_gcs_destination,
    :human_review_operation,
    :human_review_status
  ]

  field :input_gcs_source, 1, type: :string
  field :status, 2, type: Google.Rpc.Status
  field :output_gcs_destination, 3, type: :string
  field :human_review_operation, 4, type: :string, deprecated: true
  field :human_review_status, 5, type: Google.Cloud.Documentai.V1beta3.HumanReviewStatus
end

defmodule Google.Cloud.Documentai.V1beta3.BatchProcessMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.State.t(),
          state_message: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          individual_process_statuses: [
            Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.IndividualProcessStatus.t()
          ]
        }

  defstruct [:state, :state_message, :create_time, :update_time, :individual_process_statuses]

  field :state, 1, type: Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.State, enum: true
  field :state_message, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp

  field :individual_process_statuses, 5,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta3.BatchProcessMetadata.IndividualProcessStatus
end

defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          human_review_config: String.t(),
          document: Google.Cloud.Documentai.V1beta3.Document.t() | nil
        }

  defstruct [:source, :human_review_config, :document]

  oneof :source, 0
  field :inline_document, 4, type: Google.Cloud.Documentai.V1beta3.Document, oneof: 0
  field :human_review_config, 1, type: :string
  field :document, 2, type: Google.Cloud.Documentai.V1beta3.Document, deprecated: true
end

defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_destination: String.t()
        }

  defstruct [:gcs_destination]

  field :gcs_destination, 1, type: :string
end

defmodule Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata.State.t(),
          state_message: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          common_metadata: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.t() | nil
        }

  defstruct [:state, :state_message, :create_time, :update_time, :common_metadata]

  field :state, 1,
    type: Google.Cloud.Documentai.V1beta3.ReviewDocumentOperationMetadata.State,
    enum: true

  field :state_message, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :common_metadata, 5, type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata
end

defmodule Google.Cloud.Documentai.V1beta3.CommonOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.State.t(),
          state_message: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:state, :state_message, :create_time, :update_time]

  field :state, 1, type: Google.Cloud.Documentai.V1beta3.CommonOperationMetadata.State, enum: true
  field :state_message, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
end
