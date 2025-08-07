defmodule Google.Ads.Googleads.V21.Resources.CampaignBidModifier do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 6, proto3_optional: true, type: :string, deprecated: false

  field :criterion_id, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "criterionId",
    deprecated: false

  field :bid_modifier, 8, proto3_optional: true, type: :double, json_name: "bidModifier"

  field :interaction_type, 5,
    type: Google.Ads.Googleads.V21.Common.InteractionTypeInfo,
    json_name: "interactionType",
    oneof: 0,
    deprecated: false
end
