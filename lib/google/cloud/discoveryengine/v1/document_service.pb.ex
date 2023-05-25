defmodule Google.Cloud.Discoveryengine.V1.GetDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.ListDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.CreateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Discoveryengine.V1.Document, deprecated: false
  field :document_id, 3, type: :string, json_name: "documentId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document, 1, type: Google.Cloud.Discoveryengine.V1.Document, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.DocumentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.DocumentService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetDocument,
      Google.Cloud.Discoveryengine.V1.GetDocumentRequest,
      Google.Cloud.Discoveryengine.V1.Document

  rpc :ListDocuments,
      Google.Cloud.Discoveryengine.V1.ListDocumentsRequest,
      Google.Cloud.Discoveryengine.V1.ListDocumentsResponse

  rpc :CreateDocument,
      Google.Cloud.Discoveryengine.V1.CreateDocumentRequest,
      Google.Cloud.Discoveryengine.V1.Document

  rpc :UpdateDocument,
      Google.Cloud.Discoveryengine.V1.UpdateDocumentRequest,
      Google.Cloud.Discoveryengine.V1.Document

  rpc :DeleteDocument,
      Google.Cloud.Discoveryengine.V1.DeleteDocumentRequest,
      Google.Protobuf.Empty

  rpc :ImportDocuments,
      Google.Cloud.Discoveryengine.V1.ImportDocumentsRequest,
      Google.Longrunning.Operation

  rpc :PurgeDocuments,
      Google.Cloud.Discoveryengine.V1.PurgeDocumentsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1.DocumentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.DocumentService.Service
end