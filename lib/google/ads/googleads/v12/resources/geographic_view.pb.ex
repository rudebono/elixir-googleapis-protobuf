defmodule Google.Ads.Googleads.V12.Resources.GeographicView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :location_type, 3,
    type: Google.Ads.Googleads.V12.Enums.GeoTargetingTypeEnum.GeoTargetingType,
    json_name: "locationType",
    enum: true,
    deprecated: false

  field :country_criterion_id, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "countryCriterionId",
    deprecated: false
end