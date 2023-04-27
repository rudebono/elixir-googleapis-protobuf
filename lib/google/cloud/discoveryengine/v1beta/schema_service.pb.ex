defmodule Google.Cloud.Discoveryengine.V1beta.GetSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListSchemasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListSchemasResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :schemas, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1beta.Schema
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CreateSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :schema, 2, type: Google.Cloud.Discoveryengine.V1beta.Schema, deprecated: false
  field :schema_id, 3, type: :string, json_name: "schemaId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.UpdateSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :schema, 1, type: Google.Cloud.Discoveryengine.V1beta.Schema, deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DeleteSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.CreateSchemaMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.UpdateSchemaMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DeleteSchemaMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SchemaService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.SchemaService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetSchema,
      Google.Cloud.Discoveryengine.V1beta.GetSchemaRequest,
      Google.Cloud.Discoveryengine.V1beta.Schema

  rpc :ListSchemas,
      Google.Cloud.Discoveryengine.V1beta.ListSchemasRequest,
      Google.Cloud.Discoveryengine.V1beta.ListSchemasResponse

  rpc :CreateSchema,
      Google.Cloud.Discoveryengine.V1beta.CreateSchemaRequest,
      Google.Longrunning.Operation

  rpc :UpdateSchema,
      Google.Cloud.Discoveryengine.V1beta.UpdateSchemaRequest,
      Google.Longrunning.Operation

  rpc :DeleteSchema,
      Google.Cloud.Discoveryengine.V1beta.DeleteSchemaRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1beta.SchemaService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.SchemaService.Service
end