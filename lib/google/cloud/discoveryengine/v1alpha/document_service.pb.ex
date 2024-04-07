defmodule Google.Cloud.Discoveryengine.V1alpha.GetProcessedDocumentRequest.ProcessedDocumentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROCESSED_DOCUMENT_TYPE_UNSPECIFIED, 0
  field :PARSED_DOCUMENT, 1
  field :CHUNKED_DOCUMENT, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetProcessedDocumentRequest.ProcessedDocumentFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROCESSED_DOCUMENT_FORMAT_UNSPECIFIED, 0
  field :JSON, 1
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Discoveryengine.V1alpha.Document, deprecated: false
  field :document_id, 3, type: :string, json_name: "documentId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Discoveryengine.V1alpha.Document, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetProcessedDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :processed_document_type, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.GetProcessedDocumentRequest.ProcessedDocumentType,
    json_name: "processedDocumentType",
    enum: true,
    deprecated: false

  field :processed_document_format, 3,
    type:
      Google.Cloud.Discoveryengine.V1alpha.GetProcessedDocumentRequest.ProcessedDocumentFormat,
    json_name: "processedDocumentFormat",
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.DocumentService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetDocument,
      Google.Cloud.Discoveryengine.V1alpha.GetDocumentRequest,
      Google.Cloud.Discoveryengine.V1alpha.Document

  rpc :ListDocuments,
      Google.Cloud.Discoveryengine.V1alpha.ListDocumentsRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListDocumentsResponse

  rpc :CreateDocument,
      Google.Cloud.Discoveryengine.V1alpha.CreateDocumentRequest,
      Google.Cloud.Discoveryengine.V1alpha.Document

  rpc :UpdateDocument,
      Google.Cloud.Discoveryengine.V1alpha.UpdateDocumentRequest,
      Google.Cloud.Discoveryengine.V1alpha.Document

  rpc :DeleteDocument,
      Google.Cloud.Discoveryengine.V1alpha.DeleteDocumentRequest,
      Google.Protobuf.Empty

  rpc :ImportDocuments,
      Google.Cloud.Discoveryengine.V1alpha.ImportDocumentsRequest,
      Google.Longrunning.Operation

  rpc :PurgeDocuments,
      Google.Cloud.Discoveryengine.V1alpha.PurgeDocumentsRequest,
      Google.Longrunning.Operation

  rpc :GetProcessedDocument,
      Google.Cloud.Discoveryengine.V1alpha.GetProcessedDocumentRequest,
      Google.Cloud.Discoveryengine.V1alpha.ProcessedDocument
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DocumentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.DocumentService.Service
end