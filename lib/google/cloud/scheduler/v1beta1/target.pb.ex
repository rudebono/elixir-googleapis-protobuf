defmodule Google.Cloud.Scheduler.V1beta1.HttpMethod do
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
defmodule Google.Cloud.Scheduler.V1beta1.HttpTarget.HeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Scheduler.V1beta1.HttpTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authorization_header:
            {:oauth_token, Google.Cloud.Scheduler.V1beta1.OAuthToken.t() | nil}
            | {:oidc_token, Google.Cloud.Scheduler.V1beta1.OidcToken.t() | nil},
          uri: String.t(),
          http_method: Google.Cloud.Scheduler.V1beta1.HttpMethod.t(),
          headers: %{String.t() => String.t()},
          body: binary
        }

  defstruct authorization_header: nil,
            uri: "",
            http_method: :HTTP_METHOD_UNSPECIFIED,
            headers: %{},
            body: ""

  oneof :authorization_header, 0

  field :uri, 1, type: :string

  field :http_method, 2,
    type: Google.Cloud.Scheduler.V1beta1.HttpMethod,
    json_name: "httpMethod",
    enum: true

  field :headers, 3,
    repeated: true,
    type: Google.Cloud.Scheduler.V1beta1.HttpTarget.HeadersEntry,
    map: true

  field :body, 4, type: :bytes

  field :oauth_token, 5,
    type: Google.Cloud.Scheduler.V1beta1.OAuthToken,
    json_name: "oauthToken",
    oneof: 0

  field :oidc_token, 6,
    type: Google.Cloud.Scheduler.V1beta1.OidcToken,
    json_name: "oidcToken",
    oneof: 0
end
defmodule Google.Cloud.Scheduler.V1beta1.AppEngineHttpTarget.HeadersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Scheduler.V1beta1.AppEngineHttpTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_method: Google.Cloud.Scheduler.V1beta1.HttpMethod.t(),
          app_engine_routing: Google.Cloud.Scheduler.V1beta1.AppEngineRouting.t() | nil,
          relative_uri: String.t(),
          headers: %{String.t() => String.t()},
          body: binary
        }

  defstruct http_method: :HTTP_METHOD_UNSPECIFIED,
            app_engine_routing: nil,
            relative_uri: "",
            headers: %{},
            body: ""

  field :http_method, 1,
    type: Google.Cloud.Scheduler.V1beta1.HttpMethod,
    json_name: "httpMethod",
    enum: true

  field :app_engine_routing, 2,
    type: Google.Cloud.Scheduler.V1beta1.AppEngineRouting,
    json_name: "appEngineRouting"

  field :relative_uri, 3, type: :string, json_name: "relativeUri"

  field :headers, 4,
    repeated: true,
    type: Google.Cloud.Scheduler.V1beta1.AppEngineHttpTarget.HeadersEntry,
    map: true

  field :body, 5, type: :bytes
end
defmodule Google.Cloud.Scheduler.V1beta1.PubsubTarget.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Scheduler.V1beta1.PubsubTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic_name: String.t(),
          data: binary,
          attributes: %{String.t() => String.t()}
        }

  defstruct topic_name: "",
            data: "",
            attributes: %{}

  field :topic_name, 1, type: :string, json_name: "topicName", deprecated: false
  field :data, 3, type: :bytes

  field :attributes, 4,
    repeated: true,
    type: Google.Cloud.Scheduler.V1beta1.PubsubTarget.AttributesEntry,
    map: true
end
defmodule Google.Cloud.Scheduler.V1beta1.AppEngineRouting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          version: String.t(),
          instance: String.t(),
          host: String.t()
        }

  defstruct service: "",
            version: "",
            instance: "",
            host: ""

  field :service, 1, type: :string
  field :version, 2, type: :string
  field :instance, 3, type: :string
  field :host, 4, type: :string
end
defmodule Google.Cloud.Scheduler.V1beta1.OAuthToken do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account_email: String.t(),
          scope: String.t()
        }

  defstruct service_account_email: "",
            scope: ""

  field :service_account_email, 1, type: :string, json_name: "serviceAccountEmail"
  field :scope, 2, type: :string
end
defmodule Google.Cloud.Scheduler.V1beta1.OidcToken do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account_email: String.t(),
          audience: String.t()
        }

  defstruct service_account_email: "",
            audience: ""

  field :service_account_email, 1, type: :string, json_name: "serviceAccountEmail"
  field :audience, 2, type: :string
end
