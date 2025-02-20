defmodule Google.Ads.Googleads.V17.Resources.AssetGroupSignal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :signal, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :asset_group, 2, type: :string, json_name: "assetGroup", deprecated: false

  field :approval_status, 6,
    type:
      Google.Ads.Googleads.V17.Enums.AssetGroupSignalApprovalStatusEnum.AssetGroupSignalApprovalStatus,
    json_name: "approvalStatus",
    enum: true,
    deprecated: false

  field :disapproval_reasons, 7,
    repeated: true,
    type: :string,
    json_name: "disapprovalReasons",
    deprecated: false

  field :audience, 4,
    type: Google.Ads.Googleads.V17.Common.AudienceInfo,
    oneof: 0,
    deprecated: false

  field :search_theme, 5,
    type: Google.Ads.Googleads.V17.Common.SearchThemeInfo,
    json_name: "searchTheme",
    oneof: 0,
    deprecated: false
end
