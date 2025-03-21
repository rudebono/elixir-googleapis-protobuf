defmodule Google.Cloud.Securitycenter.V1.ToxicCombination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :attack_exposure_score, 1, type: :double, json_name: "attackExposureScore"
  field :related_findings, 2, repeated: true, type: :string, json_name: "relatedFindings"
end
