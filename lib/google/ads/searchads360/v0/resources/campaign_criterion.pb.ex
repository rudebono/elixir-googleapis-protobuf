defmodule Google.Ads.Searchads360.V0.Resources.CampaignCriterion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :criterion_id, 38,
    proto3_optional: true,
    type: :int64,
    json_name: "criterionId",
    deprecated: false

  field :display_name, 43, type: :string, json_name: "displayName", deprecated: false
  field :bid_modifier, 39, proto3_optional: true, type: :float, json_name: "bidModifier"
  field :negative, 40, proto3_optional: true, type: :bool, deprecated: false

  field :type, 6,
    type: Google.Ads.Searchads360.V0.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :location, 12,
    type: Google.Ads.Searchads360.V0.Common.LocationInfo,
    oneof: 0,
    deprecated: false

  field :device, 13,
    type: Google.Ads.Searchads360.V0.Common.DeviceInfo,
    oneof: 0,
    deprecated: false

  field :language, 26,
    type: Google.Ads.Searchads360.V0.Common.LanguageInfo,
    oneof: 0,
    deprecated: false

  field :location_group, 34,
    type: Google.Ads.Searchads360.V0.Common.LocationGroupInfo,
    json_name: "locationGroup",
    oneof: 0,
    deprecated: false
end