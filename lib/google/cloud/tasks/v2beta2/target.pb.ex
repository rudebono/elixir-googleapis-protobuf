defmodule Google.Cloud.Tasks.V2beta2.HttpMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :HTTP_METHOD_UNSPECIFIED, 0
  field :POST, 1
  field :GET, 2
  field :HEAD, 3
  field :PUT, 4
  field :DELETE, 5
  field :PATCH, 6
  field :OPTIONS, 7
end

defmodule Google.Cloud.Tasks.V2beta2.UriOverride.Scheme do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SCHEME_UNSPECIFIED, 0
  field :HTTP, 1
  field :HTTPS, 2
end

defmodule Google.Cloud.Tasks.V2beta2.UriOverride.UriOverrideEnforceMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :URI_OVERRIDE_ENFORCE_MODE_UNSPECIFIED, 0
  field :IF_NOT_EXISTS, 1
  field :ALWAYS, 2
end

defmodule Google.Cloud.Tasks.V2beta2.PullTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Tasks.V2beta2.PullMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :payload, 1, type: :bytes
  field :tag, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta2.AppEngineHttpTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :app_engine_routing_override, 1,
    type: Google.Cloud.Tasks.V2beta2.AppEngineRouting,
    json_name: "appEngineRoutingOverride"
end

defmodule Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest.HeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :http_method, 1,
    type: Google.Cloud.Tasks.V2beta2.HttpMethod,
    json_name: "httpMethod",
    enum: true

  field :app_engine_routing, 2,
    type: Google.Cloud.Tasks.V2beta2.AppEngineRouting,
    json_name: "appEngineRouting"

  field :relative_url, 3, type: :string, json_name: "relativeUrl"

  field :headers, 4,
    repeated: true,
    type: Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest.HeadersEntry,
    map: true

  field :payload, 5, type: :bytes
end

defmodule Google.Cloud.Tasks.V2beta2.AppEngineRouting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :service, 1, type: :string
  field :version, 2, type: :string
  field :instance, 3, type: :string
  field :host, 4, type: :string
end

defmodule Google.Cloud.Tasks.V2beta2.HttpRequest.HeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta2.HttpRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :authorization_header, 0

  field :url, 1, type: :string, deprecated: false

  field :http_method, 2,
    type: Google.Cloud.Tasks.V2beta2.HttpMethod,
    json_name: "httpMethod",
    enum: true

  field :headers, 3,
    repeated: true,
    type: Google.Cloud.Tasks.V2beta2.HttpRequest.HeadersEntry,
    map: true

  field :body, 4, type: :bytes

  field :oauth_token, 5,
    type: Google.Cloud.Tasks.V2beta2.OAuthToken,
    json_name: "oauthToken",
    oneof: 0

  field :oidc_token, 6,
    type: Google.Cloud.Tasks.V2beta2.OidcToken,
    json_name: "oidcToken",
    oneof: 0
end

defmodule Google.Cloud.Tasks.V2beta2.PathOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :path, 1, type: :string
end

defmodule Google.Cloud.Tasks.V2beta2.QueryOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :query_params, 1, type: :string, json_name: "queryParams"
end

defmodule Google.Cloud.Tasks.V2beta2.UriOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :scheme, 1,
    proto3_optional: true,
    type: Google.Cloud.Tasks.V2beta2.UriOverride.Scheme,
    enum: true

  field :host, 2, proto3_optional: true, type: :string
  field :port, 3, proto3_optional: true, type: :int64

  field :path_override, 4,
    type: Google.Cloud.Tasks.V2beta2.PathOverride,
    json_name: "pathOverride"

  field :query_override, 5,
    type: Google.Cloud.Tasks.V2beta2.QueryOverride,
    json_name: "queryOverride"

  field :uri_override_enforce_mode, 6,
    type: Google.Cloud.Tasks.V2beta2.UriOverride.UriOverrideEnforceMode,
    json_name: "uriOverrideEnforceMode",
    enum: true
end

defmodule Google.Cloud.Tasks.V2beta2.HttpTarget.Header do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta2.HttpTarget.HeaderOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :header, 1, type: Google.Cloud.Tasks.V2beta2.HttpTarget.Header
end

defmodule Google.Cloud.Tasks.V2beta2.HttpTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :authorization_header, 0

  field :uri_override, 1, type: Google.Cloud.Tasks.V2beta2.UriOverride, json_name: "uriOverride"

  field :http_method, 2,
    type: Google.Cloud.Tasks.V2beta2.HttpMethod,
    json_name: "httpMethod",
    enum: true

  field :header_overrides, 3,
    repeated: true,
    type: Google.Cloud.Tasks.V2beta2.HttpTarget.HeaderOverride,
    json_name: "headerOverrides"

  field :oauth_token, 5,
    type: Google.Cloud.Tasks.V2beta2.OAuthToken,
    json_name: "oauthToken",
    oneof: 0

  field :oidc_token, 6,
    type: Google.Cloud.Tasks.V2beta2.OidcToken,
    json_name: "oidcToken",
    oneof: 0
end

defmodule Google.Cloud.Tasks.V2beta2.OAuthToken do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :service_account_email, 1, type: :string, json_name: "serviceAccountEmail"
  field :scope, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta2.OidcToken do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :service_account_email, 1, type: :string, json_name: "serviceAccountEmail"
  field :audience, 2, type: :string
end