defmodule Google.Cloud.Connectors.V1.AuthType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AUTH_TYPE_UNSPECIFIED, 0
  field :USER_PASSWORD, 1
  field :OAUTH2_JWT_BEARER, 2
  field :OAUTH2_CLIENT_CREDENTIALS, 3
  field :SSH_PUBLIC_KEY, 4
  field :OAUTH2_AUTH_CODE_FLOW, 5
end

defmodule Google.Cloud.Connectors.V1.AuthConfig.UserPassword do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :username, 1, type: :string
  field :password, 2, type: Google.Cloud.Connectors.V1.Secret
end

defmodule Google.Cloud.Connectors.V1.AuthConfig.Oauth2JwtBearer.JwtClaims do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :issuer, 1, type: :string
  field :subject, 2, type: :string
  field :audience, 3, type: :string
end

defmodule Google.Cloud.Connectors.V1.AuthConfig.Oauth2JwtBearer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :client_key, 1, type: Google.Cloud.Connectors.V1.Secret, json_name: "clientKey"

  field :jwt_claims, 2,
    type: Google.Cloud.Connectors.V1.AuthConfig.Oauth2JwtBearer.JwtClaims,
    json_name: "jwtClaims"
end

defmodule Google.Cloud.Connectors.V1.AuthConfig.Oauth2ClientCredentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId"
  field :client_secret, 2, type: Google.Cloud.Connectors.V1.Secret, json_name: "clientSecret"
end

defmodule Google.Cloud.Connectors.V1.AuthConfig.SshPublicKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :username, 1, type: :string
  field :ssh_client_cert, 3, type: Google.Cloud.Connectors.V1.Secret, json_name: "sshClientCert"
  field :cert_type, 4, type: :string, json_name: "certType"

  field :ssh_client_cert_pass, 5,
    type: Google.Cloud.Connectors.V1.Secret,
    json_name: "sshClientCertPass"
end

defmodule Google.Cloud.Connectors.V1.AuthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type, 0

  field :auth_type, 1,
    type: Google.Cloud.Connectors.V1.AuthType,
    json_name: "authType",
    enum: true

  field :user_password, 2,
    type: Google.Cloud.Connectors.V1.AuthConfig.UserPassword,
    json_name: "userPassword",
    oneof: 0

  field :oauth2_jwt_bearer, 3,
    type: Google.Cloud.Connectors.V1.AuthConfig.Oauth2JwtBearer,
    json_name: "oauth2JwtBearer",
    oneof: 0

  field :oauth2_client_credentials, 4,
    type: Google.Cloud.Connectors.V1.AuthConfig.Oauth2ClientCredentials,
    json_name: "oauth2ClientCredentials",
    oneof: 0

  field :ssh_public_key, 6,
    type: Google.Cloud.Connectors.V1.AuthConfig.SshPublicKey,
    json_name: "sshPublicKey",
    oneof: 0

  field :additional_variables, 5,
    repeated: true,
    type: Google.Cloud.Connectors.V1.ConfigVariable,
    json_name: "additionalVariables"
end

defmodule Google.Cloud.Connectors.V1.AuthConfigTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :auth_type, 1,
    type: Google.Cloud.Connectors.V1.AuthType,
    json_name: "authType",
    enum: true

  field :config_variable_templates, 2,
    repeated: true,
    type: Google.Cloud.Connectors.V1.ConfigVariableTemplate,
    json_name: "configVariableTemplates"

  field :display_name, 3, type: :string, json_name: "displayName"
  field :description, 4, type: :string
end
