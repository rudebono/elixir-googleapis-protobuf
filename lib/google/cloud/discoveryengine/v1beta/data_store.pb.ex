defmodule Google.Cloud.Discoveryengine.V1beta.DataStore.ContentConfig do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CONTENT_CONFIG_UNSPECIFIED, 0
  field :NO_CONTENT, 1
  field :CONTENT_REQUIRED, 2
  field :PUBLIC_WEBSITE, 3
end

defmodule Google.Cloud.Discoveryengine.V1beta.DataStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :industry_vertical, 3,
    type: Google.Cloud.Discoveryengine.V1beta.IndustryVertical,
    json_name: "industryVertical",
    enum: true,
    deprecated: false

  field :solution_types, 5,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SolutionType,
    json_name: "solutionTypes",
    enum: true

  field :default_schema_id, 7, type: :string, json_name: "defaultSchemaId", deprecated: false

  field :content_config, 6,
    type: Google.Cloud.Discoveryengine.V1beta.DataStore.ContentConfig,
    json_name: "contentConfig",
    enum: true,
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :language_info, 14,
    type: Google.Cloud.Discoveryengine.V1beta.LanguageInfo,
    json_name: "languageInfo"

  field :document_processing_config, 27,
    type: Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig,
    json_name: "documentProcessingConfig"

  field :starting_schema, 28,
    type: Google.Cloud.Discoveryengine.V1beta.Schema,
    json_name: "startingSchema"
end

defmodule Google.Cloud.Discoveryengine.V1beta.LanguageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"

  field :normalized_language_code, 2,
    type: :string,
    json_name: "normalizedLanguageCode",
    deprecated: false

  field :language, 3, type: :string, deprecated: false
  field :region, 4, type: :string, deprecated: false
end