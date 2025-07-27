defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SCHEMA_TYPE_UNSPECIFIED, 0
  field :AVRO, 1
  field :JSON, 2
  field :PROTOBUF, 3
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaConfig.CompatibilityType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NONE, 0
  field :BACKWARD, 1
  field :BACKWARD_TRANSITIVE, 2
  field :FORWARD, 3
  field :FORWARD_TRANSITIVE, 4
  field :FULL, 5
  field :FULL_TRANSITIVE, 6
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaMode.ModeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NONE, 0
  field :READONLY, 1
  field :READWRITE, 2
  field :IMPORT, 3
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaRegistry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :contexts, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.Context do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :subjects, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :subject, 2, type: :string, deprecated: false
  field :version, 3, type: :int32, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.Schema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema_type, 1,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaType,
    json_name: "schemaType",
    enum: true,
    deprecated: false

  field :schema_payload, 2, type: :string, json_name: "schema"

  field :references, 3,
    repeated: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaReference,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaSubject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :versions, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subject, 1, type: :string, deprecated: false
  field :version_id, 2, type: :int32, json_name: "version", deprecated: false
  field :schema_id, 3, type: :int32, json_name: "id", deprecated: false

  field :schema_type, 4,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaType,
    json_name: "schemaType",
    enum: true,
    deprecated: false

  field :schema_payload, 5, type: :string, json_name: "schema", deprecated: false

  field :references, 6,
    repeated: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.Schema.SchemaReference,
    deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :compatibility, 1,
    proto3_optional: true,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaConfig.CompatibilityType,
    enum: true,
    deprecated: false

  field :normalize, 2, proto3_optional: true, type: :bool, deprecated: false
  field :alias, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaMode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Managedkafka.Schemaregistry.V1.SchemaMode.ModeType,
    enum: true,
    deprecated: false
end
