defmodule Google.Ads.Googleads.V17.Services.SuggestTravelAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :language_option, 2, type: :string, json_name: "languageOption", deprecated: false
  field :place_ids, 4, repeated: true, type: :string, json_name: "placeIds"
end

defmodule Google.Ads.Googleads.V17.Services.SuggestTravelAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :hotel_asset_suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.HotelAssetSuggestion,
    json_name: "hotelAssetSuggestions"
end

defmodule Google.Ads.Googleads.V17.Services.HotelAssetSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :place_id, 1, type: :string, json_name: "placeId"
  field :final_url, 2, type: :string, json_name: "finalUrl"
  field :hotel_name, 3, type: :string, json_name: "hotelName"

  field :call_to_action, 4,
    type: Google.Ads.Googleads.V17.Enums.CallToActionTypeEnum.CallToActionType,
    json_name: "callToAction",
    enum: true

  field :text_assets, 5,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.HotelTextAsset,
    json_name: "textAssets"

  field :image_assets, 6,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.HotelImageAsset,
    json_name: "imageAssets"

  field :status, 7,
    type:
      Google.Ads.Googleads.V17.Enums.HotelAssetSuggestionStatusEnum.HotelAssetSuggestionStatus,
    enum: true
end

defmodule Google.Ads.Googleads.V17.Services.HotelTextAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 1, type: :string

  field :asset_field_type, 2,
    type: Google.Ads.Googleads.V17.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldType",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Services.HotelImageAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string

  field :asset_field_type, 2,
    type: Google.Ads.Googleads.V17.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "assetFieldType",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Services.TravelAssetSuggestionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.TravelAssetSuggestionService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :SuggestTravelAssets,
      Google.Ads.Googleads.V17.Services.SuggestTravelAssetsRequest,
      Google.Ads.Googleads.V17.Services.SuggestTravelAssetsResponse
end

defmodule Google.Ads.Googleads.V17.Services.TravelAssetSuggestionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V17.Services.TravelAssetSuggestionService.Service
end
