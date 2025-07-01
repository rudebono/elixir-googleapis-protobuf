defmodule Google.Cloud.Securitycenter.V2.Chokepoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :related_findings, 1, repeated: true, type: :string, json_name: "relatedFindings"
end
