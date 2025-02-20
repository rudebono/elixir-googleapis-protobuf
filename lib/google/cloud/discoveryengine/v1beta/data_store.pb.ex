defmodule Google.Cloud.Discoveryengine.V1beta.DataStore.ContentConfig do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTENT_CONFIG_UNSPECIFIED, 0
  field :NO_CONTENT, 1
  field :CONTENT_REQUIRED, 2
  field :PUBLIC_WEBSITE, 3
  field :GOOGLE_WORKSPACE, 4
end

defmodule Google.Cloud.Discoveryengine.V1beta.NaturalLanguageQueryUnderstandingConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.WorkspaceConfig.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :GOOGLE_DRIVE, 1
  field :GOOGLE_MAIL, 2
  field :GOOGLE_SITES, 3
  field :GOOGLE_CALENDAR, 4
  field :GOOGLE_CHAT, 5
  field :GOOGLE_GROUPS, 6
  field :GOOGLE_KEEP, 7
end

defmodule Google.Cloud.Discoveryengine.V1beta.DataStore.BillingEstimation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :structured_data_size, 1, type: :int64, json_name: "structuredDataSize"
  field :unstructured_data_size, 2, type: :int64, json_name: "unstructuredDataSize"
  field :website_data_size, 3, type: :int64, json_name: "websiteDataSize"

  field :structured_data_update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "structuredDataUpdateTime"

  field :unstructured_data_update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "unstructuredDataUpdateTime"

  field :website_data_update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "websiteDataUpdateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DataStore.ServingConfigDataStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :disabled_for_serving, 1, type: :bool, json_name: "disabledForServing"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DataStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  field :natural_language_query_understanding_config, 34,
    type: Google.Cloud.Discoveryengine.V1beta.NaturalLanguageQueryUnderstandingConfig,
    json_name: "naturalLanguageQueryUnderstandingConfig",
    deprecated: false

  field :billing_estimation, 23,
    type: Google.Cloud.Discoveryengine.V1beta.DataStore.BillingEstimation,
    json_name: "billingEstimation",
    deprecated: false

  field :workspace_config, 25,
    type: Google.Cloud.Discoveryengine.V1beta.WorkspaceConfig,
    json_name: "workspaceConfig"

  field :document_processing_config, 27,
    type: Google.Cloud.Discoveryengine.V1beta.DocumentProcessingConfig,
    json_name: "documentProcessingConfig"

  field :starting_schema, 28,
    type: Google.Cloud.Discoveryengine.V1beta.Schema,
    json_name: "startingSchema"

  field :serving_config_data_store, 30,
    type: Google.Cloud.Discoveryengine.V1beta.DataStore.ServingConfigDataStore,
    json_name: "servingConfigDataStore",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.LanguageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"

  field :normalized_language_code, 2,
    type: :string,
    json_name: "normalizedLanguageCode",
    deprecated: false

  field :language, 3, type: :string, deprecated: false
  field :region, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.NaturalLanguageQueryUnderstandingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :mode, 1,
    type: Google.Cloud.Discoveryengine.V1beta.NaturalLanguageQueryUnderstandingConfig.Mode,
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1beta.WorkspaceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Google.Cloud.Discoveryengine.V1beta.WorkspaceConfig.Type, enum: true
  field :dasher_customer_id, 2, type: :string, json_name: "dasherCustomerId"

  field :super_admin_service_account, 4,
    type: :string,
    json_name: "superAdminServiceAccount",
    deprecated: false

  field :super_admin_email_address, 5,
    type: :string,
    json_name: "superAdminEmailAddress",
    deprecated: false
end
