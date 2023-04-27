defmodule Google.Ads.Googleads.V13.Resources.FeedMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :target, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :feed, 7, proto3_optional: true, type: :string, deprecated: false

  field :attribute_field_mappings, 5,
    repeated: true,
    type: Google.Ads.Googleads.V13.Resources.AttributeFieldMapping,
    json_name: "attributeFieldMappings",
    deprecated: false

  field :status, 6,
    type: Google.Ads.Googleads.V13.Enums.FeedMappingStatusEnum.FeedMappingStatus,
    enum: true,
    deprecated: false

  field :placeholder_type, 3,
    type: Google.Ads.Googleads.V13.Enums.PlaceholderTypeEnum.PlaceholderType,
    json_name: "placeholderType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :criterion_type, 4,
    type: Google.Ads.Googleads.V13.Enums.FeedMappingCriterionTypeEnum.FeedMappingCriterionType,
    json_name: "criterionType",
    enum: true,
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V13.Resources.AttributeFieldMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :field, 0

  field :feed_attribute_id, 24,
    proto3_optional: true,
    type: :int64,
    json_name: "feedAttributeId",
    deprecated: false

  field :field_id, 25,
    proto3_optional: true,
    type: :int64,
    json_name: "fieldId",
    deprecated: false

  field :sitelink_field, 3,
    type: Google.Ads.Googleads.V13.Enums.SitelinkPlaceholderFieldEnum.SitelinkPlaceholderField,
    json_name: "sitelinkField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :call_field, 4,
    type: Google.Ads.Googleads.V13.Enums.CallPlaceholderFieldEnum.CallPlaceholderField,
    json_name: "callField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :app_field, 5,
    type: Google.Ads.Googleads.V13.Enums.AppPlaceholderFieldEnum.AppPlaceholderField,
    json_name: "appField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :location_field, 6,
    type: Google.Ads.Googleads.V13.Enums.LocationPlaceholderFieldEnum.LocationPlaceholderField,
    json_name: "locationField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :affiliate_location_field, 7,
    type:
      Google.Ads.Googleads.V13.Enums.AffiliateLocationPlaceholderFieldEnum.AffiliateLocationPlaceholderField,
    json_name: "affiliateLocationField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :callout_field, 8,
    type: Google.Ads.Googleads.V13.Enums.CalloutPlaceholderFieldEnum.CalloutPlaceholderField,
    json_name: "calloutField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :structured_snippet_field, 9,
    type:
      Google.Ads.Googleads.V13.Enums.StructuredSnippetPlaceholderFieldEnum.StructuredSnippetPlaceholderField,
    json_name: "structuredSnippetField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :message_field, 10,
    type: Google.Ads.Googleads.V13.Enums.MessagePlaceholderFieldEnum.MessagePlaceholderField,
    json_name: "messageField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :price_field, 11,
    type: Google.Ads.Googleads.V13.Enums.PricePlaceholderFieldEnum.PricePlaceholderField,
    json_name: "priceField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :promotion_field, 12,
    type: Google.Ads.Googleads.V13.Enums.PromotionPlaceholderFieldEnum.PromotionPlaceholderField,
    json_name: "promotionField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :ad_customizer_field, 13,
    type:
      Google.Ads.Googleads.V13.Enums.AdCustomizerPlaceholderFieldEnum.AdCustomizerPlaceholderField,
    json_name: "adCustomizerField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :dsa_page_feed_field, 14,
    type: Google.Ads.Googleads.V13.Enums.DsaPageFeedCriterionFieldEnum.DsaPageFeedCriterionField,
    json_name: "dsaPageFeedField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :location_extension_targeting_field, 15,
    type:
      Google.Ads.Googleads.V13.Enums.LocationExtensionTargetingCriterionFieldEnum.LocationExtensionTargetingCriterionField,
    json_name: "locationExtensionTargetingField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :education_field, 16,
    type: Google.Ads.Googleads.V13.Enums.EducationPlaceholderFieldEnum.EducationPlaceholderField,
    json_name: "educationField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :flight_field, 17,
    type: Google.Ads.Googleads.V13.Enums.FlightPlaceholderFieldEnum.FlightPlaceholderField,
    json_name: "flightField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :custom_field, 18,
    type: Google.Ads.Googleads.V13.Enums.CustomPlaceholderFieldEnum.CustomPlaceholderField,
    json_name: "customField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :hotel_field, 19,
    type: Google.Ads.Googleads.V13.Enums.HotelPlaceholderFieldEnum.HotelPlaceholderField,
    json_name: "hotelField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :real_estate_field, 20,
    type:
      Google.Ads.Googleads.V13.Enums.RealEstatePlaceholderFieldEnum.RealEstatePlaceholderField,
    json_name: "realEstateField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :travel_field, 21,
    type: Google.Ads.Googleads.V13.Enums.TravelPlaceholderFieldEnum.TravelPlaceholderField,
    json_name: "travelField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :local_field, 22,
    type: Google.Ads.Googleads.V13.Enums.LocalPlaceholderFieldEnum.LocalPlaceholderField,
    json_name: "localField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :job_field, 23,
    type: Google.Ads.Googleads.V13.Enums.JobPlaceholderFieldEnum.JobPlaceholderField,
    json_name: "jobField",
    enum: true,
    oneof: 0,
    deprecated: false

  field :image_field, 26,
    type: Google.Ads.Googleads.V13.Enums.ImagePlaceholderFieldEnum.ImagePlaceholderField,
    json_name: "imageField",
    enum: true,
    oneof: 0,
    deprecated: false
end