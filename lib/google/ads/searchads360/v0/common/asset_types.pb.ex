defmodule Google.Ads.Searchads360.V0.Common.YoutubeVideoAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :youtube_video_id, 2, proto3_optional: true, type: :string, json_name: "youtubeVideoId"
  field :youtube_video_title, 3, type: :string, json_name: "youtubeVideoTitle"
end

defmodule Google.Ads.Searchads360.V0.Common.ImageAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_size, 6, proto3_optional: true, type: :int64, json_name: "fileSize"

  field :mime_type, 3,
    type: Google.Ads.Searchads360.V0.Enums.MimeTypeEnum.MimeType,
    json_name: "mimeType",
    enum: true

  field :full_size, 4,
    type: Google.Ads.Searchads360.V0.Common.ImageDimension,
    json_name: "fullSize"
end

defmodule Google.Ads.Searchads360.V0.Common.ImageDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :height_pixels, 4, proto3_optional: true, type: :int64, json_name: "heightPixels"
  field :width_pixels, 5, proto3_optional: true, type: :int64, json_name: "widthPixels"
  field :url, 6, proto3_optional: true, type: :string
end

defmodule Google.Ads.Searchads360.V0.Common.TextAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :text, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Searchads360.V0.Common.UnifiedCalloutAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :callout_text, 1, type: :string, json_name: "calloutText"
  field :start_date, 2, type: :string, json_name: "startDate"
  field :end_date, 3, type: :string, json_name: "endDate"

  field :ad_schedule_targets, 4,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"

  field :use_searcher_time_zone, 5, type: :bool, json_name: "useSearcherTimeZone"
end

defmodule Google.Ads.Searchads360.V0.Common.UnifiedSitelinkAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :link_text, 1, type: :string, json_name: "linkText"
  field :description1, 2, type: :string
  field :description2, 3, type: :string
  field :start_date, 4, type: :string, json_name: "startDate"
  field :end_date, 5, type: :string, json_name: "endDate"

  field :ad_schedule_targets, 6,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"

  field :tracking_id, 7, type: :int64, json_name: "trackingId"
  field :use_searcher_time_zone, 8, type: :bool, json_name: "useSearcherTimeZone"
  field :mobile_preferred, 9, type: :bool, json_name: "mobilePreferred"
end

defmodule Google.Ads.Searchads360.V0.Common.UnifiedPageFeedAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_url, 1, type: :string, json_name: "pageUrl"
  field :labels, 2, repeated: true, type: :string
end

defmodule Google.Ads.Searchads360.V0.Common.MobileAppAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :app_id, 1, type: :string, json_name: "appId", deprecated: false

  field :app_store, 2,
    type: Google.Ads.Searchads360.V0.Enums.MobileAppVendorEnum.MobileAppVendor,
    json_name: "appStore",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Common.UnifiedCallAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :country_code, 1, type: :string, json_name: "countryCode"
  field :phone_number, 2, type: :string, json_name: "phoneNumber"

  field :call_conversion_reporting_state, 3,
    type:
      Google.Ads.Searchads360.V0.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    json_name: "callConversionReportingState",
    enum: true,
    deprecated: false

  field :call_conversion_action, 4,
    type: :string,
    json_name: "callConversionAction",
    deprecated: false

  field :ad_schedule_targets, 5,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"

  field :call_only, 7, type: :bool, json_name: "callOnly"
  field :call_tracking_enabled, 8, type: :bool, json_name: "callTrackingEnabled"
  field :use_searcher_time_zone, 9, type: :bool, json_name: "useSearcherTimeZone"
  field :start_date, 10, type: :string, json_name: "startDate"
  field :end_date, 11, type: :string, json_name: "endDate"
end

defmodule Google.Ads.Searchads360.V0.Common.CallToActionAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :call_to_action, 1,
    type: Google.Ads.Searchads360.V0.Enums.CallToActionTypeEnum.CallToActionType,
    json_name: "callToAction",
    enum: true
end

defmodule Google.Ads.Searchads360.V0.Common.UnifiedLocationAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :place_id, 1, type: :string, json_name: "placeId"

  field :business_profile_locations, 2,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.BusinessProfileLocation,
    json_name: "businessProfileLocations"

  field :location_ownership_type, 3,
    type: Google.Ads.Searchads360.V0.Enums.LocationOwnershipTypeEnum.LocationOwnershipType,
    json_name: "locationOwnershipType",
    enum: true
end

defmodule Google.Ads.Searchads360.V0.Common.BusinessProfileLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :labels, 1, repeated: true, type: :string
  field :store_code, 2, type: :string, json_name: "storeCode"
  field :listing_id, 3, type: :int64, json_name: "listingId"
end
