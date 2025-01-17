defmodule Google.Ads.Googleads.V16.Resources.Audience do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V16.Enums.AudienceStatusEnum.AudienceStatus,
    enum: true,
    deprecated: false

  field :name, 10, proto3_optional: true, type: :string
  field :description, 5, type: :string
  field :dimensions, 6, repeated: true, type: Google.Ads.Googleads.V16.Common.AudienceDimension

  field :exclusion_dimension, 7,
    type: Google.Ads.Googleads.V16.Common.AudienceExclusionDimension,
    json_name: "exclusionDimension"

  field :scope, 8,
    type: Google.Ads.Googleads.V16.Enums.AudienceScopeEnum.AudienceScope,
    enum: true

  field :asset_group, 9, type: :string, json_name: "assetGroup", deprecated: false
end
