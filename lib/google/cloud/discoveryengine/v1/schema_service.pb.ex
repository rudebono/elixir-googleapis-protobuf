defmodule Google.Cloud.Discoveryengine.V1.GetSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListSchemasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.ListSchemasResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :schemas, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1.Schema
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.CreateSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :schema, 2, type: Google.Cloud.Discoveryengine.V1.Schema, deprecated: false
  field :schema_id, 3, type: :string, json_name: "schemaId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :schema, 1, type: Google.Cloud.Discoveryengine.V1.Schema, deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.CreateSchemaMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateSchemaMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteSchemaMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.SchemaService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.SchemaService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetSchema,
      Google.Cloud.Discoveryengine.V1.GetSchemaRequest,
      Google.Cloud.Discoveryengine.V1.Schema

  rpc :ListSchemas,
      Google.Cloud.Discoveryengine.V1.ListSchemasRequest,
      Google.Cloud.Discoveryengine.V1.ListSchemasResponse

  rpc :CreateSchema,
      Google.Cloud.Discoveryengine.V1.CreateSchemaRequest,
      Google.Longrunning.Operation

  rpc :UpdateSchema,
      Google.Cloud.Discoveryengine.V1.UpdateSchemaRequest,
      Google.Longrunning.Operation

  rpc :DeleteSchema,
      Google.Cloud.Discoveryengine.V1.DeleteSchemaRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1.SchemaService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.SchemaService.Service
end
