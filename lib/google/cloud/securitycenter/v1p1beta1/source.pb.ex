defmodule Google.Cloud.Securitycenter.V1p1beta1.Source do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :canonical_name, 14, type: :string, json_name: "canonicalName"
end
