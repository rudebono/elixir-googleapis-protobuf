defmodule Google.Cloud.Securitycenter.V2.Chokepoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :related_findings, 1, repeated: true, type: :string, json_name: "relatedFindings"
end
