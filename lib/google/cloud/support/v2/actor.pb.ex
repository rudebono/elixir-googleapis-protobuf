defmodule Google.Cloud.Support.V2.Actor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :email, 2, type: :string
  field :google_support, 4, type: :bool, json_name: "googleSupport", deprecated: false
end