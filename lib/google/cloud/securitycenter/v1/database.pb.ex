defmodule Google.Cloud.Securitycenter.V1.Database do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :user_name, 3, type: :string, json_name: "userName"
  field :query, 4, type: :string
  field :grantees, 5, repeated: true, type: :string
  field :version, 6, type: :string
end