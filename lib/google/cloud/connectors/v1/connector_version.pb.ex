defmodule Google.Cloud.Connectors.V1.ConnectorVersionView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CONNECTOR_VERSION_VIEW_UNSPECIFIED, 0
  field :CONNECTOR_VERSION_VIEW_BASIC, 1
  field :CONNECTOR_VERSION_VIEW_FULL, 2
end

defmodule Google.Cloud.Connectors.V1.ExtractionRule.SourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SOURCE_TYPE_UNSPECIFIED, 0
  field :CONFIG_VARIABLE, 1
end

defmodule Google.Cloud.Connectors.V1.ConnectorVersion.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Connectors.V1.ConnectorVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Connectors.V1.ConnectorVersion.LabelsEntry,
    map: true,
    deprecated: false

  field :launch_stage, 6,
    type: Google.Cloud.Connectors.V1.LaunchStage,
    json_name: "launchStage",
    enum: true,
    deprecated: false

  field :release_version, 7, type: :string, json_name: "releaseVersion", deprecated: false

  field :auth_config_templates, 8,
    repeated: true,
    type: Google.Cloud.Connectors.V1.AuthConfigTemplate,
    json_name: "authConfigTemplates",
    deprecated: false

  field :config_variable_templates, 9,
    repeated: true,
    type: Google.Cloud.Connectors.V1.ConfigVariableTemplate,
    json_name: "configVariableTemplates",
    deprecated: false

  field :supported_runtime_features, 10,
    type: Google.Cloud.Connectors.V1.SupportedRuntimeFeatures,
    json_name: "supportedRuntimeFeatures",
    deprecated: false

  field :display_name, 11, type: :string, json_name: "displayName", deprecated: false

  field :egress_control_config, 12,
    type: Google.Cloud.Connectors.V1.EgressControlConfig,
    json_name: "egressControlConfig",
    deprecated: false

  field :role_grants, 14,
    repeated: true,
    type: Google.Cloud.Connectors.V1.RoleGrant,
    json_name: "roleGrants",
    deprecated: false

  field :role_grant, 15,
    type: Google.Cloud.Connectors.V1.RoleGrant,
    json_name: "roleGrant",
    deprecated: false

  field :ssl_config_template, 17,
    type: Google.Cloud.Connectors.V1.SslConfigTemplate,
    json_name: "sslConfigTemplate",
    deprecated: false
end

defmodule Google.Cloud.Connectors.V1.GetConnectorVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Connectors.V1.ConnectorVersionView, enum: true
end

defmodule Google.Cloud.Connectors.V1.ListConnectorVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Connectors.V1.ConnectorVersionView, enum: true
end

defmodule Google.Cloud.Connectors.V1.ListConnectorVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :connector_versions, 1,
    repeated: true,
    type: Google.Cloud.Connectors.V1.ConnectorVersion,
    json_name: "connectorVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Connectors.V1.SupportedRuntimeFeatures do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entity_apis, 1, type: :bool, json_name: "entityApis"
  field :action_apis, 2, type: :bool, json_name: "actionApis"
  field :sql_query, 3, type: :bool, json_name: "sqlQuery"
end

defmodule Google.Cloud.Connectors.V1.EgressControlConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :oneof_backends, 0

  field :backends, 1, type: :string, oneof: 0

  field :extraction_rules, 2,
    type: Google.Cloud.Connectors.V1.ExtractionRules,
    json_name: "extractionRules",
    oneof: 0
end

defmodule Google.Cloud.Connectors.V1.ExtractionRules do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :extraction_rule, 1,
    repeated: true,
    type: Google.Cloud.Connectors.V1.ExtractionRule,
    json_name: "extractionRule"
end

defmodule Google.Cloud.Connectors.V1.ExtractionRule.Source do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_type, 1,
    type: Google.Cloud.Connectors.V1.ExtractionRule.SourceType,
    json_name: "sourceType",
    enum: true

  field :field_id, 2, type: :string, json_name: "fieldId"
end

defmodule Google.Cloud.Connectors.V1.ExtractionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source, 1, type: Google.Cloud.Connectors.V1.ExtractionRule.Source
  field :extraction_regex, 2, type: :string, json_name: "extractionRegex"
end