defmodule Google.Cloud.Apigeeconnect.V1.Action do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ACTION_UNSPECIFIED | :OPEN_NEW_STREAM

  field :ACTION_UNSPECIFIED, 0

  field :OPEN_NEW_STREAM, 1
end

defmodule Google.Cloud.Apigeeconnect.V1.TetherEndpoint do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TETHER_ENDPOINT_UNSPECIFIED
          | :APIGEE_MART
          | :APIGEE_RUNTIME
          | :APIGEE_MINT_RATING

  field :TETHER_ENDPOINT_UNSPECIFIED, 0

  field :APIGEE_MART, 1

  field :APIGEE_RUNTIME, 2

  field :APIGEE_MINT_RATING, 3
end

defmodule Google.Cloud.Apigeeconnect.V1.Scheme do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SCHEME_UNSPECIFIED | :HTTPS

  field :SCHEME_UNSPECIFIED, 0

  field :HTTPS, 1
end

defmodule Google.Cloud.Apigeeconnect.V1.EgressRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          payload: Google.Cloud.Apigeeconnect.V1.Payload.t() | nil,
          endpoint: Google.Cloud.Apigeeconnect.V1.TetherEndpoint.t(),
          project: String.t(),
          trace_id: String.t(),
          timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:id, :payload, :endpoint, :project, :trace_id, :timeout]

  field :id, 1, type: :string
  field :payload, 2, type: Google.Cloud.Apigeeconnect.V1.Payload
  field :endpoint, 3, type: Google.Cloud.Apigeeconnect.V1.TetherEndpoint, enum: true
  field :project, 4, type: :string
  field :trace_id, 5, type: :string
  field :timeout, 6, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Apigeeconnect.V1.Payload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: {atom, any}
        }

  defstruct [:kind]

  oneof :kind, 0
  field :http_request, 1, type: Google.Cloud.Apigeeconnect.V1.HttpRequest, oneof: 0
  field :stream_info, 2, type: Google.Cloud.Apigeeconnect.V1.StreamInfo, oneof: 0
  field :action, 3, type: Google.Cloud.Apigeeconnect.V1.Action, enum: true, oneof: 0
end

defmodule Google.Cloud.Apigeeconnect.V1.StreamInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }

  defstruct [:id]

  field :id, 1, type: :string
end

defmodule Google.Cloud.Apigeeconnect.V1.EgressResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          http_response: Google.Cloud.Apigeeconnect.V1.HttpResponse.t() | nil,
          status: Google.Rpc.Status.t() | nil,
          project: String.t(),
          trace_id: String.t(),
          endpoint: Google.Cloud.Apigeeconnect.V1.TetherEndpoint.t(),
          name: String.t()
        }

  defstruct [:id, :http_response, :status, :project, :trace_id, :endpoint, :name]

  field :id, 1, type: :string
  field :http_response, 2, type: Google.Cloud.Apigeeconnect.V1.HttpResponse
  field :status, 3, type: Google.Rpc.Status
  field :project, 4, type: :string
  field :trace_id, 5, type: :string
  field :endpoint, 6, type: Google.Cloud.Apigeeconnect.V1.TetherEndpoint, enum: true
  field :name, 7, type: :string
end

defmodule Google.Cloud.Apigeeconnect.V1.HttpRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          method: String.t(),
          url: Google.Cloud.Apigeeconnect.V1.Url.t() | nil,
          headers: [Google.Cloud.Apigeeconnect.V1.Header.t()],
          body: binary
        }

  defstruct [:id, :method, :url, :headers, :body]

  field :id, 1, type: :string
  field :method, 2, type: :string
  field :url, 3, type: Google.Cloud.Apigeeconnect.V1.Url
  field :headers, 4, repeated: true, type: Google.Cloud.Apigeeconnect.V1.Header
  field :body, 5, type: :bytes
end

defmodule Google.Cloud.Apigeeconnect.V1.Url do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scheme: Google.Cloud.Apigeeconnect.V1.Scheme.t(),
          host: String.t(),
          path: String.t()
        }

  defstruct [:scheme, :host, :path]

  field :scheme, 1, type: Google.Cloud.Apigeeconnect.V1.Scheme, enum: true
  field :host, 2, type: :string
  field :path, 3, type: :string
end

defmodule Google.Cloud.Apigeeconnect.V1.Header do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          values: [String.t()]
        }

  defstruct [:key, :values]

  field :key, 1, type: :string
  field :values, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Apigeeconnect.V1.HttpResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          status: String.t(),
          status_code: integer,
          body: binary,
          headers: [Google.Cloud.Apigeeconnect.V1.Header.t()],
          content_length: integer
        }

  defstruct [:id, :status, :status_code, :body, :headers, :content_length]

  field :id, 1, type: :string
  field :status, 2, type: :string
  field :status_code, 3, type: :int32
  field :body, 4, type: :bytes
  field :headers, 5, repeated: true, type: Google.Cloud.Apigeeconnect.V1.Header
  field :content_length, 6, type: :int64
end
