defmodule Google.Ads.Googleads.V12.Resources.UserLocationView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :country_criterion_id, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "countryCriterionId",
    deprecated: false

  field :targeting_location, 5,
    proto3_optional: true,
    type: :bool,
    json_name: "targetingLocation",
    deprecated: false
end