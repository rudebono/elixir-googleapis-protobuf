defmodule Google.Bytestream.ReadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :read_offset, 2, type: :int64, json_name: "readOffset"
  field :read_limit, 3, type: :int64, json_name: "readLimit"
end

defmodule Google.Bytestream.ReadResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :data, 10, type: :bytes
end

defmodule Google.Bytestream.WriteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :write_offset, 2, type: :int64, json_name: "writeOffset"
  field :finish_write, 3, type: :bool, json_name: "finishWrite"
  field :data, 10, type: :bytes
end

defmodule Google.Bytestream.WriteResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :committed_size, 1, type: :int64, json_name: "committedSize"
end

defmodule Google.Bytestream.QueryWriteStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end

defmodule Google.Bytestream.QueryWriteStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :committed_size, 1, type: :int64, json_name: "committedSize"
  field :complete, 2, type: :bool
end

defmodule Google.Bytestream.ByteStream.Service do
  @moduledoc false

  use GRPC.Service, name: "google.bytestream.ByteStream", protoc_gen_elixir_version: "0.14.1"

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
