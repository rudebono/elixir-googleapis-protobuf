defmodule Google.Ads.Admanager.V1.CustomTargetingKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :custom_targeting_key_id, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "customTargetingKeyId",
    deprecated: false

  field :ad_tag_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "adTagName",
    deprecated: false

  field :display_name, 4,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :type, 5,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.CustomTargetingKeyTypeEnum.CustomTargetingKeyType,
    enum: true,
    deprecated: false

  field :status, 6,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.CustomTargetingKeyStatusEnum.CustomTargetingKeyStatus,
    enum: true,
    deprecated: false

  field :reportable_type, 7,
    proto3_optional: true,
    type:
      Google.Ads.Admanager.V1.CustomTargetingKeyReportableTypeEnum.CustomTargetingKeyReportableType,
    json_name: "reportableType",
    enum: true,
    deprecated: false
end
