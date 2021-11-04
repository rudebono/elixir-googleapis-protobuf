defmodule Google.Cloud.Dialogflow.V2.Document.KnowledgeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :KNOWLEDGE_TYPE_UNSPECIFIED | :FAQ | :EXTRACTIVE_QA | :ARTICLE_SUGGESTION

  field :KNOWLEDGE_TYPE_UNSPECIFIED, 0
  field :FAQ, 1
  field :EXTRACTIVE_QA, 2
  field :ARTICLE_SUGGESTION, 3
end

defmodule Google.Cloud.Dialogflow.V2.KnowledgeOperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :PENDING | :RUNNING | :DONE

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end

defmodule Google.Cloud.Dialogflow.V2.Document.ReloadStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:time, :status]

  field :time, 1, type: Google.Protobuf.Timestamp
  field :status, 2, type: Google.Rpc.Status

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.Document.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.Document do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:content_uri, String.t()} | {:raw_content, binary},
          name: String.t(),
          display_name: String.t(),
          mime_type: String.t(),
          knowledge_types: [Google.Cloud.Dialogflow.V2.Document.KnowledgeType.t()],
          enable_auto_reload: boolean,
          latest_reload_status: Google.Cloud.Dialogflow.V2.Document.ReloadStatus.t() | nil,
          metadata: %{String.t() => String.t()}
        }

  defstruct [
    :source,
    :name,
    :display_name,
    :mime_type,
    :knowledge_types,
    :enable_auto_reload,
    :latest_reload_status,
    :metadata
  ]

  oneof :source, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :mime_type, 3, type: :string, json_name: "mimeType"

  field :knowledge_types, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Document.KnowledgeType,
    enum: true,
    json_name: "knowledgeTypes"

  field :content_uri, 5, type: :string, json_name: "contentUri", oneof: 0
  field :raw_content, 9, type: :bytes, json_name: "rawContent", oneof: 0
  field :enable_auto_reload, 11, type: :bool, json_name: "enableAutoReload"

  field :latest_reload_status, 12,
    type: Google.Cloud.Dialogflow.V2.Document.ReloadStatus,
    json_name: "latestReloadStatus"

  field :metadata, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Document.MetadataEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.GetDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.ListDocumentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.ListDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents: [Google.Cloud.Dialogflow.V2.Document.t()],
          next_page_token: String.t()
        }

  defstruct [:documents, :next_page_token]

  field :documents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.CreateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          document: Google.Cloud.Dialogflow.V2.Document.t() | nil
        }

  defstruct [:parent, :document]

  field :parent, 1, type: :string
  field :document, 2, type: Google.Cloud.Dialogflow.V2.Document

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.DeleteDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.UpdateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          document: Google.Cloud.Dialogflow.V2.Document.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:document, :update_mask]

  field :document, 1, type: Google.Cloud.Dialogflow.V2.Document
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.ReloadDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:content_uri, String.t()},
          name: String.t()
        }

  defstruct [:source, :name]

  oneof :source, 0

  field :name, 1, type: :string
  field :content_uri, 3, type: :string, json_name: "contentUri", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.KnowledgeOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dialogflow.V2.KnowledgeOperationMetadata.State.t()
        }

  defstruct [:state]

  field :state, 1, type: Google.Cloud.Dialogflow.V2.KnowledgeOperationMetadata.State, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dialogflow.V2.Documents.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2.Documents"

  rpc :ListDocuments,
      Google.Cloud.Dialogflow.V2.ListDocumentsRequest,
      Google.Cloud.Dialogflow.V2.ListDocumentsResponse

  rpc :GetDocument,
      Google.Cloud.Dialogflow.V2.GetDocumentRequest,
      Google.Cloud.Dialogflow.V2.Document

  rpc :CreateDocument,
      Google.Cloud.Dialogflow.V2.CreateDocumentRequest,
      Google.Longrunning.Operation

  rpc :DeleteDocument,
      Google.Cloud.Dialogflow.V2.DeleteDocumentRequest,
      Google.Longrunning.Operation

  rpc :UpdateDocument,
      Google.Cloud.Dialogflow.V2.UpdateDocumentRequest,
      Google.Longrunning.Operation

  rpc :ReloadDocument,
      Google.Cloud.Dialogflow.V2.ReloadDocumentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2.Documents.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Documents.Service
end
