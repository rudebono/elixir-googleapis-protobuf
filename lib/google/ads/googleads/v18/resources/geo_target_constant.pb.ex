defmodule Google.Ads.Googleads.V18.Resources.GeoTargetConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 10, proto3_optional: true, type: :int64, deprecated: false
  field :name, 11, proto3_optional: true, type: :string, deprecated: false

  field :country_code, 12,
    proto3_optional: true,
    type: :string,
    json_name: "countryCode",
    deprecated: false

  field :target_type, 13,
    proto3_optional: true,
    type: :string,
    json_name: "targetType",
    deprecated: false

  field :status, 7,
    type: Google.Ads.Googleads.V18.Enums.GeoTargetConstantStatusEnum.GeoTargetConstantStatus,
    enum: true,
    deprecated: false

  field :canonical_name, 14,
    proto3_optional: true,
    type: :string,
    json_name: "canonicalName",
    deprecated: false

  field :parent_geo_target, 9,
    proto3_optional: true,
    type: :string,
    json_name: "parentGeoTarget",
    deprecated: false
end
