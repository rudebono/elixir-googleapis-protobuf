defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportToolsRequest.DataFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DATA_FORMAT_UNSPECIFIED, 0
  field :BLOB, 1
  field :JSON, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ToolType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TOOL_TYPE_UNSPECIFIED, 0
  field :CUSTOMIZED_TOOL, 1
  field :BUILTIN_TOOL, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ConnectorTool.Action.EntityOperation.OperationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :LIST, 1
  field :GET, 2
  field :CREATE, 3
  field :UPDATE, 4
  field :DELETE, 5
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.RequestLocation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REQUEST_LOCATION_UNSPECIFIED, 0
  field :HEADER, 1
  field :QUERY_STRING, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.OAuthConfig.OauthGrantType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OAUTH_GRANT_TYPE_UNSPECIFIED, 0
  field :CLIENT_CREDENTIAL, 1
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.ServiceAgentAuthConfig.ServiceAgentAuth do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SERVICE_AGENT_AUTH_UNSPECIFIED, 0
  field :ID_TOKEN, 1
  field :ACCESS_TOKEN, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateToolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :tool, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListToolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListToolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tools, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetToolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportToolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :parent, 1, type: :string, deprecated: false
  field :tools, 2, repeated: true, type: :string, deprecated: false
  field :tools_uri, 3, type: :string, json_name: "toolsUri", oneof: 0, deprecated: false

  field :tools_content_inline, 4,
    type: :bool,
    json_name: "toolsContentInline",
    oneof: 0,
    deprecated: false

  field :data_format, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ExportToolsRequest.DataFormat,
    json_name: "dataFormat",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportToolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :tools, 0

  field :tools_uri, 1, type: :string, json_name: "toolsUri", oneof: 0

  field :tools_content, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.InlineDestination,
    json_name: "toolsContent",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateToolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tool, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteToolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.OpenApiTool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :schema, 0

  field :text_schema, 1, type: :string, json_name: "textSchema", oneof: 0, deprecated: false

  field :authentication, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication,
    deprecated: false

  field :tls_config, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.TLSConfig,
    json_name: "tlsConfig",
    deprecated: false

  field :service_directory_config, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ServiceDirectoryConfig,
    json_name: "serviceDirectoryConfig",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.DataStoreTool.FallbackPrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.DataStoreTool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data_store_connections, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.DataStoreConnection,
    json_name: "dataStoreConnections",
    deprecated: false

  field :fallback_prompt, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.DataStoreTool.FallbackPrompt,
    json_name: "fallbackPrompt",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ExtensionTool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.FunctionTool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :input_schema, 1,
    type: Google.Protobuf.Struct,
    json_name: "inputSchema",
    deprecated: false

  field :output_schema, 2,
    type: Google.Protobuf.Struct,
    json_name: "outputSchema",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ConnectorTool.Action.EntityOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entity_id, 1, type: :string, json_name: "entityId", deprecated: false

  field :operation, 2,
    type:
      Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ConnectorTool.Action.EntityOperation.OperationType,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ConnectorTool.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :action_spec, 0

  field :connection_action_id, 4, type: :string, json_name: "connectionActionId", oneof: 0

  field :entity_operation, 5,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ConnectorTool.Action.EntityOperation,
    json_name: "entityOperation",
    oneof: 0

  field :input_fields, 2,
    repeated: true,
    type: :string,
    json_name: "inputFields",
    deprecated: false

  field :output_fields, 3,
    repeated: true,
    type: :string,
    json_name: "outputFields",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ConnectorTool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :actions, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ConnectorTool.Action,
    deprecated: false

  field :end_user_auth_config, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.EndUserAuthConfig,
    json_name: "endUserAuthConfig",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.ApiKeyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key_name, 1, type: :string, json_name: "keyName", deprecated: false
  field :api_key, 2, type: :string, json_name: "apiKey", deprecated: false

  field :request_location, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.RequestLocation,
    json_name: "requestLocation",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.OAuthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :oauth_grant_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.OAuthConfig.OauthGrantType,
    json_name: "oauthGrantType",
    enum: true,
    deprecated: false

  field :client_id, 2, type: :string, json_name: "clientId", deprecated: false
  field :client_secret, 3, type: :string, json_name: "clientSecret", deprecated: false
  field :token_endpoint, 4, type: :string, json_name: "tokenEndpoint", deprecated: false
  field :scopes, 5, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.ServiceAgentAuthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_agent_auth, 1,
    type:
      Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.ServiceAgentAuthConfig.ServiceAgentAuth,
    json_name: "serviceAgentAuth",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.BearerTokenConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :auth_config, 0

  field :api_key_config, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.ApiKeyConfig,
    json_name: "apiKeyConfig",
    oneof: 0

  field :oauth_config, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.OAuthConfig,
    json_name: "oauthConfig",
    oneof: 0

  field :service_agent_auth_config, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.ServiceAgentAuthConfig,
    json_name: "serviceAgentAuthConfig",
    oneof: 0

  field :bearer_token_config, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.Authentication.BearerTokenConfig,
    json_name: "bearerTokenConfig",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.TLSConfig.CACert do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :cert, 2, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.TLSConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ca_certs, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.TLSConfig.CACert,
    json_name: "caCerts",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ServiceDirectoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.EndUserAuthConfig.Oauth2AuthCodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :oauth_token, 1, type: :string, json_name: "oauthToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.EndUserAuthConfig.Oauth2JwtBearerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :issuer, 1, type: :string, deprecated: false
  field :subject, 2, type: :string, deprecated: false
  field :client_key, 3, type: :string, json_name: "clientKey", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool.EndUserAuthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :end_user_auth_config, 0

  field :oauth2_auth_code_config, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.EndUserAuthConfig.Oauth2AuthCodeConfig,
    json_name: "oauth2AuthCodeConfig",
    oneof: 0

  field :oauth2_jwt_bearer_config, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.EndUserAuthConfig.Oauth2JwtBearerConfig,
    json_name: "oauth2JwtBearerConfig",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :specification, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :open_api_spec, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.OpenApiTool,
    json_name: "openApiSpec",
    oneof: 0

  field :data_store_spec, 8,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.DataStoreTool,
    json_name: "dataStoreSpec",
    oneof: 0

  field :extension_spec, 11,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ExtensionTool,
    json_name: "extensionSpec",
    oneof: 0

  field :function_spec, 13,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.FunctionTool,
    json_name: "functionSpec",
    oneof: 0

  field :connector_spec, 15,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ConnectorTool,
    json_name: "connectorSpec",
    oneof: 0

  field :tool_type, 12,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool.ToolType,
    json_name: "toolType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListToolVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListToolVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tool_versions, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ToolVersion,
    json_name: "toolVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateToolVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tool_version, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ToolVersion,
    json_name: "toolVersion",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetToolVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteToolVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RestoreToolVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.RestoreToolVersionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tool, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ToolVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :tool, 3, type: Google.Cloud.Dialogflow.Cx.V3beta1.Tool, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ExportToolsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tools.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Tools",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateTool,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateToolRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Tool

  rpc :ListTools,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListToolsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListToolsResponse

  rpc :ExportTools,
      Google.Cloud.Dialogflow.Cx.V3beta1.ExportToolsRequest,
      Google.Longrunning.Operation

  rpc :GetTool,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetToolRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Tool

  rpc :UpdateTool,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateToolRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Tool

  rpc :DeleteTool, Google.Cloud.Dialogflow.Cx.V3beta1.DeleteToolRequest, Google.Protobuf.Empty

  rpc :ListToolVersions,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListToolVersionsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListToolVersionsResponse

  rpc :CreateToolVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateToolVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ToolVersion

  rpc :GetToolVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetToolVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ToolVersion

  rpc :DeleteToolVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteToolVersionRequest,
      Google.Protobuf.Empty

  rpc :RestoreToolVersion,
      Google.Cloud.Dialogflow.Cx.V3beta1.RestoreToolVersionRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.RestoreToolVersionResponse
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Tools.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Tools.Service
end
