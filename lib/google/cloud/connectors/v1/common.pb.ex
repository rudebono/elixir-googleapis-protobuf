defmodule Google.Cloud.Connectors.V1.LaunchStage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LAUNCH_STAGE_UNSPECIFIED, 0
  field :PREVIEW, 1
  field :GA, 2
  field :DEPRECATED, 3
  field :PRIVATE_PREVIEW, 5
end

defmodule Google.Cloud.Connectors.V1.ConfigVariableTemplate.ValueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :VALUE_TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :INT, 2
  field :BOOL, 3
  field :SECRET, 4
  field :ENUM, 5
  field :AUTHORIZATION_CODE, 6
end

defmodule Google.Cloud.Connectors.V1.ConfigVariableTemplate.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DEPRECATED, 2
end

defmodule Google.Cloud.Connectors.V1.RoleGrant.Principal do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PRINCIPAL_UNSPECIFIED, 0
  field :CONNECTOR_SA, 1
end

defmodule Google.Cloud.Connectors.V1.RoleGrant.Resource.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :GCP_PROJECT, 1
  field :GCP_RESOURCE, 2
  field :GCP_SECRETMANAGER_SECRET, 3
  field :GCP_SECRETMANAGER_SECRET_VERSION, 4
end

defmodule Google.Cloud.Connectors.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Connectors.V1.ConfigVariableTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string

  field :value_type, 2,
    type: Google.Cloud.Connectors.V1.ConfigVariableTemplate.ValueType,
    json_name: "valueType",
    enum: true

  field :display_name, 3, type: :string, json_name: "displayName"
  field :description, 4, type: :string
  field :validation_regex, 5, type: :string, json_name: "validationRegex"
  field :required, 6, type: :bool
  field :role_grant, 7, type: Google.Cloud.Connectors.V1.RoleGrant, json_name: "roleGrant"

  field :enum_options, 8,
    repeated: true,
    type: Google.Cloud.Connectors.V1.EnumOption,
    json_name: "enumOptions"

  field :authorization_code_link, 9,
    type: Google.Cloud.Connectors.V1.AuthorizationCodeLink,
    json_name: "authorizationCodeLink"

  field :state, 10, type: Google.Cloud.Connectors.V1.ConfigVariableTemplate.State, enum: true
  field :is_advanced, 11, type: :bool, json_name: "isAdvanced"
end

defmodule Google.Cloud.Connectors.V1.Secret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :secret_version, 1, type: :string, json_name: "secretVersion"
end

defmodule Google.Cloud.Connectors.V1.EnumOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Connectors.V1.ConfigVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :value, 0

  field :key, 1, type: :string
  field :int_value, 2, type: :int64, json_name: "intValue", oneof: 0
  field :bool_value, 3, type: :bool, json_name: "boolValue", oneof: 0
  field :string_value, 4, type: :string, json_name: "stringValue", oneof: 0

  field :secret_value, 5,
    type: Google.Cloud.Connectors.V1.Secret,
    json_name: "secretValue",
    oneof: 0
end

defmodule Google.Cloud.Connectors.V1.RoleGrant.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Connectors.V1.RoleGrant.Resource.Type, enum: true
  field :path_template, 3, type: :string, json_name: "pathTemplate"
end

defmodule Google.Cloud.Connectors.V1.RoleGrant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :principal, 1, type: Google.Cloud.Connectors.V1.RoleGrant.Principal, enum: true
  field :roles, 2, repeated: true, type: :string
  field :resource, 3, type: Google.Cloud.Connectors.V1.RoleGrant.Resource
  field :helper_text_template, 4, type: :string, json_name: "helperTextTemplate"
end

defmodule Google.Cloud.Connectors.V1.AuthorizationCodeLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
  field :scopes, 2, repeated: true, type: :string
  field :client_id, 3, type: :string, json_name: "clientId"
  field :enable_pkce, 4, type: :bool, json_name: "enablePkce"
end