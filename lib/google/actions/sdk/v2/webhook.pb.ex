defmodule Google.Actions.Sdk.V2.Webhook.Handler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Webhook.HttpsEndpoint.HttpHeadersEntry do
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

defmodule Google.Actions.Sdk.V2.Webhook.HttpsEndpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_url: String.t(),
          http_headers: %{String.t() => String.t()},
          endpoint_api_version: integer
        }

  defstruct [:base_url, :http_headers, :endpoint_api_version]

  field :base_url, 1, type: :string

  field :http_headers, 2,
    repeated: true,
    type: Google.Actions.Sdk.V2.Webhook.HttpsEndpoint.HttpHeadersEntry,
    map: true

  field :endpoint_api_version, 3, type: :int32
end

defmodule Google.Actions.Sdk.V2.Webhook.InlineCloudFunction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execute_function: String.t()
        }

  defstruct [:execute_function]

  field :execute_function, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Webhook do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          webhook_type: {atom, any},
          handlers: [Google.Actions.Sdk.V2.Webhook.Handler.t()]
        }

  defstruct [:webhook_type, :handlers]

  oneof :webhook_type, 0
  field :handlers, 1, repeated: true, type: Google.Actions.Sdk.V2.Webhook.Handler
  field :https_endpoint, 2, type: Google.Actions.Sdk.V2.Webhook.HttpsEndpoint, oneof: 0

  field :inline_cloud_function, 3,
    type: Google.Actions.Sdk.V2.Webhook.InlineCloudFunction,
    oneof: 0
end
