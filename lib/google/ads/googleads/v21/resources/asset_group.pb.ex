defmodule Google.Ads.Googleads.V21.Resources.AssetGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 9, type: :int64, deprecated: false
  field :campaign, 2, type: :string, deprecated: false
  field :name, 3, type: :string, deprecated: false
  field :final_urls, 4, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 5, repeated: true, type: :string, json_name: "finalMobileUrls"

  field :status, 6,
    type: Google.Ads.Googleads.V21.Enums.AssetGroupStatusEnum.AssetGroupStatus,
    enum: true

  field :primary_status, 11,
    type: Google.Ads.Googleads.V21.Enums.AssetGroupPrimaryStatusEnum.AssetGroupPrimaryStatus,
    json_name: "primaryStatus",
    enum: true,
    deprecated: false

  field :primary_status_reasons, 12,
    repeated: true,
    type:
      Google.Ads.Googleads.V21.Enums.AssetGroupPrimaryStatusReasonEnum.AssetGroupPrimaryStatusReason,
    json_name: "primaryStatusReasons",
    enum: true,
    deprecated: false

  field :path1, 7, type: :string
  field :path2, 8, type: :string

  field :ad_strength, 10,
    type: Google.Ads.Googleads.V21.Enums.AdStrengthEnum.AdStrength,
    json_name: "adStrength",
    enum: true,
    deprecated: false

  field :asset_coverage, 13,
    type: Google.Ads.Googleads.V21.Resources.AssetCoverage,
    json_name: "assetCoverage",
    deprecated: false
end

defmodule Google.Ads.Googleads.V21.Resources.AssetCoverage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_strength_action_items, 1,
    repeated: true,
    type: Google.Ads.Googleads.V21.Resources.AdStrengthActionItem,
    json_name: "adStrengthActionItems",
    deprecated: false
end

defmodule Google.Ads.Googleads.V21.Resources.AdStrengthActionItem.AddAssetDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :asset_field_type, 1,
    type: Google.Ads.Googleads.V21.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldType",
    enum: true,
    deprecated: false

  field :asset_count, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "assetCount",
    deprecated: false

  field :video_aspect_ratio_requirement, 3,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V21.Enums.AssetCoverageVideoAspectRatioRequirementEnum.AssetCoverageVideoAspectRatioRequirement,
    json_name: "videoAspectRatioRequirement",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V21.Resources.AdStrengthActionItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :action_details, 0

  field :action_item_type, 1,
    type: Google.Ads.Googleads.V21.Enums.AdStrengthActionItemTypeEnum.AdStrengthActionItemType,
    json_name: "actionItemType",
    enum: true,
    deprecated: false

  field :add_asset_details, 2,
    type: Google.Ads.Googleads.V21.Resources.AdStrengthActionItem.AddAssetDetails,
    json_name: "addAssetDetails",
    oneof: 0,
    deprecated: false
end
