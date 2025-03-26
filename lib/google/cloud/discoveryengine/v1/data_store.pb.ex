defmodule Google.Cloud.Discoveryengine.V1.DataStore.ContentConfig do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONTENT_CONFIG_UNSPECIFIED, 0
  field :NO_CONTENT, 1
  field :CONTENT_REQUIRED, 2
  field :PUBLIC_WEBSITE, 3
  field :GOOGLE_WORKSPACE, 4
end

defmodule Google.Cloud.Discoveryengine.V1.WorkspaceConfig.Type do
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
  field :GOOGLE_PEOPLE, 8
end

defmodule Google.Cloud.Discoveryengine.V1.DataStore.BillingEstimation do
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

defmodule Google.Cloud.Discoveryengine.V1.DataStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :industry_vertical, 3,
    type: Google.Cloud.Discoveryengine.V1.IndustryVertical,
    json_name: "industryVertical",
    enum: true,
    deprecated: false

  field :solution_types, 5,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SolutionType,
    json_name: "solutionTypes",
    enum: true

  field :default_schema_id, 7, type: :string, json_name: "defaultSchemaId", deprecated: false

  field :content_config, 6,
    type: Google.Cloud.Discoveryengine.V1.DataStore.ContentConfig,
    json_name: "contentConfig",
    enum: true,
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :advanced_site_search_config, 12,
    type: Google.Cloud.Discoveryengine.V1.AdvancedSiteSearchConfig,
    json_name: "advancedSiteSearchConfig",
    deprecated: false

  field :billing_estimation, 23,
    type: Google.Cloud.Discoveryengine.V1.DataStore.BillingEstimation,
    json_name: "billingEstimation",
    deprecated: false

  field :workspace_config, 25,
    type: Google.Cloud.Discoveryengine.V1.WorkspaceConfig,
    json_name: "workspaceConfig"

  field :document_processing_config, 27,
    type: Google.Cloud.Discoveryengine.V1.DocumentProcessingConfig,
    json_name: "documentProcessingConfig"

  field :starting_schema, 28,
    type: Google.Cloud.Discoveryengine.V1.Schema,
    json_name: "startingSchema"
end

defmodule Google.Cloud.Discoveryengine.V1.AdvancedSiteSearchConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :disable_initial_index, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "disableInitialIndex"

  field :disable_automatic_refresh, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "disableAutomaticRefresh"
end

defmodule Google.Cloud.Discoveryengine.V1.WorkspaceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Google.Cloud.Discoveryengine.V1.WorkspaceConfig.Type, enum: true
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
