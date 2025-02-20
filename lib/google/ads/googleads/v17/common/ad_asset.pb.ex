defmodule Google.Ads.Googleads.V17.Common.AdTextAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 4, proto3_optional: true, type: :string

  field :pinned_field, 2,
    type: Google.Ads.Googleads.V17.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    json_name: "pinnedField",
    enum: true

  field :asset_performance_label, 5,
    type: Google.Ads.Googleads.V17.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    json_name: "assetPerformanceLabel",
    enum: true

  field :policy_summary_info, 6,
    type: Google.Ads.Googleads.V17.Common.AdAssetPolicySummary,
    json_name: "policySummaryInfo"
end

defmodule Google.Ads.Googleads.V17.Common.AdImageAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :asset, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V17.Common.AdVideoAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :asset, 2, proto3_optional: true, type: :string

  field :ad_video_asset_info, 4,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Common.AdVideoAssetInfo,
    json_name: "adVideoAssetInfo"
end

defmodule Google.Ads.Googleads.V17.Common.AdVideoAssetInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ad_video_asset_inventory_preferences, 1,
    proto3_optional: true,
    type: Google.Ads.Googleads.V17.Common.AdVideoAssetInventoryPreferences,
    json_name: "adVideoAssetInventoryPreferences"
end

defmodule Google.Ads.Googleads.V17.Common.AdVideoAssetInventoryPreferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :in_feed_preference, 1, proto3_optional: true, type: :bool, json_name: "inFeedPreference"

  field :in_stream_preference, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "inStreamPreference"

  field :shorts_preference, 3, proto3_optional: true, type: :bool, json_name: "shortsPreference"
end

defmodule Google.Ads.Googleads.V17.Common.AdMediaBundleAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :asset, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V17.Common.AdDemandGenCarouselCardAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :asset, 1, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V17.Common.AdCallToActionAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :asset, 1, proto3_optional: true, type: :string
end
