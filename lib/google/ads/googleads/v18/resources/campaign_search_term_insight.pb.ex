defmodule Google.Ads.Googleads.V18.Resources.CampaignSearchTermInsight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :category_label, 2,
    proto3_optional: true,
    type: :string,
    json_name: "categoryLabel",
    deprecated: false

  field :id, 3, proto3_optional: true, type: :int64, deprecated: false

  field :campaign_id, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "campaignId",
    deprecated: false
end
