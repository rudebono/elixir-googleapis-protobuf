defmodule Google.Cloud.Tasks.V2.HttpMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :HTTP_METHOD_UNSPECIFIED
          | :POST
          | :GET
          | :HEAD
          | :PUT
          | :DELETE
          | :PATCH
          | :OPTIONS

  field :HTTP_METHOD_UNSPECIFIED, 0
  field :POST, 1
  field :GET, 2
  field :HEAD, 3
  field :PUT, 4
  field :DELETE, 5
  field :PATCH, 6
  field :OPTIONS, 7
end

defmodule Google.Cloud.Tasks.V2.HttpRequest.HeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2.HttpRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authorization_header:
            {:oauth_token, Google.Cloud.Tasks.V2.OAuthToken.t() | nil}
            | {:oidc_token, Google.Cloud.Tasks.V2.OidcToken.t() | nil},
          url: String.t(),
          http_method: Google.Cloud.Tasks.V2.HttpMethod.t(),
          headers: %{String.t() => String.t()},
          body: binary
        }

  defstruct [:authorization_header, :url, :http_method, :headers, :body]

  oneof :authorization_header, 0

  field :url, 1, type: :string

  field :http_method, 2,
    type: Google.Cloud.Tasks.V2.HttpMethod,
    enum: true,
    json_name: "httpMethod"

  field :headers, 3,
    repeated: true,
    type: Google.Cloud.Tasks.V2.HttpRequest.HeadersEntry,
    map: true

  field :body, 4, type: :bytes
  field :oauth_token, 5, type: Google.Cloud.Tasks.V2.OAuthToken, json_name: "oauthToken", oneof: 0
  field :oidc_token, 6, type: Google.Cloud.Tasks.V2.OidcToken, json_name: "oidcToken", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2.AppEngineHttpRequest.HeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2.AppEngineHttpRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_method: Google.Cloud.Tasks.V2.HttpMethod.t(),
          app_engine_routing: Google.Cloud.Tasks.V2.AppEngineRouting.t() | nil,
          relative_uri: String.t(),
          headers: %{String.t() => String.t()},
          body: binary
        }

  defstruct [:http_method, :app_engine_routing, :relative_uri, :headers, :body]

  field :http_method, 1,
    type: Google.Cloud.Tasks.V2.HttpMethod,
    enum: true,
    json_name: "httpMethod"

  field :app_engine_routing, 2,
    type: Google.Cloud.Tasks.V2.AppEngineRouting,
    json_name: "appEngineRouting"

  field :relative_uri, 3, type: :string, json_name: "relativeUri"

  field :headers, 4,
    repeated: true,
    type: Google.Cloud.Tasks.V2.AppEngineHttpRequest.HeadersEntry,
    map: true

  field :body, 5, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2.AppEngineRouting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          version: String.t(),
          instance: String.t(),
          host: String.t()
        }

  defstruct [:service, :version, :instance, :host]

  field :service, 1, type: :string
  field :version, 2, type: :string
  field :instance, 3, type: :string
  field :host, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2.OAuthToken do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account_email: String.t(),
          scope: String.t()
        }

  defstruct [:service_account_email, :scope]

  field :service_account_email, 1, type: :string, json_name: "serviceAccountEmail"
  field :scope, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Tasks.V2.OidcToken do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account_email: String.t(),
          audience: String.t()
        }

  defstruct [:service_account_email, :audience]

  field :service_account_email, 1, type: :string, json_name: "serviceAccountEmail"
  field :audience, 2, type: :string

  def transform_module(), do: nil
end
