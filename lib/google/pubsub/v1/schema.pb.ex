defmodule Google.Pubsub.V1.SchemaView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SCHEMA_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Pubsub.V1.Encoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENCODING_UNSPECIFIED, 0
  field :JSON, 1
  field :BINARY, 2
end

defmodule Google.Pubsub.V1.Schema.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PROTOCOL_BUFFER, 1
  field :AVRO, 2
end

defmodule Google.Pubsub.V1.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: Google.Pubsub.V1.Schema.Type, enum: true
  field :definition, 3, type: :string
  field :revision_id, 4, type: :string, json_name: "revisionId", deprecated: false

  field :revision_create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false
end

defmodule Google.Pubsub.V1.CreateSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :schema, 2, type: Google.Pubsub.V1.Schema, deprecated: false
  field :schema_id, 3, type: :string, json_name: "schemaId"
end

defmodule Google.Pubsub.V1.GetSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Pubsub.V1.SchemaView, enum: true
end

defmodule Google.Pubsub.V1.ListSchemasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Pubsub.V1.SchemaView, enum: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Pubsub.V1.ListSchemasResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :schemas, 1, repeated: true, type: Google.Pubsub.V1.Schema
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Pubsub.V1.ListSchemaRevisionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Pubsub.V1.SchemaView, enum: true
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Pubsub.V1.ListSchemaRevisionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :schemas, 1, repeated: true, type: Google.Pubsub.V1.Schema
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Pubsub.V1.CommitSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :schema, 2, type: Google.Pubsub.V1.Schema, deprecated: false
end

defmodule Google.Pubsub.V1.RollbackSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: false
end

defmodule Google.Pubsub.V1.DeleteSchemaRevisionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :revision_id, 2, type: :string, json_name: "revisionId", deprecated: true
end

defmodule Google.Pubsub.V1.DeleteSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Pubsub.V1.ValidateSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :schema, 2, type: Google.Pubsub.V1.Schema, deprecated: false
end

defmodule Google.Pubsub.V1.ValidateSchemaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Pubsub.V1.ValidateMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :schema_spec, 0

  field :parent, 1, type: :string, deprecated: false
  field :name, 2, type: :string, oneof: 0, deprecated: false
  field :schema, 3, type: Google.Pubsub.V1.Schema, oneof: 0
  field :message, 4, type: :bytes
  field :encoding, 5, type: Google.Pubsub.V1.Encoding, enum: true
end

defmodule Google.Pubsub.V1.ValidateMessageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Pubsub.V1.SchemaService.Service do
  @moduledoc false

  use GRPC.Service, name: "google.pubsub.v1.SchemaService", protoc_gen_elixir_version: "0.14.1"

  rpc :CreateSchema, Google.Pubsub.V1.CreateSchemaRequest, Google.Pubsub.V1.Schema

  rpc :GetSchema, Google.Pubsub.V1.GetSchemaRequest, Google.Pubsub.V1.Schema

  rpc :ListSchemas, Google.Pubsub.V1.ListSchemasRequest, Google.Pubsub.V1.ListSchemasResponse

  rpc :ListSchemaRevisions,
      Google.Pubsub.V1.ListSchemaRevisionsRequest,
      Google.Pubsub.V1.ListSchemaRevisionsResponse

  rpc :CommitSchema, Google.Pubsub.V1.CommitSchemaRequest, Google.Pubsub.V1.Schema

  rpc :RollbackSchema, Google.Pubsub.V1.RollbackSchemaRequest, Google.Pubsub.V1.Schema

  rpc :DeleteSchemaRevision, Google.Pubsub.V1.DeleteSchemaRevisionRequest, Google.Pubsub.V1.Schema

  rpc :DeleteSchema, Google.Pubsub.V1.DeleteSchemaRequest, Google.Protobuf.Empty

  rpc :ValidateSchema,
      Google.Pubsub.V1.ValidateSchemaRequest,
      Google.Pubsub.V1.ValidateSchemaResponse

  rpc :ValidateMessage,
      Google.Pubsub.V1.ValidateMessageRequest,
      Google.Pubsub.V1.ValidateMessageResponse
end

defmodule Google.Pubsub.V1.SchemaService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Pubsub.V1.SchemaService.Service
end
