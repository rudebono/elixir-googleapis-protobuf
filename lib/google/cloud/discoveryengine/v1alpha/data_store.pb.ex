defmodule Google.Cloud.Discoveryengine.V1alpha.DataStore.ContentConfig do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONTENT_CONFIG_UNSPECIFIED, 0
  field :NO_CONTENT, 1
  field :CONTENT_REQUIRED, 2
  field :PUBLIC_WEBSITE, 3
  field :GOOGLE_WORKSPACE, 4
end

defmodule Google.Cloud.Discoveryengine.V1alpha.WorkspaceConfig.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :GOOGLE_DRIVE, 1
  field :GOOGLE_MAIL, 2
  field :GOOGLE_SITES, 3
  field :GOOGLE_CALENDAR, 4
  field :GOOGLE_CHAT, 5
  field :GOOGLE_GROUPS, 6
  field :GOOGLE_KEEP, 7
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DataStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :language_info, 14,
    type: Google.Cloud.Discoveryengine.V1alpha.LanguageInfo,
    json_name: "languageInfo"

  field :idp_config, 21,
    type: Google.Cloud.Discoveryengine.V1alpha.IdpConfig,
    json_name: "idpConfig",
    deprecated: false

  field :acl_enabled, 24, type: :bool, json_name: "aclEnabled", deprecated: false

  field :workspace_config, 25,
    type: Google.Cloud.Discoveryengine.V1alpha.WorkspaceConfig,
    json_name: "workspaceConfig"

  field :document_processing_config, 27,
    type: Google.Cloud.Discoveryengine.V1alpha.DocumentProcessingConfig,
    json_name: "documentProcessingConfig"

  field :starting_schema, 28,
    type: Google.Cloud.Discoveryengine.V1alpha.Schema,
    json_name: "startingSchema"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.LanguageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"

  field :normalized_language_code, 2,
    type: :string,
    json_name: "normalizedLanguageCode",
    deprecated: false

  field :language, 3, type: :string, deprecated: false
  field :region, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.WorkspaceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Discoveryengine.V1alpha.WorkspaceConfig.Type, enum: true
  field :dasher_customer_id, 2, type: :string, json_name: "dasherCustomerId"
end
