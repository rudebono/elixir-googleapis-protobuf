defmodule Google.Cloud.Support.V2beta.Comment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :creator, 3, type: Google.Cloud.Support.V2beta.Actor, deprecated: false
  field :body, 4, type: :string
  field :plain_text_body, 5, type: :string, json_name: "plainTextBody", deprecated: true
end
