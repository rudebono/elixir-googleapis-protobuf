defmodule Google.Cloud.Securitycenter.V1.File do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :path, 1, type: :string
  field :size, 2, type: :int64
  field :sha256, 3, type: :string
  field :hashed_size, 4, type: :int64, json_name: "hashedSize"
  field :partially_hashed, 5, type: :bool, json_name: "partiallyHashed"
  field :contents, 6, type: :string
end