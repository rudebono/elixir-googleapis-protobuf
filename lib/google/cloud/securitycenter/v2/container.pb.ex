defmodule Google.Cloud.Securitycenter.V2.Container do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :uri, 2, type: :string
  field :image_id, 3, type: :string, json_name: "imageId"
  field :labels, 4, repeated: true, type: Google.Cloud.Securitycenter.V2.Label
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
end
