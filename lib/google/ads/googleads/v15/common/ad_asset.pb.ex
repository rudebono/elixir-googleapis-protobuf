defmodule Google.Ads.Googleads.V15.Common.AdTextAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 4, proto3_optional: true, type: :string

  field :pinned_field, 2,
    type: Google.Ads.Googleads.V15.Enums.ServedAssetFieldTypeEnum.ServedAssetFieldType,
    json_name: "pinnedField",
    enum: true

  field :asset_performance_label, 5,
    type: Google.Ads.Googleads.V15.Enums.AssetPerformanceLabelEnum.AssetPerformanceLabel,
    json_name: "assetPerformanceLabel",
    enum: true

  field :policy_summary_info, 6,
    type: Google.Ads.Googleads.V15.Common.AdAssetPolicySummary,
    json_name: "policySummaryInfo"
end

defmodule Google.Ads.Googleads.V15.Common.AdImageAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V15.Common.AdVideoAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V15.Common.AdMediaBundleAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V15.Common.AdDiscoveryCarouselCardAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 1, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V15.Common.AdCallToActionAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 1, proto3_optional: true, type: :string
end