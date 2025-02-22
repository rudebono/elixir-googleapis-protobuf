defmodule Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataResponse.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INDEXED, 1
  field :NOT_IN_TARGET_SITE, 2
  field :NOT_IN_INDEX, 3
end

defmodule Google.Cloud.Discoveryengine.V1.GetDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.ListDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.CreateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Discoveryengine.V1.Document, deprecated: false
  field :document_id, 3, type: :string, json_name: "documentId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: Google.Cloud.Discoveryengine.V1.Document, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataRequest.UrisMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uris, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataRequest.FhirMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fhir_resources, 1,
    repeated: true,
    type: :string,
    json_name: "fhirResources",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataRequest.Matcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :matcher, 0

  field :uris_matcher, 1,
    type: Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataRequest.UrisMatcher,
    json_name: "urisMatcher",
    oneof: 0

  field :fhir_matcher, 2,
    type: Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataRequest.FhirMatcher,
    json_name: "fhirMatcher",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :matcher, 2,
    type: Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataRequest.Matcher,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataResponse.DocumentMetadata.MatcherValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :matcher_value, 0

  field :uri, 1, type: :string, oneof: 0
  field :fhir_resource, 2, type: :string, json_name: "fhirResource", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataResponse.DocumentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :matcher_value, 2,
    type:
      Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataResponse.DocumentMetadata.MatcherValue,
    json_name: "matcherValue"

  field :state, 3,
    type: Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataResponse.State,
    enum: true

  field :last_refreshed_time, 4, type: Google.Protobuf.Timestamp, json_name: "lastRefreshedTime"
  field :data_ingestion_source, 5, type: :string, json_name: "dataIngestionSource"
end

defmodule Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :documents_metadata, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataResponse.DocumentMetadata,
    json_name: "documentsMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1.DocumentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.DocumentService",
    protoc_gen_elixir_version: "0.14.1"

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

  rpc :BatchGetDocumentsMetadata,
      Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataRequest,
      Google.Cloud.Discoveryengine.V1.BatchGetDocumentsMetadataResponse
end

defmodule Google.Cloud.Discoveryengine.V1.DocumentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.DocumentService.Service
end
