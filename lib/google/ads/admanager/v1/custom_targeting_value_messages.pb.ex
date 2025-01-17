defmodule Google.Ads.Admanager.V1.CustomTargetingValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :ad_tag_name, 4, type: :string, json_name: "adTagName", deprecated: false
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :match_type, 6,
    type: Google.Ads.Admanager.V1.CustomTargetingValueMatchTypeEnum.CustomTargetingValueMatchType,
    json_name: "matchType",
    enum: true,
    deprecated: false

  field :status, 7,
    type: Google.Ads.Admanager.V1.CustomTargetingValueStatusEnum.CustomTargetingValueStatus,
    enum: true,
    deprecated: false
end
