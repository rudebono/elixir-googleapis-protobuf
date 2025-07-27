defmodule Google.Identity.Accesscontextmanager.V1.AccessPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :parent, 2, type: :string
  field :title, 3, type: :string
  field :scopes, 7, repeated: true, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 5, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :etag, 6, type: :string
end
