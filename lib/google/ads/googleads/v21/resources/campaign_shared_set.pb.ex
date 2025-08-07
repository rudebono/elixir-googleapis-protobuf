defmodule Google.Ads.Googleads.V21.Resources.CampaignSharedSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 5, proto3_optional: true, type: :string, deprecated: false

  field :shared_set, 6,
    proto3_optional: true,
    type: :string,
    json_name: "sharedSet",
    deprecated: false

  field :status, 2,
    type: Google.Ads.Googleads.V21.Enums.CampaignSharedSetStatusEnum.CampaignSharedSetStatus,
    enum: true,
    deprecated: false
end
