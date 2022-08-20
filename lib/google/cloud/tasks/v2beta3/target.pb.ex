defmodule Google.Cloud.Tasks.V2beta3.HttpMethod do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :HTTP_METHOD_UNSPECIFIED, 0
  field :POST, 1
  field :GET, 2
  field :HEAD, 3
  field :PUT, 4
  field :DELETE, 5
  field :PATCH, 6
  field :OPTIONS, 7
end

defmodule Google.Cloud.Tasks.V2beta3.PullMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :payload, 1, type: :bytes
  field :tag, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.HttpRequest.HeadersEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.HttpRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :authorization_header, 0

  field :url, 1, type: :string

  field :http_method, 2,
    type: Google.Cloud.Tasks.V2beta3.HttpMethod,
    json_name: "httpMethod",
    enum: true

  field :headers, 3,
    repeated: true,
    type: Google.Cloud.Tasks.V2beta3.HttpRequest.HeadersEntry,
    map: true

  field :body, 4, type: :bytes

  field :oauth_token, 5,
    type: Google.Cloud.Tasks.V2beta3.OAuthToken,
    json_name: "oauthToken",
    oneof: 0

  field :oidc_token, 6,
    type: Google.Cloud.Tasks.V2beta3.OidcToken,
    json_name: "oidcToken",
    oneof: 0
end

defmodule Google.Cloud.Tasks.V2beta3.AppEngineHttpQueue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :app_engine_routing_override, 1,
    type: Google.Cloud.Tasks.V2beta3.AppEngineRouting,
    json_name: "appEngineRoutingOverride"
end

defmodule Google.Cloud.Tasks.V2beta3.AppEngineHttpRequest.HeadersEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.AppEngineHttpRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :http_method, 1,
    type: Google.Cloud.Tasks.V2beta3.HttpMethod,
    json_name: "httpMethod",
    enum: true

  field :app_engine_routing, 2,
    type: Google.Cloud.Tasks.V2beta3.AppEngineRouting,
    json_name: "appEngineRouting"

  field :relative_uri, 3, type: :string, json_name: "relativeUri"

  field :headers, 4,
    repeated: true,
    type: Google.Cloud.Tasks.V2beta3.AppEngineHttpRequest.HeadersEntry,
    map: true

  field :body, 5, type: :bytes
end

defmodule Google.Cloud.Tasks.V2beta3.AppEngineRouting do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 1, type: :string
  field :version, 2, type: :string
  field :instance, 3, type: :string
  field :host, 4, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.OAuthToken do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service_account_email, 1, type: :string, json_name: "serviceAccountEmail"
  field :scope, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.OidcToken do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service_account_email, 1, type: :string, json_name: "serviceAccountEmail"
  field :audience, 2, type: :string
end