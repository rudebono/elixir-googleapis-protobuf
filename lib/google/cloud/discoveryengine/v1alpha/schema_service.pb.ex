defmodule Google.Cloud.Discoveryengine.V1alpha.GetSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListSchemasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListSchemasResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :schemas, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.Schema
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :schema, 2, type: Google.Cloud.Discoveryengine.V1alpha.Schema, deprecated: false
  field :schema_id, 3, type: :string, json_name: "schemaId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :schema, 1, type: Google.Cloud.Discoveryengine.V1alpha.Schema, deprecated: false
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateSchemaMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateSchemaMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteSchemaMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SchemaService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.SchemaService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetSchema,
      Google.Cloud.Discoveryengine.V1alpha.GetSchemaRequest,
      Google.Cloud.Discoveryengine.V1alpha.Schema

  rpc :ListSchemas,
      Google.Cloud.Discoveryengine.V1alpha.ListSchemasRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListSchemasResponse

  rpc :CreateSchema,
      Google.Cloud.Discoveryengine.V1alpha.CreateSchemaRequest,
      Google.Longrunning.Operation

  rpc :UpdateSchema,
      Google.Cloud.Discoveryengine.V1alpha.UpdateSchemaRequest,
      Google.Longrunning.Operation

  rpc :DeleteSchema,
      Google.Cloud.Discoveryengine.V1alpha.DeleteSchemaRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SchemaService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.SchemaService.Service
end
