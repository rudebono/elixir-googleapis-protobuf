defmodule Google.Cloud.Dialogflow.V2beta1.Document.KnowledgeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :KNOWLEDGE_TYPE_UNSPECIFIED, 0
  field :FAQ, 1
  field :EXTRACTIVE_QA, 2
  field :ARTICLE_SUGGESTION, 3
  field :AGENT_FACING_SMART_REPLY, 4
  field :SMART_REPLY, 4
end

defmodule Google.Cloud.Dialogflow.V2beta1.Document.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :RELOADING, 4
  field :DELETING, 5
end

defmodule Google.Cloud.Dialogflow.V2beta1.KnowledgeOperationMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.Document.ReloadStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Dialogflow.V2beta1.Document.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Document do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false

  field :knowledge_types, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Document.KnowledgeType,
    json_name: "knowledgeTypes",
    enum: true,
    deprecated: false

  field :content_uri, 5, type: :string, json_name: "contentUri", oneof: 0
  field :content, 6, type: :string, oneof: 0, deprecated: true
  field :raw_content, 9, type: :bytes, json_name: "rawContent", oneof: 0
  field :enable_auto_reload, 11, type: :bool, json_name: "enableAutoReload", deprecated: false

  field :latest_reload_status, 12,
    type: Google.Cloud.Dialogflow.V2beta1.Document.ReloadStatus,
    json_name: "latestReloadStatus",
    deprecated: false

  field :metadata, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Document.MetadataEntry,
    map: true,
    deprecated: false

  field :state, 13,
    type: Google.Cloud.Dialogflow.V2beta1.Document.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Dialogflow.V2beta1.Document, deprecated: false
  field :import_gcs_custom_metadata, 3, type: :bool, json_name: "importGcsCustomMetadata"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ImportDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false

  field :gcs_source, 2,
    type: Google.Cloud.Dialogflow.V2beta1.GcsSources,
    json_name: "gcsSource",
    oneof: 0,
    deprecated: false

  field :document_template, 3,
    type: Google.Cloud.Dialogflow.V2beta1.ImportDocumentTemplate,
    json_name: "documentTemplate",
    deprecated: false

  field :import_gcs_custom_metadata, 4, type: :bool, json_name: "importGcsCustomMetadata"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ImportDocumentTemplate.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ImportDocumentTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false

  field :knowledge_types, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Document.KnowledgeType,
    json_name: "knowledgeTypes",
    enum: true,
    deprecated: false

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ImportDocumentTemplate.MetadataEntry,
    map: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.ImportDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :warnings, 1, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: Google.Cloud.Dialogflow.V2beta1.Document, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ExportOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :exported_gcs_destination, 1,
    type: Google.Cloud.Dialogflow.V2beta1.GcsDestination,
    json_name: "exportedGcsDestination"
end

defmodule Google.Cloud.Dialogflow.V2beta1.KnowledgeOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation_metadata, 0

  field :state, 1,
    type: Google.Cloud.Dialogflow.V2beta1.KnowledgeOperationMetadata.State,
    enum: true,
    deprecated: false

  field :knowledge_base, 3, type: :string, json_name: "knowledgeBase"

  field :export_operation_metadata, 4,
    type: Google.Cloud.Dialogflow.V2beta1.ExportOperationMetadata,
    json_name: "exportOperationMetadata",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.ReloadDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :name, 1, type: :string, deprecated: false

  field :gcs_source, 3,
    type: Google.Cloud.Dialogflow.V2beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :import_gcs_custom_metadata, 4, type: :bool, json_name: "importGcsCustomMetadata"
end

defmodule Google.Cloud.Dialogflow.V2beta1.Documents.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.Documents",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListDocuments,
      Google.Cloud.Dialogflow.V2beta1.ListDocumentsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListDocumentsResponse

  rpc :GetDocument,
      Google.Cloud.Dialogflow.V2beta1.GetDocumentRequest,
      Google.Cloud.Dialogflow.V2beta1.Document

  rpc :CreateDocument,
      Google.Cloud.Dialogflow.V2beta1.CreateDocumentRequest,
      Google.Longrunning.Operation

  rpc :ImportDocuments,
      Google.Cloud.Dialogflow.V2beta1.ImportDocumentsRequest,
      Google.Longrunning.Operation

  rpc :DeleteDocument,
      Google.Cloud.Dialogflow.V2beta1.DeleteDocumentRequest,
      Google.Longrunning.Operation

  rpc :UpdateDocument,
      Google.Cloud.Dialogflow.V2beta1.UpdateDocumentRequest,
      Google.Longrunning.Operation

  rpc :ReloadDocument,
      Google.Cloud.Dialogflow.V2beta1.ReloadDocumentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2beta1.Documents.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Documents.Service
end
