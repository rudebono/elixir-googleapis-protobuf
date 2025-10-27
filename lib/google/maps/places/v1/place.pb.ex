defmodule Google.Maps.Places.V1.PriceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PRICE_LEVEL_UNSPECIFIED, 0
  field :PRICE_LEVEL_FREE, 1
  field :PRICE_LEVEL_INEXPENSIVE, 2
  field :PRICE_LEVEL_MODERATE, 3
  field :PRICE_LEVEL_EXPENSIVE, 4
  field :PRICE_LEVEL_VERY_EXPENSIVE, 5
end

defmodule Google.Maps.Places.V1.Place.BusinessStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BUSINESS_STATUS_UNSPECIFIED, 0
  field :OPERATIONAL, 1
  field :CLOSED_TEMPORARILY, 2
  field :CLOSED_PERMANENTLY, 3
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.SecondaryHoursType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SECONDARY_HOURS_TYPE_UNSPECIFIED, 0
  field :DRIVE_THROUGH, 1
  field :HAPPY_HOUR, 2
  field :DELIVERY, 3
  field :TAKEOUT, 4
  field :KITCHEN, 5
  field :BREAKFAST, 6
  field :LUNCH, 7
  field :DINNER, 8
  field :BRUNCH, 9
  field :PICKUP, 10
  field :ACCESS, 11
  field :SENIOR_HOURS, 12
  field :ONLINE_SERVICE_HOURS, 13
end

defmodule Google.Maps.Places.V1.Place.AddressComponent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :long_text, 1, type: :string, json_name: "longText"
  field :short_text, 2, type: :string, json_name: "shortText"
  field :types, 3, repeated: true, type: :string
  field :language_code, 4, type: :string, json_name: "languageCode"
end

defmodule Google.Maps.Places.V1.Place.PlusCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :global_code, 1, type: :string, json_name: "globalCode"
  field :compound_code, 2, type: :string, json_name: "compoundCode"
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.Period.Point do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :day, 1, proto3_optional: true, type: :int32
  field :hour, 2, proto3_optional: true, type: :int32
  field :minute, 3, proto3_optional: true, type: :int32
  field :date, 6, type: Google.Type.Date
  field :truncated, 5, type: :bool
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.Period do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :open, 1, type: Google.Maps.Places.V1.Place.OpeningHours.Period.Point
  field :close, 2, type: Google.Maps.Places.V1.Place.OpeningHours.Period.Point
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.SpecialDay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :date, 1, type: Google.Type.Date
end

defmodule Google.Maps.Places.V1.Place.OpeningHours do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :open_now, 1, proto3_optional: true, type: :bool, json_name: "openNow"
  field :periods, 2, repeated: true, type: Google.Maps.Places.V1.Place.OpeningHours.Period
  field :weekday_descriptions, 3, repeated: true, type: :string, json_name: "weekdayDescriptions"

  field :secondary_hours_type, 4,
    type: Google.Maps.Places.V1.Place.OpeningHours.SecondaryHoursType,
    json_name: "secondaryHoursType",
    enum: true

  field :special_days, 5,
    repeated: true,
    type: Google.Maps.Places.V1.Place.OpeningHours.SpecialDay,
    json_name: "specialDays"

  field :next_open_time, 6, type: Google.Protobuf.Timestamp, json_name: "nextOpenTime"
  field :next_close_time, 7, type: Google.Protobuf.Timestamp, json_name: "nextCloseTime"
end

defmodule Google.Maps.Places.V1.Place.Attribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :provider, 1, type: :string
  field :provider_uri, 2, type: :string, json_name: "providerUri"
end

defmodule Google.Maps.Places.V1.Place.PaymentOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accepts_credit_cards, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "acceptsCreditCards"

  field :accepts_debit_cards, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "acceptsDebitCards"

  field :accepts_cash_only, 3, proto3_optional: true, type: :bool, json_name: "acceptsCashOnly"
  field :accepts_nfc, 4, proto3_optional: true, type: :bool, json_name: "acceptsNfc"
end

defmodule Google.Maps.Places.V1.Place.ParkingOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :free_parking_lot, 1, proto3_optional: true, type: :bool, json_name: "freeParkingLot"
  field :paid_parking_lot, 2, proto3_optional: true, type: :bool, json_name: "paidParkingLot"

  field :free_street_parking, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "freeStreetParking"

  field :paid_street_parking, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "paidStreetParking"

  field :valet_parking, 5, proto3_optional: true, type: :bool, json_name: "valetParking"

  field :free_garage_parking, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "freeGarageParking"

  field :paid_garage_parking, 7,
    proto3_optional: true,
    type: :bool,
    json_name: "paidGarageParking"
end

defmodule Google.Maps.Places.V1.Place.SubDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string
end

defmodule Google.Maps.Places.V1.Place.AccessibilityOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :wheelchair_accessible_parking, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "wheelchairAccessibleParking"

  field :wheelchair_accessible_entrance, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "wheelchairAccessibleEntrance"

  field :wheelchair_accessible_restroom, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "wheelchairAccessibleRestroom"

  field :wheelchair_accessible_seating, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "wheelchairAccessibleSeating"
end

defmodule Google.Maps.Places.V1.Place.GenerativeSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :overview, 1, type: Google.Type.LocalizedText
  field :overview_flag_content_uri, 4, type: :string, json_name: "overviewFlagContentUri"
  field :disclosure_text, 6, type: Google.Type.LocalizedText, json_name: "disclosureText"
end

defmodule Google.Maps.Places.V1.Place.ContainingPlace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string
end

defmodule Google.Maps.Places.V1.Place.ReviewSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: Google.Type.LocalizedText
  field :flag_content_uri, 2, type: :string, json_name: "flagContentUri"
  field :disclosure_text, 3, type: Google.Type.LocalizedText, json_name: "disclosureText"
  field :reviews_uri, 4, type: :string, json_name: "reviewsUri"
end

defmodule Google.Maps.Places.V1.Place.EvChargeAmenitySummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :overview, 1, type: Google.Maps.Places.V1.ContentBlock
  field :coffee, 2, type: Google.Maps.Places.V1.ContentBlock
  field :restaurant, 3, type: Google.Maps.Places.V1.ContentBlock
  field :store, 4, type: Google.Maps.Places.V1.ContentBlock
  field :flag_content_uri, 5, type: :string, json_name: "flagContentUri"
  field :disclosure_text, 6, type: Google.Type.LocalizedText, json_name: "disclosureText"
end

defmodule Google.Maps.Places.V1.Place.NeighborhoodSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :overview, 1, type: Google.Maps.Places.V1.ContentBlock
  field :description, 2, type: Google.Maps.Places.V1.ContentBlock
  field :flag_content_uri, 3, type: :string, json_name: "flagContentUri"
  field :disclosure_text, 4, type: Google.Type.LocalizedText, json_name: "disclosureText"
end

defmodule Google.Maps.Places.V1.Place.ConsumerAlert.Details.Link do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :title, 1, type: :string
  field :uri, 2, type: :string
end

defmodule Google.Maps.Places.V1.Place.ConsumerAlert.Details do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :title, 1, type: :string
  field :description, 2, type: :string

  field :about_link, 3,
    type: Google.Maps.Places.V1.Place.ConsumerAlert.Details.Link,
    json_name: "aboutLink"
end

defmodule Google.Maps.Places.V1.Place.ConsumerAlert do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :overview, 1, type: :string
  field :details, 2, type: Google.Maps.Places.V1.Place.ConsumerAlert.Details
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Maps.Places.V1.Place do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :display_name, 31, type: Google.Type.LocalizedText, json_name: "displayName"
  field :types, 5, repeated: true, type: :string
  field :primary_type, 50, type: :string, json_name: "primaryType"

  field :primary_type_display_name, 32,
    type: Google.Type.LocalizedText,
    json_name: "primaryTypeDisplayName"

  field :national_phone_number, 7, type: :string, json_name: "nationalPhoneNumber"
  field :international_phone_number, 8, type: :string, json_name: "internationalPhoneNumber"
  field :formatted_address, 9, type: :string, json_name: "formattedAddress"
  field :short_formatted_address, 51, type: :string, json_name: "shortFormattedAddress"
  field :postal_address, 90, type: Google.Type.PostalAddress, json_name: "postalAddress"

  field :address_components, 10,
    repeated: true,
    type: Google.Maps.Places.V1.Place.AddressComponent,
    json_name: "addressComponents"

  field :plus_code, 11, type: Google.Maps.Places.V1.Place.PlusCode, json_name: "plusCode"
  field :location, 12, type: Google.Type.LatLng
  field :viewport, 13, type: Google.Geo.Type.Viewport
  field :rating, 14, type: :double
  field :google_maps_uri, 15, type: :string, json_name: "googleMapsUri"
  field :website_uri, 16, type: :string, json_name: "websiteUri"
  field :reviews, 53, repeated: true, type: Google.Maps.Places.V1.Review

  field :regular_opening_hours, 21,
    type: Google.Maps.Places.V1.Place.OpeningHours,
    json_name: "regularOpeningHours"

  field :utc_offset_minutes, 22,
    proto3_optional: true,
    type: :int32,
    json_name: "utcOffsetMinutes"

  field :time_zone, 88, type: Google.Type.TimeZone, json_name: "timeZone"
  field :photos, 54, repeated: true, type: Google.Maps.Places.V1.Photo
  field :adr_format_address, 24, type: :string, json_name: "adrFormatAddress"

  field :business_status, 25,
    type: Google.Maps.Places.V1.Place.BusinessStatus,
    json_name: "businessStatus",
    enum: true

  field :price_level, 26,
    type: Google.Maps.Places.V1.PriceLevel,
    json_name: "priceLevel",
    enum: true

  field :attributions, 27, repeated: true, type: Google.Maps.Places.V1.Place.Attribution
  field :user_rating_count, 28, proto3_optional: true, type: :int32, json_name: "userRatingCount"
  field :icon_mask_base_uri, 29, type: :string, json_name: "iconMaskBaseUri"
  field :icon_background_color, 30, type: :string, json_name: "iconBackgroundColor"
  field :takeout, 33, proto3_optional: true, type: :bool
  field :delivery, 34, proto3_optional: true, type: :bool
  field :dine_in, 35, proto3_optional: true, type: :bool, json_name: "dineIn"
  field :curbside_pickup, 36, proto3_optional: true, type: :bool, json_name: "curbsidePickup"
  field :reservable, 38, proto3_optional: true, type: :bool
  field :serves_breakfast, 39, proto3_optional: true, type: :bool, json_name: "servesBreakfast"
  field :serves_lunch, 40, proto3_optional: true, type: :bool, json_name: "servesLunch"
  field :serves_dinner, 41, proto3_optional: true, type: :bool, json_name: "servesDinner"
  field :serves_beer, 42, proto3_optional: true, type: :bool, json_name: "servesBeer"
  field :serves_wine, 43, proto3_optional: true, type: :bool, json_name: "servesWine"
  field :serves_brunch, 44, proto3_optional: true, type: :bool, json_name: "servesBrunch"

  field :serves_vegetarian_food, 45,
    proto3_optional: true,
    type: :bool,
    json_name: "servesVegetarianFood"

  field :current_opening_hours, 46,
    type: Google.Maps.Places.V1.Place.OpeningHours,
    json_name: "currentOpeningHours"

  field :current_secondary_opening_hours, 47,
    repeated: true,
    type: Google.Maps.Places.V1.Place.OpeningHours,
    json_name: "currentSecondaryOpeningHours"

  field :regular_secondary_opening_hours, 49,
    repeated: true,
    type: Google.Maps.Places.V1.Place.OpeningHours,
    json_name: "regularSecondaryOpeningHours"

  field :editorial_summary, 52, type: Google.Type.LocalizedText, json_name: "editorialSummary"
  field :outdoor_seating, 55, proto3_optional: true, type: :bool, json_name: "outdoorSeating"
  field :live_music, 56, proto3_optional: true, type: :bool, json_name: "liveMusic"
  field :menu_for_children, 57, proto3_optional: true, type: :bool, json_name: "menuForChildren"
  field :serves_cocktails, 58, proto3_optional: true, type: :bool, json_name: "servesCocktails"
  field :serves_dessert, 59, proto3_optional: true, type: :bool, json_name: "servesDessert"
  field :serves_coffee, 60, proto3_optional: true, type: :bool, json_name: "servesCoffee"
  field :good_for_children, 62, proto3_optional: true, type: :bool, json_name: "goodForChildren"
  field :allows_dogs, 63, proto3_optional: true, type: :bool, json_name: "allowsDogs"
  field :restroom, 64, proto3_optional: true, type: :bool
  field :good_for_groups, 65, proto3_optional: true, type: :bool, json_name: "goodForGroups"

  field :good_for_watching_sports, 66,
    proto3_optional: true,
    type: :bool,
    json_name: "goodForWatchingSports"

  field :payment_options, 67,
    type: Google.Maps.Places.V1.Place.PaymentOptions,
    json_name: "paymentOptions"

  field :parking_options, 70,
    type: Google.Maps.Places.V1.Place.ParkingOptions,
    json_name: "parkingOptions"

  field :sub_destinations, 71,
    repeated: true,
    type: Google.Maps.Places.V1.Place.SubDestination,
    json_name: "subDestinations"

  field :accessibility_options, 72,
    proto3_optional: true,
    type: Google.Maps.Places.V1.Place.AccessibilityOptions,
    json_name: "accessibilityOptions"

  field :fuel_options, 78, type: Google.Maps.Places.V1.FuelOptions, json_name: "fuelOptions"

  field :ev_charge_options, 79,
    type: Google.Maps.Places.V1.EVChargeOptions,
    json_name: "evChargeOptions"

  field :generative_summary, 80,
    type: Google.Maps.Places.V1.Place.GenerativeSummary,
    json_name: "generativeSummary"

  field :containing_places, 82,
    repeated: true,
    type: Google.Maps.Places.V1.Place.ContainingPlace,
    json_name: "containingPlaces"

  field :pure_service_area_business, 83,
    proto3_optional: true,
    type: :bool,
    json_name: "pureServiceAreaBusiness"

  field :address_descriptor, 84,
    type: Google.Maps.Places.V1.AddressDescriptor,
    json_name: "addressDescriptor"

  field :price_range, 86, type: Google.Maps.Places.V1.PriceRange, json_name: "priceRange"

  field :review_summary, 87,
    type: Google.Maps.Places.V1.Place.ReviewSummary,
    json_name: "reviewSummary"

  field :ev_charge_amenity_summary, 89,
    type: Google.Maps.Places.V1.Place.EvChargeAmenitySummary,
    json_name: "evChargeAmenitySummary"

  field :neighborhood_summary, 91,
    type: Google.Maps.Places.V1.Place.NeighborhoodSummary,
    json_name: "neighborhoodSummary"

  field :consumer_alert, 92,
    type: Google.Maps.Places.V1.Place.ConsumerAlert,
    json_name: "consumerAlert"

  field :moved_place, 93, type: :string, json_name: "movedPlace", deprecated: false
  field :moved_place_id, 94, type: :string, json_name: "movedPlaceId"
end
