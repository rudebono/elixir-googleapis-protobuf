defmodule Google.Cloud.Support.V2.Attachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :creator, 3, type: Google.Cloud.Support.V2.Actor, deprecated: false
  field :filename, 4, type: :string
  field :mime_type, 5, type: :string, json_name: "mimeType", deprecated: false
  field :size_bytes, 6, type: :int64, json_name: "sizeBytes", deprecated: false
end
