defmodule Google.Cloud.Discoveryengine.V1alpha.DataStore.ContentConfig do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CONTENT_CONFIG_UNSPECIFIED, 0
  field :NO_CONTENT, 1
  field :CONTENT_REQUIRED, 2
  field :PUBLIC_WEBSITE, 3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DataStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :industry_vertical, 3,
    type: Google.Cloud.Discoveryengine.V1alpha.IndustryVertical,
    json_name: "industryVertical",
    enum: true,
    deprecated: false

  field :solution_types, 5,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.SolutionType,
    json_name: "solutionTypes",
    enum: true

  field :default_schema_id, 7, type: :string, json_name: "defaultSchemaId", deprecated: false

  field :content_config, 6,
    type: Google.Cloud.Discoveryengine.V1alpha.DataStore.ContentConfig,
    json_name: "contentConfig",
    enum: true,
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :idp_config, 21,
    type: Google.Cloud.Discoveryengine.V1alpha.IdpConfig,
    json_name: "idpConfig",
    deprecated: false

  field :acl_enabled, 24, type: :bool, json_name: "aclEnabled", deprecated: false

  field :document_processing_config, 27,
    type: Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig,
    json_name: "documentProcessingConfig"

  field :starting_schema, 28,
    type: Google.Cloud.Discoveryengine.V1alpha.Schema,
    json_name: "startingSchema"
end