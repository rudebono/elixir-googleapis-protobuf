defmodule Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataResponse.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :INDEXED, 1
  field :NOT_IN_TARGET_SITE, 2
  field :NOT_IN_INDEX, 3
end

defmodule Google.Cloud.Discoveryengine.V1beta.GetDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1beta.Document
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CreateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Discoveryengine.V1beta.Document, deprecated: false
  field :document_id, 3, type: :string, json_name: "documentId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.UpdateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :document, 1, type: Google.Cloud.Discoveryengine.V1beta.Document, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DeleteDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataRequest.UrisMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uris, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataRequest.FhirMatcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :fhir_resources, 1,
    repeated: true,
    type: :string,
    json_name: "fhirResources",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataRequest.Matcher do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :matcher, 0

  field :uris_matcher, 1,
    type: Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataRequest.UrisMatcher,
    json_name: "urisMatcher",
    oneof: 0

  field :fhir_matcher, 2,
    type: Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataRequest.FhirMatcher,
    json_name: "fhirMatcher",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :matcher, 2,
    type: Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataRequest.Matcher,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataResponse.DocumentMetadata.MatcherValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :matcher_value, 0

  field :uri, 1, type: :string, oneof: 0
  field :fhir_resource, 2, type: :string, json_name: "fhirResource", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataResponse.DocumentMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :matcher_value, 2,
    type:
      Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataResponse.DocumentMetadata.MatcherValue,
    json_name: "matcherValue"

  field :state, 3,
    type: Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataResponse.State,
    enum: true

  field :last_refreshed_time, 4, type: Google.Protobuf.Timestamp, json_name: "lastRefreshedTime"
  field :data_ingestion_source, 5, type: :string, json_name: "dataIngestionSource"
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :documents_metadata, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataResponse.DocumentMetadata,
    json_name: "documentsMetadata"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DocumentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.DocumentService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetDocument,
      Google.Cloud.Discoveryengine.V1beta.GetDocumentRequest,
      Google.Cloud.Discoveryengine.V1beta.Document

  rpc :ListDocuments,
      Google.Cloud.Discoveryengine.V1beta.ListDocumentsRequest,
      Google.Cloud.Discoveryengine.V1beta.ListDocumentsResponse

  rpc :CreateDocument,
      Google.Cloud.Discoveryengine.V1beta.CreateDocumentRequest,
      Google.Cloud.Discoveryengine.V1beta.Document

  rpc :UpdateDocument,
      Google.Cloud.Discoveryengine.V1beta.UpdateDocumentRequest,
      Google.Cloud.Discoveryengine.V1beta.Document

  rpc :DeleteDocument,
      Google.Cloud.Discoveryengine.V1beta.DeleteDocumentRequest,
      Google.Protobuf.Empty

  rpc :ImportDocuments,
      Google.Cloud.Discoveryengine.V1beta.ImportDocumentsRequest,
      Google.Longrunning.Operation

  rpc :PurgeDocuments,
      Google.Cloud.Discoveryengine.V1beta.PurgeDocumentsRequest,
      Google.Longrunning.Operation

  rpc :BatchGetDocumentsMetadata,
      Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataRequest,
      Google.Cloud.Discoveryengine.V1beta.BatchGetDocumentsMetadataResponse
end

defmodule Google.Cloud.Discoveryengine.V1beta.DocumentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.DocumentService.Service
end
