defmodule Google.Rpc.Context.AttributeContext.Peer.LabelsEntry do
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

defmodule Google.Rpc.Context.AttributeContext.Peer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip: String.t(),
          port: integer,
          labels: %{String.t() => String.t()},
          principal: String.t(),
          region_code: String.t()
        }

  defstruct [:ip, :port, :labels, :principal, :region_code]

  field :ip, 1, type: :string
  field :port, 2, type: :int64

  field :labels, 6,
    repeated: true,
    type: Google.Rpc.Context.AttributeContext.Peer.LabelsEntry,
    map: true

  field :principal, 7, type: :string
  field :region_code, 8, type: :string
end

defmodule Google.Rpc.Context.AttributeContext.Api do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          operation: String.t(),
          protocol: String.t(),
          version: String.t()
        }

  defstruct [:service, :operation, :protocol, :version]

  field :service, 1, type: :string
  field :operation, 2, type: :string
  field :protocol, 3, type: :string
  field :version, 4, type: :string
end

defmodule Google.Rpc.Context.AttributeContext.Auth do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          principal: String.t(),
          audiences: [String.t()],
          presenter: String.t(),
          claims: Google.Protobuf.Struct.t() | nil,
          access_levels: [String.t()]
        }

  defstruct [:principal, :audiences, :presenter, :claims, :access_levels]

  field :principal, 1, type: :string
  field :audiences, 2, repeated: true, type: :string
  field :presenter, 3, type: :string
  field :claims, 4, type: Google.Protobuf.Struct
  field :access_levels, 5, repeated: true, type: :string
end

defmodule Google.Rpc.Context.AttributeContext.Request.HeadersEntry do
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

defmodule Google.Rpc.Context.AttributeContext.Request do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          method: String.t(),
          headers: %{String.t() => String.t()},
          path: String.t(),
          host: String.t(),
          scheme: String.t(),
          query: String.t(),
          time: Google.Protobuf.Timestamp.t() | nil,
          size: integer,
          protocol: String.t(),
          reason: String.t(),
          auth: Google.Rpc.Context.AttributeContext.Auth.t() | nil
        }

  defstruct [
    :id,
    :method,
    :headers,
    :path,
    :host,
    :scheme,
    :query,
    :time,
    :size,
    :protocol,
    :reason,
    :auth
  ]

  field :id, 1, type: :string
  field :method, 2, type: :string

  field :headers, 3,
    repeated: true,
    type: Google.Rpc.Context.AttributeContext.Request.HeadersEntry,
    map: true

  field :path, 4, type: :string
  field :host, 5, type: :string
  field :scheme, 6, type: :string
  field :query, 7, type: :string
  field :time, 9, type: Google.Protobuf.Timestamp
  field :size, 10, type: :int64
  field :protocol, 11, type: :string
  field :reason, 12, type: :string
  field :auth, 13, type: Google.Rpc.Context.AttributeContext.Auth
end

defmodule Google.Rpc.Context.AttributeContext.Response.HeadersEntry do
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

defmodule Google.Rpc.Context.AttributeContext.Response do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: integer,
          size: integer,
          headers: %{String.t() => String.t()},
          time: Google.Protobuf.Timestamp.t() | nil,
          backend_latency: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:code, :size, :headers, :time, :backend_latency]

  field :code, 1, type: :int64
  field :size, 2, type: :int64

  field :headers, 3,
    repeated: true,
    type: Google.Rpc.Context.AttributeContext.Response.HeadersEntry,
    map: true

  field :time, 4, type: Google.Protobuf.Timestamp
  field :backend_latency, 5, type: Google.Protobuf.Duration
end

defmodule Google.Rpc.Context.AttributeContext.Resource.LabelsEntry do
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

defmodule Google.Rpc.Context.AttributeContext.Resource.AnnotationsEntry do
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

defmodule Google.Rpc.Context.AttributeContext.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          name: String.t(),
          type: String.t(),
          labels: %{String.t() => String.t()},
          uid: String.t(),
          annotations: %{String.t() => String.t()},
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          location: String.t()
        }

  defstruct [
    :service,
    :name,
    :type,
    :labels,
    :uid,
    :annotations,
    :display_name,
    :create_time,
    :update_time,
    :delete_time,
    :etag,
    :location
  ]

  field :service, 1, type: :string
  field :name, 2, type: :string
  field :type, 3, type: :string

  field :labels, 4,
    repeated: true,
    type: Google.Rpc.Context.AttributeContext.Resource.LabelsEntry,
    map: true

  field :uid, 5, type: :string

  field :annotations, 6,
    repeated: true,
    type: Google.Rpc.Context.AttributeContext.Resource.AnnotationsEntry,
    map: true

  field :display_name, 7, type: :string
  field :create_time, 8, type: Google.Protobuf.Timestamp
  field :update_time, 9, type: Google.Protobuf.Timestamp
  field :delete_time, 10, type: Google.Protobuf.Timestamp
  field :etag, 11, type: :string
  field :location, 12, type: :string
end

defmodule Google.Rpc.Context.AttributeContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          origin: Google.Rpc.Context.AttributeContext.Peer.t() | nil,
          source: Google.Rpc.Context.AttributeContext.Peer.t() | nil,
          destination: Google.Rpc.Context.AttributeContext.Peer.t() | nil,
          request: Google.Rpc.Context.AttributeContext.Request.t() | nil,
          response: Google.Rpc.Context.AttributeContext.Response.t() | nil,
          resource: Google.Rpc.Context.AttributeContext.Resource.t() | nil,
          api: Google.Rpc.Context.AttributeContext.Api.t() | nil,
          extensions: [Google.Protobuf.Any.t()]
        }

  defstruct [:origin, :source, :destination, :request, :response, :resource, :api, :extensions]

  field :origin, 7, type: Google.Rpc.Context.AttributeContext.Peer
  field :source, 1, type: Google.Rpc.Context.AttributeContext.Peer
  field :destination, 2, type: Google.Rpc.Context.AttributeContext.Peer
  field :request, 3, type: Google.Rpc.Context.AttributeContext.Request
  field :response, 4, type: Google.Rpc.Context.AttributeContext.Response
  field :resource, 5, type: Google.Rpc.Context.AttributeContext.Resource
  field :api, 6, type: Google.Rpc.Context.AttributeContext.Api
  field :extensions, 8, repeated: true, type: Google.Protobuf.Any
end
