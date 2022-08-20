defmodule Google.Cloud.Dialogflow.V2.Document.KnowledgeType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :KNOWLEDGE_TYPE_UNSPECIFIED, 0
  field :FAQ, 1
  field :EXTRACTIVE_QA, 2
  field :ARTICLE_SUGGESTION, 3
  field :AGENT_FACING_SMART_REPLY, 4
end

defmodule Google.Cloud.Dialogflow.V2.Document.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :RELOADING, 4
  field :DELETING, 5
end

defmodule Google.Cloud.Dialogflow.V2.KnowledgeOperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end

defmodule Google.Cloud.Dialogflow.V2.Document.ReloadStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Dialogflow.V2.Document.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.Document do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

  field :state, 13, type: Google.Cloud.Dialogflow.V2.Document.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GetDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListDocumentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ListDocumentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2.CreateDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Dialogflow.V2.Document, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ImportDocumentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2.ImportDocumentTemplate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :warnings, 1, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Dialogflow.V2.DeleteDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.UpdateDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Dialogflow.V2.Document, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ReloadDocumentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :name, 1, type: :string, deprecated: false

  field :gcs_destination, 2,
    type: Google.Cloud.Dialogflow.V2.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :export_full_content, 3, type: :bool, json_name: "exportFullContent"
  field :smart_messaging_partial_update, 5, type: :bool, json_name: "smartMessagingPartialUpdate"
end

defmodule Google.Cloud.Dialogflow.V2.ExportOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :exported_gcs_destination, 1,
    type: Google.Cloud.Dialogflow.V2.GcsDestination,
    json_name: "exportedGcsDestination"
end

defmodule Google.Cloud.Dialogflow.V2.KnowledgeOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation_metadata, 0

  field :state, 1,
    type: Google.Cloud.Dialogflow.V2.KnowledgeOperationMetadata.State,
    enum: true,
    deprecated: false

  field :knowledge_base, 3, type: :string, json_name: "knowledgeBase"

  field :export_operation_metadata, 4,
    type: Google.Cloud.Dialogflow.V2.ExportOperationMetadata,
    json_name: "exportOperationMetadata",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2.Documents.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.Documents",
    protoc_gen_elixir_version: "0.11.0"

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