defmodule Google.Ads.Googleads.V4.Resources.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset_data: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          type: Google.Ads.Googleads.V4.Enums.AssetTypeEnum.AssetType.t()
        }

  defstruct [:asset_data, :resource_name, :id, :name, :type]

  oneof :asset_data, 0
  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :type, 4, type: Google.Ads.Googleads.V4.Enums.AssetTypeEnum.AssetType, enum: true
  field :youtube_video_asset, 5, type: Google.Ads.Googleads.V4.Common.YoutubeVideoAsset, oneof: 0
  field :media_bundle_asset, 6, type: Google.Ads.Googleads.V4.Common.MediaBundleAsset, oneof: 0
  field :image_asset, 7, type: Google.Ads.Googleads.V4.Common.ImageAsset, oneof: 0
  field :text_asset, 8, type: Google.Ads.Googleads.V4.Common.TextAsset, oneof: 0

  field :book_on_google_asset, 10,
    type: Google.Ads.Googleads.V4.Common.BookOnGoogleAsset,
    oneof: 0
end
