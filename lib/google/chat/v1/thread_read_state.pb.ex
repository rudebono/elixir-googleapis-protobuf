defmodule Google.Chat.V1.ThreadReadState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :last_read_time, 2, type: Google.Protobuf.Timestamp, json_name: "lastReadTime"
end

defmodule Google.Chat.V1.GetThreadReadStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end