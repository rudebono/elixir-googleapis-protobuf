defmodule Google.Cloud.Aiplatform.V1beta1.MetadataSchema.MetadataSchemaType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :METADATA_SCHEMA_TYPE_UNSPECIFIED, 0
  field :ARTIFACT_TYPE, 1
  field :EXECUTION_TYPE, 2
  field :CONTEXT_TYPE, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.MetadataSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :schema_version, 2, type: :string, json_name: "schemaVersion"
  field :schema, 3, type: :string, deprecated: false

  field :schema_type, 4,
    type: Google.Cloud.Aiplatform.V1beta1.MetadataSchema.MetadataSchemaType,
    json_name: "schemaType",
    enum: true

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :description, 6, type: :string
end