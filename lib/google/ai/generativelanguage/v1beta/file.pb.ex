defmodule Google.Ai.Generativelanguage.V1beta.File do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :mime_type, 3, type: :string, json_name: "mimeType", deprecated: false
  field :size_bytes, 4, type: :int64, json_name: "sizeBytes", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :expiration_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "expirationTime",
    deprecated: false

  field :sha256_hash, 8, type: :bytes, json_name: "sha256Hash", deprecated: false
  field :uri, 9, type: :string, deprecated: false
end