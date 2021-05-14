defmodule Google.Cloud.Tasks.V2beta2.HttpMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :HTTP_METHOD_UNSPECIFIED | :POST | :GET | :HEAD | :PUT | :DELETE

  field :HTTP_METHOD_UNSPECIFIED, 0

  field :POST, 1

  field :GET, 2

  field :HEAD, 3

  field :PUT, 4

  field :DELETE, 5
end

defmodule Google.Cloud.Tasks.V2beta2.PullTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Tasks.V2beta2.PullMessage do
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

defmodule Google.Cloud.Tasks.V2beta2.AppEngineHttpTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_engine_routing_override: Google.Cloud.Tasks.V2beta2.AppEngineRouting.t() | nil
        }

  defstruct [:app_engine_routing_override]

  field :app_engine_routing_override, 1, type: Google.Cloud.Tasks.V2beta2.AppEngineRouting
end

defmodule Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest.HeadersEntry do
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

defmodule Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_method: Google.Cloud.Tasks.V2beta2.HttpMethod.t(),
          app_engine_routing: Google.Cloud.Tasks.V2beta2.AppEngineRouting.t() | nil,
          relative_url: String.t(),
          headers: %{String.t() => String.t()},
          payload: binary
        }

  defstruct [:http_method, :app_engine_routing, :relative_url, :headers, :payload]

  field :http_method, 1, type: Google.Cloud.Tasks.V2beta2.HttpMethod, enum: true
  field :app_engine_routing, 2, type: Google.Cloud.Tasks.V2beta2.AppEngineRouting
  field :relative_url, 3, type: :string

  field :headers, 4,
    repeated: true,
    type: Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest.HeadersEntry,
    map: true

  field :payload, 5, type: :bytes
end

defmodule Google.Cloud.Tasks.V2beta2.AppEngineRouting do
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
