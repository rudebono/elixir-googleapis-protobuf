defmodule Google.Bytestream.ReadRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          read_offset: integer,
          read_limit: integer
        }

  defstruct [:resource_name, :read_offset, :read_limit]

  field :resource_name, 1, type: :string
  field :read_offset, 2, type: :int64
  field :read_limit, 3, type: :int64
end

defmodule Google.Bytestream.ReadResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary
        }

  defstruct [:data]

  field :data, 10, type: :bytes
end

defmodule Google.Bytestream.WriteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          write_offset: integer,
          finish_write: boolean,
          data: binary
        }

  defstruct [:resource_name, :write_offset, :finish_write, :data]

  field :resource_name, 1, type: :string
  field :write_offset, 2, type: :int64
  field :finish_write, 3, type: :bool
  field :data, 10, type: :bytes
end

defmodule Google.Bytestream.WriteResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          committed_size: integer
        }

  defstruct [:committed_size]

  field :committed_size, 1, type: :int64
end

defmodule Google.Bytestream.QueryWriteStatusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Bytestream.QueryWriteStatusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          committed_size: integer,
          complete: boolean
        }

  defstruct [:committed_size, :complete]

  field :committed_size, 1, type: :int64
  field :complete, 2, type: :bool
end

defmodule Google.Bytestream.ByteStream.Service do
  @moduledoc false
  use GRPC.Service, name: "google.bytestream.ByteStream"

  rpc :Read, Google.Bytestream.ReadRequest, stream(Google.Bytestream.ReadResponse)

  rpc :Write, stream(Google.Bytestream.WriteRequest), Google.Bytestream.WriteResponse

  rpc :QueryWriteStatus,
      Google.Bytestream.QueryWriteStatusRequest,
      Google.Bytestream.QueryWriteStatusResponse
end

defmodule Google.Bytestream.ByteStream.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Bytestream.ByteStream.Service
end
