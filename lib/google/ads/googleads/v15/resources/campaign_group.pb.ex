defmodule Google.Ads.Googleads.V15.Resources.CampaignGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 3, type: :int64, deprecated: false
  field :name, 4, type: :string

  field :status, 5,
    type: Google.Ads.Googleads.V15.Enums.CampaignGroupStatusEnum.CampaignGroupStatus,
    enum: true
end