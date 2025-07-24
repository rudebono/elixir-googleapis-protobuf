defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.GetSchemaRegistryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ListSchemaRegistriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ListSchemaRegistriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema_registries, 1,
    repeated: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaRegistry,
    json_name: "schemaRegistries"
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.CreateSchemaRegistryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :schema_registry_id, 2, type: :string, json_name: "schemaRegistryId", deprecated: false

  field :schema_registry, 3,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaRegistry,
    json_name: "schemaRegistry",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.DeleteSchemaRegistryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.GetContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ListContextsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.GetSchemaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :subject, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ListSchemaTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ListSchemaVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :subject, 2, proto3_optional: true, type: :string, deprecated: false
  field :deleted, 3, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ListSubjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :subject_prefix, 2,
    proto3_optional: true,
    type: :string,
    json_name: "subjectPrefix",
    deprecated: false

  field :deleted, 3, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ListSubjectsBySchemaIdRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :subject, 2, proto3_optional: true, type: :string, deprecated: false
  field :deleted, 3, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ListVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :deleted, 2, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.DeleteSubjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :permanent, 2, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.GetVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :deleted, 2, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.CreateVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :version, 2, proto3_optional: true, type: :int32, deprecated: false
  field :id, 3, proto3_optional: true, type: :int32, deprecated: false

  field :schema_type, 4,
    proto3_optional: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaType,
    json_name: "schemaType",
    enum: true,
    deprecated: false

  field :schema, 5, type: :string, deprecated: false

  field :references, 6,
    repeated: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaReference,
    deprecated: false

  field :normalize, 7, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.CreateVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 1, type: :int32
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.LookupVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :schema_type, 2,
    proto3_optional: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaType,
    json_name: "schemaType",
    enum: true,
    deprecated: false

  field :schema, 3, type: :string, deprecated: false

  field :references, 4,
    repeated: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaReference,
    deprecated: false

  field :normalize, 5, proto3_optional: true, type: :bool, deprecated: false
  field :deleted, 6, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.DeleteVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :permanent, 2, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ListReferencedSchemasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.CheckCompatibilityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :schema_type, 2,
    proto3_optional: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaType,
    json_name: "schemaType",
    enum: true,
    deprecated: false

  field :schema, 3, type: :string, deprecated: false

  field :references, 4,
    repeated: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaReference,
    deprecated: false

  field :verbose, 5, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.CheckCompatibilityResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :is_compatible, 1, type: :bool
  field :messages, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.GetSchemaConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :default_to_global, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "defaultToGlobal",
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.UpdateSchemaConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :compatibility, 2,
    proto3_optional: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaConfig.CompatibilityType,
    enum: true,
    deprecated: false

  field :normalize, 3, proto3_optional: true, type: :bool, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.DeleteSchemaConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.GetSchemaModeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.UpdateSchemaModeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :mode, 2,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaMode.ModeType,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.DeleteSchemaModeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ManagedSchemaRegistry.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.managedkafka.schemaregistry.v1.ManagedSchemaRegistry",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetSchemaRegistry,
      Google.Cloud.Managedkafka.Schemaregistry.V1.GetSchemaRegistryRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaRegistry

  rpc :ListSchemaRegistries,
      Google.Cloud.Managedkafka.Schemaregistry.V1.ListSchemaRegistriesRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.ListSchemaRegistriesResponse

  rpc :CreateSchemaRegistry,
      Google.Cloud.Managedkafka.Schemaregistry.V1.CreateSchemaRegistryRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaRegistry

  rpc :DeleteSchemaRegistry,
      Google.Cloud.Managedkafka.Schemaregistry.V1.DeleteSchemaRegistryRequest,
      Google.Protobuf.Empty

  rpc :GetContext,
      Google.Cloud.Managedkafka.Schemaregistry.V1.GetContextRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.Context

  rpc :ListContexts,
      Google.Cloud.Managedkafka.Schemaregistry.V1.ListContextsRequest,
      Google.Api.HttpBody

  rpc :GetSchema,
      Google.Cloud.Managedkafka.Schemaregistry.V1.GetSchemaRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.Schema

  rpc :GetRawSchema,
      Google.Cloud.Managedkafka.Schemaregistry.V1.GetSchemaRequest,
      Google.Api.HttpBody

  rpc :ListSchemaVersions,
      Google.Cloud.Managedkafka.Schemaregistry.V1.ListSchemaVersionsRequest,
      Google.Api.HttpBody

  rpc :ListSchemaTypes,
      Google.Cloud.Managedkafka.Schemaregistry.V1.ListSchemaTypesRequest,
      Google.Api.HttpBody

  rpc :ListSubjects,
      Google.Cloud.Managedkafka.Schemaregistry.V1.ListSubjectsRequest,
      Google.Api.HttpBody

  rpc :ListSubjectsBySchemaId,
      Google.Cloud.Managedkafka.Schemaregistry.V1.ListSubjectsBySchemaIdRequest,
      Google.Api.HttpBody

  rpc :DeleteSubject,
      Google.Cloud.Managedkafka.Schemaregistry.V1.DeleteSubjectRequest,
      Google.Api.HttpBody

  rpc :LookupVersion,
      Google.Cloud.Managedkafka.Schemaregistry.V1.LookupVersionRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaVersion

  rpc :GetVersion,
      Google.Cloud.Managedkafka.Schemaregistry.V1.GetVersionRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaVersion

  rpc :GetRawSchemaVersion,
      Google.Cloud.Managedkafka.Schemaregistry.V1.GetVersionRequest,
      Google.Api.HttpBody

  rpc :ListVersions,
      Google.Cloud.Managedkafka.Schemaregistry.V1.ListVersionsRequest,
      Google.Api.HttpBody

  rpc :CreateVersion,
      Google.Cloud.Managedkafka.Schemaregistry.V1.CreateVersionRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.CreateVersionResponse

  rpc :DeleteVersion,
      Google.Cloud.Managedkafka.Schemaregistry.V1.DeleteVersionRequest,
      Google.Api.HttpBody

  rpc :ListReferencedSchemas,
      Google.Cloud.Managedkafka.Schemaregistry.V1.ListReferencedSchemasRequest,
      Google.Api.HttpBody

  rpc :CheckCompatibility,
      Google.Cloud.Managedkafka.Schemaregistry.V1.CheckCompatibilityRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.CheckCompatibilityResponse

  rpc :GetSchemaConfig,
      Google.Cloud.Managedkafka.Schemaregistry.V1.GetSchemaConfigRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaConfig

  rpc :UpdateSchemaConfig,
      Google.Cloud.Managedkafka.Schemaregistry.V1.UpdateSchemaConfigRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaConfig

  rpc :DeleteSchemaConfig,
      Google.Cloud.Managedkafka.Schemaregistry.V1.DeleteSchemaConfigRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaConfig

  rpc :GetSchemaMode,
      Google.Cloud.Managedkafka.Schemaregistry.V1.GetSchemaModeRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaMode

  rpc :UpdateSchemaMode,
      Google.Cloud.Managedkafka.Schemaregistry.V1.UpdateSchemaModeRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaMode

  rpc :DeleteSchemaMode,
      Google.Cloud.Managedkafka.Schemaregistry.V1.DeleteSchemaModeRequest,
      Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaMode
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.ManagedSchemaRegistry.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Managedkafka.Schemaregistry.V1.ManagedSchemaRegistry.Service
end
