defmodule Google.Cloud.Aiplatform.V1beta1.HttpElementLocation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HTTP_IN_UNSPECIFIED, 0
  field :HTTP_IN_QUERY, 1
  field :HTTP_IN_HEADER, 2
  field :HTTP_IN_PATH, 3
  field :HTTP_IN_BODY, 4
  field :HTTP_IN_COOKIE, 5
end

defmodule Google.Cloud.Aiplatform.V1beta1.AuthType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AUTH_TYPE_UNSPECIFIED, 0
  field :NO_AUTH, 1
  field :API_KEY_AUTH, 2
  field :HTTP_BASIC_AUTH, 3
  field :GOOGLE_SERVICE_ACCOUNT_AUTH, 4
  field :OAUTH, 6
  field :OIDC_AUTH, 8
end

defmodule Google.Cloud.Aiplatform.V1beta1.Extension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 7, type: :string, deprecated: false
  field :manifest, 9, type: Google.Cloud.Aiplatform.V1beta1.ExtensionManifest, deprecated: false

  field :extension_operations, 11,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ExtensionOperation,
    json_name: "extensionOperations",
    deprecated: false

  field :runtime_config, 13,
    type: Google.Cloud.Aiplatform.V1beta1.RuntimeConfig,
    json_name: "runtimeConfig",
    deprecated: false

  field :tool_use_examples, 15,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ToolUseExample,
    json_name: "toolUseExamples",
    deprecated: false

  field :private_service_connect_config, 16,
    type: Google.Cloud.Aiplatform.V1beta1.ExtensionPrivateServiceConnectConfig,
    json_name: "privateServiceConnectConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExtensionManifest.ApiSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :api_spec, 0

  field :open_api_yaml, 1, type: :string, json_name: "openApiYaml", oneof: 0
  field :open_api_gcs_uri, 2, type: :string, json_name: "openApiGcsUri", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExtensionManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :api_spec, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ExtensionManifest.ApiSpec,
    json_name: "apiSpec",
    deprecated: false

  field :auth_config, 5,
    type: Google.Cloud.Aiplatform.V1beta1.AuthConfig,
    json_name: "authConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExtensionOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :operation_id, 1, type: :string, json_name: "operationId"

  field :function_declaration, 3,
    type: Google.Cloud.Aiplatform.V1beta1.FunctionDeclaration,
    json_name: "functionDeclaration",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AuthConfig.ApiKeyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :api_key_secret, 2, type: :string, json_name: "apiKeySecret", deprecated: false

  field :http_element_location, 3,
    type: Google.Cloud.Aiplatform.V1beta1.HttpElementLocation,
    json_name: "httpElementLocation",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AuthConfig.HttpBasicAuthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :credential_secret, 2, type: :string, json_name: "credentialSecret", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AuthConfig.GoogleServiceAccountConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_account, 1, type: :string, json_name: "serviceAccount", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.AuthConfig.OauthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :oauth_config, 0

  field :access_token, 1, type: :string, json_name: "accessToken", oneof: 0
  field :service_account, 2, type: :string, json_name: "serviceAccount", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.AuthConfig.OidcConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :oidc_config, 0

  field :id_token, 1, type: :string, json_name: "idToken", oneof: 0
  field :service_account, 2, type: :string, json_name: "serviceAccount", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.AuthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :auth_config, 0

  field :api_key_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.AuthConfig.ApiKeyConfig,
    json_name: "apiKeyConfig",
    oneof: 0

  field :http_basic_auth_config, 3,
    type: Google.Cloud.Aiplatform.V1beta1.AuthConfig.HttpBasicAuthConfig,
    json_name: "httpBasicAuthConfig",
    oneof: 0

  field :google_service_account_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.AuthConfig.GoogleServiceAccountConfig,
    json_name: "googleServiceAccountConfig",
    oneof: 0

  field :oauth_config, 5,
    type: Google.Cloud.Aiplatform.V1beta1.AuthConfig.OauthConfig,
    json_name: "oauthConfig",
    oneof: 0

  field :oidc_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.AuthConfig.OidcConfig,
    json_name: "oidcConfig",
    oneof: 0

  field :auth_type, 101,
    type: Google.Cloud.Aiplatform.V1beta1.AuthType,
    json_name: "authType",
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.RuntimeConfig.CodeInterpreterRuntimeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_input_gcs_bucket, 1,
    type: :string,
    json_name: "fileInputGcsBucket",
    deprecated: false

  field :file_output_gcs_bucket, 2,
    type: :string,
    json_name: "fileOutputGcsBucket",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RuntimeConfig.VertexAISearchRuntimeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :serving_config_name, 1, type: :string, json_name: "servingConfigName", deprecated: false
  field :engine_id, 2, type: :string, json_name: "engineId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RuntimeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :GoogleFirstPartyExtensionConfig, 0

  field :code_interpreter_runtime_config, 2,
    type: Google.Cloud.Aiplatform.V1beta1.RuntimeConfig.CodeInterpreterRuntimeConfig,
    json_name: "codeInterpreterRuntimeConfig",
    oneof: 0

  field :vertex_ai_search_runtime_config, 6,
    type: Google.Cloud.Aiplatform.V1beta1.RuntimeConfig.VertexAISearchRuntimeConfig,
    json_name: "vertexAiSearchRuntimeConfig",
    oneof: 0

  field :default_params, 4,
    type: Google.Protobuf.Struct,
    json_name: "defaultParams",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExtensionPrivateServiceConnectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service_directory, 1, type: :string, json_name: "serviceDirectory", deprecated: false
end
