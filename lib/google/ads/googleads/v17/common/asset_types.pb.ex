defmodule Google.Ads.Googleads.V17.Common.YoutubeVideoAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :youtube_video_id, 2, proto3_optional: true, type: :string, json_name: "youtubeVideoId"
  field :youtube_video_title, 3, type: :string, json_name: "youtubeVideoTitle"
end

defmodule Google.Ads.Googleads.V17.Common.MediaBundleAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data, 2, proto3_optional: true, type: :bytes
end

defmodule Google.Ads.Googleads.V17.Common.ImageAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :data, 5, proto3_optional: true, type: :bytes
  field :file_size, 6, proto3_optional: true, type: :int64, json_name: "fileSize"

  field :mime_type, 3,
    type: Google.Ads.Googleads.V17.Enums.MimeTypeEnum.MimeType,
    json_name: "mimeType",
    enum: true

  field :full_size, 4, type: Google.Ads.Googleads.V17.Common.ImageDimension, json_name: "fullSize"
end

defmodule Google.Ads.Googleads.V17.Common.ImageDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :height_pixels, 4, proto3_optional: true, type: :int64, json_name: "heightPixels"
  field :width_pixels, 5, proto3_optional: true, type: :int64, json_name: "widthPixels"
  field :url, 6, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V17.Common.TextAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 2, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V17.Common.LeadFormAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :business_name, 10, type: :string, json_name: "businessName", deprecated: false

  field :call_to_action_type, 17,
    type: Google.Ads.Googleads.V17.Enums.LeadFormCallToActionTypeEnum.LeadFormCallToActionType,
    json_name: "callToActionType",
    enum: true,
    deprecated: false

  field :call_to_action_description, 18,
    type: :string,
    json_name: "callToActionDescription",
    deprecated: false

  field :headline, 12, type: :string, deprecated: false
  field :description, 13, type: :string, deprecated: false
  field :privacy_policy_url, 14, type: :string, json_name: "privacyPolicyUrl", deprecated: false

  field :post_submit_headline, 15,
    proto3_optional: true,
    type: :string,
    json_name: "postSubmitHeadline"

  field :post_submit_description, 16,
    proto3_optional: true,
    type: :string,
    json_name: "postSubmitDescription"

  field :fields, 8, repeated: true, type: Google.Ads.Googleads.V17.Common.LeadFormField

  field :custom_question_fields, 23,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.LeadFormCustomQuestionField,
    json_name: "customQuestionFields"

  field :delivery_methods, 9,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.LeadFormDeliveryMethod,
    json_name: "deliveryMethods"

  field :post_submit_call_to_action_type, 19,
    type:
      Google.Ads.Googleads.V17.Enums.LeadFormPostSubmitCallToActionTypeEnum.LeadFormPostSubmitCallToActionType,
    json_name: "postSubmitCallToActionType",
    enum: true

  field :background_image_asset, 20,
    proto3_optional: true,
    type: :string,
    json_name: "backgroundImageAsset"

  field :desired_intent, 21,
    type: Google.Ads.Googleads.V17.Enums.LeadFormDesiredIntentEnum.LeadFormDesiredIntent,
    json_name: "desiredIntent",
    enum: true

  field :custom_disclosure, 22,
    proto3_optional: true,
    type: :string,
    json_name: "customDisclosure"
end

defmodule Google.Ads.Googleads.V17.Common.LeadFormField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :answers, 0

  field :input_type, 1,
    type:
      Google.Ads.Googleads.V17.Enums.LeadFormFieldUserInputTypeEnum.LeadFormFieldUserInputType,
    json_name: "inputType",
    enum: true

  field :single_choice_answers, 2,
    type: Google.Ads.Googleads.V17.Common.LeadFormSingleChoiceAnswers,
    json_name: "singleChoiceAnswers",
    oneof: 0

  field :has_location_answer, 3, type: :bool, json_name: "hasLocationAnswer", oneof: 0
end

defmodule Google.Ads.Googleads.V17.Common.LeadFormCustomQuestionField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :answers, 0

  field :custom_question_text, 1, type: :string, json_name: "customQuestionText"

  field :single_choice_answers, 2,
    type: Google.Ads.Googleads.V17.Common.LeadFormSingleChoiceAnswers,
    json_name: "singleChoiceAnswers",
    oneof: 0

  field :has_location_answer, 3, type: :bool, json_name: "hasLocationAnswer", oneof: 0
end

defmodule Google.Ads.Googleads.V17.Common.LeadFormSingleChoiceAnswers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :answers, 1, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V17.Common.LeadFormDeliveryMethod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :delivery_details, 0

  field :webhook, 1, type: Google.Ads.Googleads.V17.Common.WebhookDelivery, oneof: 0
end

defmodule Google.Ads.Googleads.V17.Common.WebhookDelivery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :advertiser_webhook_url, 4,
    proto3_optional: true,
    type: :string,
    json_name: "advertiserWebhookUrl"

  field :google_secret, 5, proto3_optional: true, type: :string, json_name: "googleSecret"

  field :payload_schema_version, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "payloadSchemaVersion"
end

defmodule Google.Ads.Googleads.V17.Common.BookOnGoogleAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Ads.Googleads.V17.Common.PromotionAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :discount_type, 0

  oneof :promotion_trigger, 1

  field :promotion_target, 1, type: :string, json_name: "promotionTarget", deprecated: false

  field :discount_modifier, 2,
    type:
      Google.Ads.Googleads.V17.Enums.PromotionExtensionDiscountModifierEnum.PromotionExtensionDiscountModifier,
    json_name: "discountModifier",
    enum: true

  field :redemption_start_date, 7, type: :string, json_name: "redemptionStartDate"
  field :redemption_end_date, 8, type: :string, json_name: "redemptionEndDate"

  field :occasion, 9,
    type:
      Google.Ads.Googleads.V17.Enums.PromotionExtensionOccasionEnum.PromotionExtensionOccasion,
    enum: true

  field :language_code, 10, type: :string, json_name: "languageCode"
  field :start_date, 11, type: :string, json_name: "startDate"
  field :end_date, 12, type: :string, json_name: "endDate"

  field :ad_schedule_targets, 13,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"

  field :percent_off, 3, type: :int64, json_name: "percentOff", oneof: 0

  field :money_amount_off, 4,
    type: Google.Ads.Googleads.V17.Common.Money,
    json_name: "moneyAmountOff",
    oneof: 0

  field :promotion_code, 5, type: :string, json_name: "promotionCode", oneof: 1

  field :orders_over_amount, 6,
    type: Google.Ads.Googleads.V17.Common.Money,
    json_name: "ordersOverAmount",
    oneof: 1
end

defmodule Google.Ads.Googleads.V17.Common.CalloutAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :callout_text, 1, type: :string, json_name: "calloutText", deprecated: false
  field :start_date, 2, type: :string, json_name: "startDate"
  field :end_date, 3, type: :string, json_name: "endDate"

  field :ad_schedule_targets, 4,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"
end

defmodule Google.Ads.Googleads.V17.Common.StructuredSnippetAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :header, 1, type: :string, deprecated: false
  field :values, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Googleads.V17.Common.SitelinkAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :link_text, 1, type: :string, json_name: "linkText", deprecated: false
  field :description1, 2, type: :string
  field :description2, 3, type: :string
  field :start_date, 4, type: :string, json_name: "startDate"
  field :end_date, 5, type: :string, json_name: "endDate"

  field :ad_schedule_targets, 6,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"
end

defmodule Google.Ads.Googleads.V17.Common.PageFeedAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :page_url, 1, type: :string, json_name: "pageUrl", deprecated: false
  field :labels, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V17.Common.DynamicEducationAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :program_id, 1, type: :string, json_name: "programId", deprecated: false
  field :location_id, 2, type: :string, json_name: "locationId"
  field :program_name, 3, type: :string, json_name: "programName", deprecated: false
  field :subject, 4, type: :string
  field :program_description, 5, type: :string, json_name: "programDescription"
  field :school_name, 6, type: :string, json_name: "schoolName"
  field :address, 7, type: :string
  field :contextual_keywords, 8, repeated: true, type: :string, json_name: "contextualKeywords"
  field :android_app_link, 9, type: :string, json_name: "androidAppLink"
  field :similar_program_ids, 10, repeated: true, type: :string, json_name: "similarProgramIds"
  field :ios_app_link, 11, type: :string, json_name: "iosAppLink"
  field :ios_app_store_id, 12, type: :int64, json_name: "iosAppStoreId"
  field :thumbnail_image_url, 13, type: :string, json_name: "thumbnailImageUrl"
  field :image_url, 14, type: :string, json_name: "imageUrl"
end

defmodule Google.Ads.Googleads.V17.Common.MobileAppAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :app_id, 1, type: :string, json_name: "appId", deprecated: false

  field :app_store, 2,
    type: Google.Ads.Googleads.V17.Enums.MobileAppVendorEnum.MobileAppVendor,
    json_name: "appStore",
    enum: true,
    deprecated: false

  field :link_text, 3, type: :string, json_name: "linkText", deprecated: false
  field :start_date, 4, type: :string, json_name: "startDate"
  field :end_date, 5, type: :string, json_name: "endDate"
end

defmodule Google.Ads.Googleads.V17.Common.HotelCalloutAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Common.CallAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :country_code, 1, type: :string, json_name: "countryCode", deprecated: false
  field :phone_number, 2, type: :string, json_name: "phoneNumber", deprecated: false

  field :call_conversion_reporting_state, 3,
    type:
      Google.Ads.Googleads.V17.Enums.CallConversionReportingStateEnum.CallConversionReportingState,
    json_name: "callConversionReportingState",
    enum: true

  field :call_conversion_action, 4,
    type: :string,
    json_name: "callConversionAction",
    deprecated: false

  field :ad_schedule_targets, 5,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.AdScheduleInfo,
    json_name: "adScheduleTargets"
end

defmodule Google.Ads.Googleads.V17.Common.PriceAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V17.Enums.PriceExtensionTypeEnum.PriceExtensionType,
    enum: true,
    deprecated: false

  field :price_qualifier, 2,
    type:
      Google.Ads.Googleads.V17.Enums.PriceExtensionPriceQualifierEnum.PriceExtensionPriceQualifier,
    json_name: "priceQualifier",
    enum: true

  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :price_offerings, 4,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.PriceOffering,
    json_name: "priceOfferings"
end

defmodule Google.Ads.Googleads.V17.Common.PriceOffering do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :header, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :price, 3, type: Google.Ads.Googleads.V17.Common.Money, deprecated: false

  field :unit, 4,
    type: Google.Ads.Googleads.V17.Enums.PriceExtensionPriceUnitEnum.PriceExtensionPriceUnit,
    enum: true

  field :final_url, 5, type: :string, json_name: "finalUrl", deprecated: false
  field :final_mobile_url, 6, type: :string, json_name: "finalMobileUrl"
end

defmodule Google.Ads.Googleads.V17.Common.CallToActionAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :call_to_action, 1,
    type: Google.Ads.Googleads.V17.Enums.CallToActionTypeEnum.CallToActionType,
    json_name: "callToAction",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Common.DynamicRealEstateAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :listing_id, 1, type: :string, json_name: "listingId", deprecated: false
  field :listing_name, 2, type: :string, json_name: "listingName", deprecated: false
  field :city_name, 3, type: :string, json_name: "cityName"
  field :description, 4, type: :string
  field :address, 5, type: :string
  field :price, 6, type: :string
  field :image_url, 7, type: :string, json_name: "imageUrl"
  field :property_type, 8, type: :string, json_name: "propertyType"
  field :listing_type, 9, type: :string, json_name: "listingType"
  field :contextual_keywords, 10, repeated: true, type: :string, json_name: "contextualKeywords"
  field :formatted_price, 11, type: :string, json_name: "formattedPrice"
  field :android_app_link, 12, type: :string, json_name: "androidAppLink"
  field :ios_app_link, 13, type: :string, json_name: "iosAppLink"
  field :ios_app_store_id, 14, type: :int64, json_name: "iosAppStoreId"
  field :similar_listing_ids, 15, repeated: true, type: :string, json_name: "similarListingIds"
end

defmodule Google.Ads.Googleads.V17.Common.DynamicCustomAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :id2, 2, type: :string
  field :item_title, 3, type: :string, json_name: "itemTitle", deprecated: false
  field :item_subtitle, 4, type: :string, json_name: "itemSubtitle"
  field :item_description, 5, type: :string, json_name: "itemDescription"
  field :item_address, 6, type: :string, json_name: "itemAddress"
  field :item_category, 7, type: :string, json_name: "itemCategory"
  field :price, 8, type: :string
  field :sale_price, 9, type: :string, json_name: "salePrice"
  field :formatted_price, 10, type: :string, json_name: "formattedPrice"
  field :formatted_sale_price, 11, type: :string, json_name: "formattedSalePrice"
  field :image_url, 12, type: :string, json_name: "imageUrl"
  field :contextual_keywords, 13, repeated: true, type: :string, json_name: "contextualKeywords"
  field :android_app_link, 14, type: :string, json_name: "androidAppLink"
  field :ios_app_link, 16, type: :string, json_name: "iosAppLink"
  field :ios_app_store_id, 17, type: :int64, json_name: "iosAppStoreId"
  field :similar_ids, 15, repeated: true, type: :string, json_name: "similarIds"
end

defmodule Google.Ads.Googleads.V17.Common.DynamicHotelsAndRentalsAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :property_id, 1, type: :string, json_name: "propertyId", deprecated: false
  field :property_name, 2, type: :string, json_name: "propertyName", deprecated: false
  field :image_url, 3, type: :string, json_name: "imageUrl"
  field :destination_name, 4, type: :string, json_name: "destinationName"
  field :description, 5, type: :string
  field :price, 6, type: :string
  field :sale_price, 7, type: :string, json_name: "salePrice"
  field :star_rating, 8, type: :int64, json_name: "starRating"
  field :category, 9, type: :string
  field :contextual_keywords, 10, repeated: true, type: :string, json_name: "contextualKeywords"
  field :address, 11, type: :string
  field :android_app_link, 12, type: :string, json_name: "androidAppLink"
  field :ios_app_link, 13, type: :string, json_name: "iosAppLink"
  field :ios_app_store_id, 14, type: :int64, json_name: "iosAppStoreId"
  field :formatted_price, 15, type: :string, json_name: "formattedPrice"
  field :formatted_sale_price, 16, type: :string, json_name: "formattedSalePrice"
  field :similar_property_ids, 17, repeated: true, type: :string, json_name: "similarPropertyIds"
end

defmodule Google.Ads.Googleads.V17.Common.DynamicFlightsAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :destination_id, 1, type: :string, json_name: "destinationId", deprecated: false
  field :origin_id, 2, type: :string, json_name: "originId"
  field :flight_description, 3, type: :string, json_name: "flightDescription", deprecated: false
  field :image_url, 4, type: :string, json_name: "imageUrl"
  field :destination_name, 5, type: :string, json_name: "destinationName"
  field :origin_name, 6, type: :string, json_name: "originName"
  field :flight_price, 7, type: :string, json_name: "flightPrice"
  field :flight_sale_price, 8, type: :string, json_name: "flightSalePrice"
  field :formatted_price, 9, type: :string, json_name: "formattedPrice"
  field :formatted_sale_price, 10, type: :string, json_name: "formattedSalePrice"
  field :android_app_link, 11, type: :string, json_name: "androidAppLink"
  field :ios_app_link, 12, type: :string, json_name: "iosAppLink"
  field :ios_app_store_id, 13, type: :int64, json_name: "iosAppStoreId"

  field :similar_destination_ids, 14,
    repeated: true,
    type: :string,
    json_name: "similarDestinationIds"

  field :custom_mapping, 15, type: :string, json_name: "customMapping"
end

defmodule Google.Ads.Googleads.V17.Common.DemandGenCarouselCardAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :marketing_image_asset, 1, type: :string, json_name: "marketingImageAsset"
  field :square_marketing_image_asset, 2, type: :string, json_name: "squareMarketingImageAsset"

  field :portrait_marketing_image_asset, 3,
    type: :string,
    json_name: "portraitMarketingImageAsset"

  field :headline, 4, type: :string, deprecated: false
  field :call_to_action_text, 5, type: :string, json_name: "callToActionText"
end

defmodule Google.Ads.Googleads.V17.Common.DynamicTravelAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :destination_id, 1, type: :string, json_name: "destinationId", deprecated: false
  field :origin_id, 2, type: :string, json_name: "originId"
  field :title, 3, type: :string, deprecated: false
  field :destination_name, 4, type: :string, json_name: "destinationName"
  field :destination_address, 5, type: :string, json_name: "destinationAddress"
  field :origin_name, 6, type: :string, json_name: "originName"
  field :price, 7, type: :string
  field :sale_price, 8, type: :string, json_name: "salePrice"
  field :formatted_price, 9, type: :string, json_name: "formattedPrice"
  field :formatted_sale_price, 10, type: :string, json_name: "formattedSalePrice"
  field :category, 11, type: :string
  field :contextual_keywords, 12, repeated: true, type: :string, json_name: "contextualKeywords"

  field :similar_destination_ids, 13,
    repeated: true,
    type: :string,
    json_name: "similarDestinationIds"

  field :image_url, 14, type: :string, json_name: "imageUrl"
  field :android_app_link, 15, type: :string, json_name: "androidAppLink"
  field :ios_app_link, 16, type: :string, json_name: "iosAppLink"
  field :ios_app_store_id, 17, type: :int64, json_name: "iosAppStoreId"
end

defmodule Google.Ads.Googleads.V17.Common.DynamicLocalAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :deal_id, 1, type: :string, json_name: "dealId", deprecated: false
  field :deal_name, 2, type: :string, json_name: "dealName", deprecated: false
  field :subtitle, 3, type: :string
  field :description, 4, type: :string
  field :price, 5, type: :string
  field :sale_price, 6, type: :string, json_name: "salePrice"
  field :image_url, 7, type: :string, json_name: "imageUrl"
  field :address, 8, type: :string
  field :category, 9, type: :string
  field :contextual_keywords, 10, repeated: true, type: :string, json_name: "contextualKeywords"
  field :formatted_price, 11, type: :string, json_name: "formattedPrice"
  field :formatted_sale_price, 12, type: :string, json_name: "formattedSalePrice"
  field :android_app_link, 13, type: :string, json_name: "androidAppLink"
  field :similar_deal_ids, 14, repeated: true, type: :string, json_name: "similarDealIds"
  field :ios_app_link, 15, type: :string, json_name: "iosAppLink"
  field :ios_app_store_id, 16, type: :int64, json_name: "iosAppStoreId"
end

defmodule Google.Ads.Googleads.V17.Common.DynamicJobsAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :job_id, 1, type: :string, json_name: "jobId", deprecated: false
  field :location_id, 2, type: :string, json_name: "locationId"
  field :job_title, 3, type: :string, json_name: "jobTitle", deprecated: false
  field :job_subtitle, 4, type: :string, json_name: "jobSubtitle"
  field :description, 5, type: :string
  field :image_url, 6, type: :string, json_name: "imageUrl"
  field :job_category, 7, type: :string, json_name: "jobCategory"
  field :contextual_keywords, 8, repeated: true, type: :string, json_name: "contextualKeywords"
  field :address, 9, type: :string
  field :salary, 10, type: :string
  field :android_app_link, 11, type: :string, json_name: "androidAppLink"
  field :similar_job_ids, 12, repeated: true, type: :string, json_name: "similarJobIds"
  field :ios_app_link, 13, type: :string, json_name: "iosAppLink"
  field :ios_app_store_id, 14, type: :int64, json_name: "iosAppStoreId"
end

defmodule Google.Ads.Googleads.V17.Common.LocationAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :place_id, 1, type: :string, json_name: "placeId"

  field :business_profile_locations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.BusinessProfileLocation,
    json_name: "businessProfileLocations"

  field :location_ownership_type, 3,
    type: Google.Ads.Googleads.V17.Enums.LocationOwnershipTypeEnum.LocationOwnershipType,
    json_name: "locationOwnershipType",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Common.BusinessProfileLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :labels, 1, repeated: true, type: :string
  field :store_code, 2, type: :string, json_name: "storeCode"
  field :listing_id, 3, type: :int64, json_name: "listingId"
end

defmodule Google.Ads.Googleads.V17.Common.HotelPropertyAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :place_id, 1, type: :string, json_name: "placeId"
  field :hotel_address, 2, type: :string, json_name: "hotelAddress"
  field :hotel_name, 3, type: :string, json_name: "hotelName"
end
