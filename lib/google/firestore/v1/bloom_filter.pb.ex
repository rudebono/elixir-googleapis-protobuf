defmodule Google.Firestore.V1.BitSequence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :bitmap, 1, type: :bytes
  field :padding, 2, type: :int32
end

defmodule Google.Firestore.V1.BloomFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :bits, 1, type: Google.Firestore.V1.BitSequence
  field :hash_count, 2, type: :int32, json_name: "hashCount"
end
