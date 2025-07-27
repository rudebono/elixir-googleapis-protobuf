defmodule Google.Cloud.Contentwarehouse.V1.DocumentLink.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SOFT_DELETED, 2
end

defmodule Google.Cloud.Contentwarehouse.V1.ListLinkedTargetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :document_links, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.DocumentLink,
    json_name: "documentLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contentwarehouse.V1.ListLinkedTargetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :request_metadata, 2,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"
end

defmodule Google.Cloud.Contentwarehouse.V1.ListLinkedSourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :document_links, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.DocumentLink,
    json_name: "documentLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contentwarehouse.V1.ListLinkedSourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"

  field :request_metadata, 2,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :source_document_reference, 2,
    type: Google.Cloud.Contentwarehouse.V1.DocumentReference,
    json_name: "sourceDocumentReference"

  field :target_document_reference, 3,
    type: Google.Cloud.Contentwarehouse.V1.DocumentReference,
    json_name: "targetDocumentReference"

  field :description, 4, type: :string

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 7, type: Google.Cloud.Contentwarehouse.V1.DocumentLink.State, enum: true
end

defmodule Google.Cloud.Contentwarehouse.V1.CreateDocumentLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :document_link, 2,
    type: Google.Cloud.Contentwarehouse.V1.DocumentLink,
    json_name: "documentLink",
    deprecated: false

  field :request_metadata, 3,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"
end

defmodule Google.Cloud.Contentwarehouse.V1.DeleteDocumentLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :request_metadata, 2,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.contentwarehouse.v1.DocumentLinkService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListLinkedTargets,
      Google.Cloud.Contentwarehouse.V1.ListLinkedTargetsRequest,
      Google.Cloud.Contentwarehouse.V1.ListLinkedTargetsResponse

  rpc :ListLinkedSources,
      Google.Cloud.Contentwarehouse.V1.ListLinkedSourcesRequest,
      Google.Cloud.Contentwarehouse.V1.ListLinkedSourcesResponse

  rpc :CreateDocumentLink,
      Google.Cloud.Contentwarehouse.V1.CreateDocumentLinkRequest,
      Google.Cloud.Contentwarehouse.V1.DocumentLink

  rpc :DeleteDocumentLink,
      Google.Cloud.Contentwarehouse.V1.DeleteDocumentLinkRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Contentwarehouse.V1.DocumentLinkService.Service
end
