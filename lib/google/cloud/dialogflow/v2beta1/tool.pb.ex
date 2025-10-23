defmodule Google.Cloud.Dialogflow.V2beta1.Tool.ConfirmationRequirement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONFIRMATION_REQUIREMENT_UNSPECIFIED, 0
  field :REQUIRED, 1
  field :NOT_REQUIRED, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.MethodType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :METHOD_TYPE_UNSPECIFIED, 0
  field :GET, 1
  field :POST, 2
  field :PUT, 3
  field :DELETE, 4
  field :PATCH, 5
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.ConnectorTool.Action.EntityOperation.OperationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :LIST, 1
  field :GET, 2
  field :CREATE, 3
  field :UPDATE, 4
  field :DELETE, 5
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.RequestLocation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :REQUEST_LOCATION_UNSPECIFIED, 0
  field :HEADER, 1
  field :QUERY_STRING, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.OAuthConfig.OauthGrantType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OAUTH_GRANT_TYPE_UNSPECIFIED, 0
  field :CLIENT_CREDENTIAL, 1
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.ServiceAgentAuthConfig.ServiceAgentAuth do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SERVICE_AGENT_AUTH_UNSPECIFIED, 0
  field :ID_TOKEN, 1
  field :ACCESS_TOKEN, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateToolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :tool, 2, type: Google.Cloud.Dialogflow.V2beta1.Tool, deprecated: false
  field :tool_id, 3, type: :string, json_name: "toolId", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetToolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListToolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListToolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tools, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Tool
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteToolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateToolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tool, 1, type: Google.Cloud.Dialogflow.V2beta1.Tool, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.ExtensionTool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.FunctionTool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input_schema, 1,
    type: Google.Protobuf.Struct,
    json_name: "inputSchema",
    deprecated: false

  field :output_schema, 2,
    type: Google.Protobuf.Struct,
    json_name: "outputSchema",
    deprecated: false

  field :method_type, 4,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.MethodType,
    json_name: "methodType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.OpenApiTool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :schema, 0

  field :text_schema, 1, type: :string, json_name: "textSchema", oneof: 0, deprecated: false

  field :authentication, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.Authentication,
    deprecated: false

  field :tls_config, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.TLSConfig,
    json_name: "tlsConfig",
    deprecated: false

  field :service_directory_config, 4,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.ServiceDirectoryConfig,
    json_name: "serviceDirectoryConfig",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.ConnectorTool.Action.EntityOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entity_id, 1, type: :string, json_name: "entityId", deprecated: false

  field :operation, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.ConnectorTool.Action.EntityOperation.OperationType,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.ConnectorTool.Action do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :action_spec, 0

  field :connection_action_id, 4, type: :string, json_name: "connectionActionId", oneof: 0

  field :entity_operation, 5,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.ConnectorTool.Action.EntityOperation,
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

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.ConnectorTool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :actions, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.ConnectorTool.Action,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.ApiKeyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key_name, 1, type: :string, json_name: "keyName", deprecated: false
  field :api_key, 2, type: :string, json_name: "apiKey", deprecated: false

  field :secret_version_for_api_key, 4,
    type: :string,
    json_name: "secretVersionForApiKey",
    deprecated: false

  field :request_location, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.RequestLocation,
    json_name: "requestLocation",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.OAuthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :oauth_grant_type, 1,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.OAuthConfig.OauthGrantType,
    json_name: "oauthGrantType",
    enum: true,
    deprecated: false

  field :client_id, 2, type: :string, json_name: "clientId", deprecated: false
  field :client_secret, 3, type: :string, json_name: "clientSecret", deprecated: false

  field :secret_version_for_client_secret, 6,
    type: :string,
    json_name: "secretVersionForClientSecret",
    deprecated: false

  field :token_endpoint, 4, type: :string, json_name: "tokenEndpoint", deprecated: false
  field :scopes, 5, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.ServiceAgentAuthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_agent_auth, 1,
    type:
      Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.ServiceAgentAuthConfig.ServiceAgentAuth,
    json_name: "serviceAgentAuth",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.BearerTokenConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :token, 1, type: :string, deprecated: false

  field :secret_version_for_token, 2,
    type: :string,
    json_name: "secretVersionForToken",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.Authentication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :auth_config, 0

  field :api_key_config, 1,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.ApiKeyConfig,
    json_name: "apiKeyConfig",
    oneof: 0

  field :oauth_config, 2,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.OAuthConfig,
    json_name: "oauthConfig",
    oneof: 0

  field :service_agent_auth_config, 3,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.ServiceAgentAuthConfig,
    json_name: "serviceAgentAuthConfig",
    oneof: 0

  field :bearer_token_config, 4,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.Authentication.BearerTokenConfig,
    json_name: "bearerTokenConfig",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.TLSConfig.CACert do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :cert, 2, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.TLSConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ca_certs, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.TLSConfig.CACert,
    json_name: "caCerts",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.ServiceDirectoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool.ActionConfirmationRequirementEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Dialogflow.V2beta1.Tool.ConfirmationRequirement, enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :specification, 0

  field :name, 1, type: :string, deprecated: false
  field :tool_key, 2, type: :string, json_name: "toolKey", deprecated: false
  field :display_name, 19, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :action_confirmation_requirement, 17,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.ActionConfirmationRequirementEntry,
    json_name: "actionConfirmationRequirement",
    map: true,
    deprecated: false

  field :extension_spec, 4,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.ExtensionTool,
    json_name: "extensionSpec",
    oneof: 0,
    deprecated: true

  field :function_spec, 13,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.FunctionTool,
    json_name: "functionSpec",
    oneof: 0

  field :connector_spec, 18,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.ConnectorTool,
    json_name: "connectorSpec",
    oneof: 0

  field :open_api_spec, 20,
    type: Google.Cloud.Dialogflow.V2beta1.Tool.OpenApiTool,
    json_name: "openApiSpec",
    oneof: 0

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :satisfies_pzs, 14,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 15,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzi",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tools.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.Tools",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateTool,
      Google.Cloud.Dialogflow.V2beta1.CreateToolRequest,
      Google.Cloud.Dialogflow.V2beta1.Tool

  rpc :GetTool,
      Google.Cloud.Dialogflow.V2beta1.GetToolRequest,
      Google.Cloud.Dialogflow.V2beta1.Tool

  rpc :ListTools,
      Google.Cloud.Dialogflow.V2beta1.ListToolsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListToolsResponse

  rpc :DeleteTool, Google.Cloud.Dialogflow.V2beta1.DeleteToolRequest, Google.Protobuf.Empty

  rpc :UpdateTool,
      Google.Cloud.Dialogflow.V2beta1.UpdateToolRequest,
      Google.Cloud.Dialogflow.V2beta1.Tool
end

defmodule Google.Cloud.Dialogflow.V2beta1.Tools.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Tools.Service
end
