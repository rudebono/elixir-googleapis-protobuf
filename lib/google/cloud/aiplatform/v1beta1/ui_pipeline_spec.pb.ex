defmodule Google.Cloud.Aiplatform.V1beta1.ArtifactTypeSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :schema_title, 1, type: :string, json_name: "schemaTitle", oneof: 0
  field :schema_uri, 2, type: :string, json_name: "schemaUri", oneof: 0, deprecated: true
  field :instance_schema, 3, type: :string, json_name: "instanceSchema", oneof: 0
  field :schema_version, 4, type: :string, json_name: "schemaVersion"
end

defmodule Google.Cloud.Aiplatform.V1beta1.RuntimeArtifact.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.Value
end

defmodule Google.Cloud.Aiplatform.V1beta1.RuntimeArtifact.CustomPropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.Value
end

defmodule Google.Cloud.Aiplatform.V1beta1.RuntimeArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Aiplatform.V1beta1.ArtifactTypeSchema
  field :uri, 3, type: :string

  field :properties, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.RuntimeArtifact.PropertiesEntry,
    map: true,
    deprecated: true

  field :custom_properties, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.RuntimeArtifact.CustomPropertiesEntry,
    json_name: "customProperties",
    map: true,
    deprecated: true

  field :metadata, 6, type: Google.Protobuf.Struct
end
