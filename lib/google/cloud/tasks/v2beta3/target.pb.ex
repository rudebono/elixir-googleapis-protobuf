defmodule Google.Cloud.Tasks.V2beta3.HttpMethod do
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

defmodule Google.Cloud.Tasks.V2beta3.PullMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: binary,
          tag: String.t()
        }

  defstruct [:payload, :tag]

  field :payload, 1, type: :bytes
  field :tag, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.HttpRequest.HeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.HttpRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authorization_header: {atom, any},
          url: String.t(),
          http_method: Google.Cloud.Tasks.V2beta3.HttpMethod.t(),
          headers: %{String.t() => String.t()},
          body: binary
        }

  defstruct [:authorization_header, :url, :http_method, :headers, :body]

  oneof :authorization_header, 0
  field :url, 1, type: :string
  field :http_method, 2, type: Google.Cloud.Tasks.V2beta3.HttpMethod, enum: true

  field :headers, 3,
    repeated: true,
    type: Google.Cloud.Tasks.V2beta3.HttpRequest.HeadersEntry,
    map: true

  field :body, 4, type: :bytes
  field :oauth_token, 5, type: Google.Cloud.Tasks.V2beta3.OAuthToken, oneof: 0
  field :oidc_token, 6, type: Google.Cloud.Tasks.V2beta3.OidcToken, oneof: 0
end

defmodule Google.Cloud.Tasks.V2beta3.AppEngineHttpQueue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_engine_routing_override: Google.Cloud.Tasks.V2beta3.AppEngineRouting.t() | nil
        }

  defstruct [:app_engine_routing_override]

  field :app_engine_routing_override, 1, type: Google.Cloud.Tasks.V2beta3.AppEngineRouting
end

defmodule Google.Cloud.Tasks.V2beta3.AppEngineHttpRequest.HeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.AppEngineHttpRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_method: Google.Cloud.Tasks.V2beta3.HttpMethod.t(),
          app_engine_routing: Google.Cloud.Tasks.V2beta3.AppEngineRouting.t() | nil,
          relative_uri: String.t(),
          headers: %{String.t() => String.t()},
          body: binary
        }

  defstruct [:http_method, :app_engine_routing, :relative_uri, :headers, :body]

  field :http_method, 1, type: Google.Cloud.Tasks.V2beta3.HttpMethod, enum: true
  field :app_engine_routing, 2, type: Google.Cloud.Tasks.V2beta3.AppEngineRouting
  field :relative_uri, 3, type: :string

  field :headers, 4,
    repeated: true,
    type: Google.Cloud.Tasks.V2beta3.AppEngineHttpRequest.HeadersEntry,
    map: true

  field :body, 5, type: :bytes
end

defmodule Google.Cloud.Tasks.V2beta3.AppEngineRouting do
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
end

defmodule Google.Cloud.Tasks.V2beta3.OAuthToken do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account_email: String.t(),
          scope: String.t()
        }

  defstruct [:service_account_email, :scope]

  field :service_account_email, 1, type: :string
  field :scope, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta3.OidcToken do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account_email: String.t(),
          audience: String.t()
        }

  defstruct [:service_account_email, :audience]

  field :service_account_email, 1, type: :string
  field :audience, 2, type: :string
end
