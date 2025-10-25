defmodule Google.Ads.Admanager.V1.CustomTargetingValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :custom_targeting_key, 8,
    proto3_optional: true,
    type: :string,
    json_name: "customTargetingKey",
    deprecated: false

  field :ad_tag_name, 4,
    proto3_optional: true,
    type: :string,
    json_name: "adTagName",
    deprecated: false

  field :display_name, 5,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :match_type, 6,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.CustomTargetingValueMatchTypeEnum.CustomTargetingValueMatchType,
    json_name: "matchType",
    enum: true,
    deprecated: false

  field :status, 7,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.CustomTargetingValueStatusEnum.CustomTargetingValueStatus,
    enum: true,
    deprecated: false
end
