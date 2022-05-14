defmodule Google.Spanner.V1.KeyRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :start_key_type, 0
  oneof :end_key_type, 1

  field :start_closed, 1, type: Google.Protobuf.ListValue, json_name: "startClosed", oneof: 0
  field :start_open, 2, type: Google.Protobuf.ListValue, json_name: "startOpen", oneof: 0
  field :end_closed, 3, type: Google.Protobuf.ListValue, json_name: "endClosed", oneof: 1
  field :end_open, 4, type: Google.Protobuf.ListValue, json_name: "endOpen", oneof: 1
end
defmodule Google.Spanner.V1.KeySet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :keys, 1, repeated: true, type: Google.Protobuf.ListValue
  field :ranges, 2, repeated: true, type: Google.Spanner.V1.KeyRange
  field :all, 3, type: :bool
end
