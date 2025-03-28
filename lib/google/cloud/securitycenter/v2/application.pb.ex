defmodule Google.Cloud.Securitycenter.V2.Application do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :base_uri, 1, type: :string, json_name: "baseUri"
  field :full_uri, 2, type: :string, json_name: "fullUri"
end
