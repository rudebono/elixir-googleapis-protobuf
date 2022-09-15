defmodule Google.Cloud.Contentwarehouse.V1.CreateDocumentSchemaRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :document_schema, 2,
    type: Google.Cloud.Contentwarehouse.V1.DocumentSchema,
    json_name: "documentSchema",
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.GetDocumentSchemaRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.UpdateDocumentSchemaRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :document_schema, 2,
    type: Google.Cloud.Contentwarehouse.V1.DocumentSchema,
    json_name: "documentSchema",
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.DeleteDocumentSchemaRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.ListDocumentSchemasRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Contentwarehouse.V1.ListDocumentSchemasResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :document_schemas, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.DocumentSchema,
    json_name: "documentSchemas"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentSchemaService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.contentwarehouse.v1.DocumentSchemaService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateDocumentSchema,
      Google.Cloud.Contentwarehouse.V1.CreateDocumentSchemaRequest,
      Google.Cloud.Contentwarehouse.V1.DocumentSchema

  rpc :UpdateDocumentSchema,
      Google.Cloud.Contentwarehouse.V1.UpdateDocumentSchemaRequest,
      Google.Cloud.Contentwarehouse.V1.DocumentSchema

  rpc :GetDocumentSchema,
      Google.Cloud.Contentwarehouse.V1.GetDocumentSchemaRequest,
      Google.Cloud.Contentwarehouse.V1.DocumentSchema

  rpc :DeleteDocumentSchema,
      Google.Cloud.Contentwarehouse.V1.DeleteDocumentSchemaRequest,
      Google.Protobuf.Empty

  rpc :ListDocumentSchemas,
      Google.Cloud.Contentwarehouse.V1.ListDocumentSchemasRequest,
      Google.Cloud.Contentwarehouse.V1.ListDocumentSchemasResponse
end

defmodule Google.Cloud.Contentwarehouse.V1.DocumentSchemaService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Contentwarehouse.V1.DocumentSchemaService.Service
end