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

  defstruct time: nil,
            status: nil

  field :time, 1, type: Google.Protobuf.Timestamp
  field :status, 2, type: Google.Rpc.Status
end
defmodule Google.Cloud.Dialogflow.V2.Document.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
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

  defstruct source: nil,
            name: "",
            display_name: "",
            mime_type: "",
            knowledge_types: [],
            enable_auto_reload: false,
            latest_reload_status: nil,
            metadata: %{}

  oneof :source, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false

  field :knowledge_types, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Document.KnowledgeType,
    json_name: "knowledgeTypes",
    enum: true,
    deprecated: false

  field :content_uri, 5, type: :string, json_name: "contentUri", oneof: 0
  field :raw_content, 9, type: :bytes, json_name: "rawContent", oneof: 0
  field :enable_auto_reload, 11, type: :bool, json_name: "enableAutoReload", deprecated: false

  field :latest_reload_status, 12,
    type: Google.Cloud.Dialogflow.V2.Document.ReloadStatus,
    json_name: "latestReloadStatus",
    deprecated: false

  field :metadata, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Document.MetadataEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.GetDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListDocumentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end
defmodule Google.Cloud.Dialogflow.V2.ListDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents: [Google.Cloud.Dialogflow.V2.Document.t()],
          next_page_token: String.t()
        }

  defstruct documents: [],
            next_page_token: ""

  field :documents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2.CreateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          document: Google.Cloud.Dialogflow.V2.Document.t() | nil
        }

  defstruct parent: "",
            document: nil

  field :parent, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Dialogflow.V2.Document, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ImportDocumentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Dialogflow.V2.GcsSources.t() | nil},
          parent: String.t(),
          document_template: Google.Cloud.Dialogflow.V2.ImportDocumentTemplate.t() | nil,
          import_gcs_custom_metadata: boolean
        }

  defstruct source: nil,
            parent: "",
            document_template: nil,
            import_gcs_custom_metadata: false

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false

  field :gcs_source, 2,
    type: Google.Cloud.Dialogflow.V2.GcsSources,
    json_name: "gcsSource",
    oneof: 0

  field :document_template, 3,
    type: Google.Cloud.Dialogflow.V2.ImportDocumentTemplate,
    json_name: "documentTemplate",
    deprecated: false

  field :import_gcs_custom_metadata, 4, type: :bool, json_name: "importGcsCustomMetadata"
end
defmodule Google.Cloud.Dialogflow.V2.ImportDocumentTemplate.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Dialogflow.V2.ImportDocumentTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mime_type: String.t(),
          knowledge_types: [Google.Cloud.Dialogflow.V2.Document.KnowledgeType.t()],
          metadata: %{String.t() => String.t()}
        }

  defstruct mime_type: "",
            knowledge_types: [],
            metadata: %{}

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false

  field :knowledge_types, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.Document.KnowledgeType,
    json_name: "knowledgeTypes",
    enum: true,
    deprecated: false

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ImportDocumentTemplate.MetadataEntry,
    map: true
end
defmodule Google.Cloud.Dialogflow.V2.ImportDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          warnings: [Google.Rpc.Status.t()]
        }

  defstruct warnings: []

  field :warnings, 1, repeated: true, type: Google.Rpc.Status
end
defmodule Google.Cloud.Dialogflow.V2.DeleteDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.UpdateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          document: Google.Cloud.Dialogflow.V2.Document.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct document: nil,
            update_mask: nil

  field :document, 1, type: Google.Cloud.Dialogflow.V2.Document, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ReloadDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:content_uri, String.t()},
          name: String.t(),
          import_gcs_custom_metadata: boolean,
          smart_messaging_partial_update: boolean
        }

  defstruct source: nil,
            name: "",
            import_gcs_custom_metadata: false,
            smart_messaging_partial_update: false

  oneof :source, 0

  field :name, 1, type: :string, deprecated: false
  field :content_uri, 3, type: :string, json_name: "contentUri", oneof: 0, deprecated: false

  field :import_gcs_custom_metadata, 4,
    type: :bool,
    json_name: "importGcsCustomMetadata",
    deprecated: false

  field :smart_messaging_partial_update, 5,
    type: :bool,
    json_name: "smartMessagingPartialUpdate",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ExportDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_destination, Google.Cloud.Dialogflow.V2.GcsDestination.t() | nil},
          name: String.t(),
          export_full_content: boolean,
          smart_messaging_partial_update: boolean
        }

  defstruct destination: nil,
            name: "",
            export_full_content: false,
            smart_messaging_partial_update: false

  oneof :destination, 0

  field :name, 1, type: :string, deprecated: false

  field :gcs_destination, 2,
    type: Google.Cloud.Dialogflow.V2.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :export_full_content, 3, type: :bool, json_name: "exportFullContent"
  field :smart_messaging_partial_update, 5, type: :bool, json_name: "smartMessagingPartialUpdate"
end
defmodule Google.Cloud.Dialogflow.V2.KnowledgeOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dialogflow.V2.KnowledgeOperationMetadata.State.t(),
          knowledge_base: String.t()
        }

  defstruct state: :STATE_UNSPECIFIED,
            knowledge_base: ""

  field :state, 1,
    type: Google.Cloud.Dialogflow.V2.KnowledgeOperationMetadata.State,
    enum: true,
    deprecated: false

  field :knowledge_base, 3, type: :string, json_name: "knowledgeBase"
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

  rpc :ImportDocuments,
      Google.Cloud.Dialogflow.V2.ImportDocumentsRequest,
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

  rpc :ExportDocument,
      Google.Cloud.Dialogflow.V2.ExportDocumentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2.Documents.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Documents.Service
end
