defmodule Google.Maps.Places.V1.PriceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PRICE_LEVEL_UNSPECIFIED, 0
  field :PRICE_LEVEL_FREE, 1
  field :PRICE_LEVEL_INEXPENSIVE, 2
  field :PRICE_LEVEL_MODERATE, 3
  field :PRICE_LEVEL_EXPENSIVE, 4
  field :PRICE_LEVEL_VERY_EXPENSIVE, 5
end

defmodule Google.Maps.Places.V1.Place.BusinessStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BUSINESS_STATUS_UNSPECIFIED, 0
  field :OPERATIONAL, 1
  field :CLOSED_TEMPORARILY, 2
  field :CLOSED_PERMANENTLY, 3
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.SecondaryHoursType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :long_text, 1, type: :string, json_name: "longText", deprecated: false
  field :short_text, 2, type: :string, json_name: "shortText", deprecated: false
  field :types, 3, repeated: true, type: :string, deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Maps.Places.V1.Place.PlusCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :global_code, 1, type: :string, json_name: "globalCode", deprecated: false
  field :compound_code, 2, type: :string, json_name: "compoundCode", deprecated: false
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.Period.Point do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :day, 1, proto3_optional: true, type: :int32, deprecated: false
  field :hour, 2, proto3_optional: true, type: :int32, deprecated: false
  field :minute, 3, proto3_optional: true, type: :int32, deprecated: false
  field :date, 6, type: Google.Type.Date, deprecated: false
  field :truncated, 5, type: :bool, deprecated: false
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.Period do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :open, 1, type: Google.Maps.Places.V1.Place.OpeningHours.Period.Point, deprecated: false
  field :close, 2, type: Google.Maps.Places.V1.Place.OpeningHours.Period.Point, deprecated: false
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.SpecialDay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :date, 1, type: Google.Type.Date, deprecated: false
end

defmodule Google.Maps.Places.V1.Place.OpeningHours do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :open_now, 1, proto3_optional: true, type: :bool, json_name: "openNow", deprecated: false

  field :periods, 2,
    repeated: true,
    type: Google.Maps.Places.V1.Place.OpeningHours.Period,
    deprecated: false

  field :weekday_descriptions, 3,
    repeated: true,
    type: :string,
    json_name: "weekdayDescriptions",
    deprecated: false

  field :secondary_hours_type, 4,
    type: Google.Maps.Places.V1.Place.OpeningHours.SecondaryHoursType,
    json_name: "secondaryHoursType",
    enum: true,
    deprecated: false

  field :special_days, 5,
    repeated: true,
    type: Google.Maps.Places.V1.Place.OpeningHours.SpecialDay,
    json_name: "specialDays",
    deprecated: false
end

defmodule Google.Maps.Places.V1.Place.Attribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :provider, 1, type: :string, deprecated: false
  field :provider_uri, 2, type: :string, json_name: "providerUri", deprecated: false
end

defmodule Google.Maps.Places.V1.Place.PaymentOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string
end

defmodule Google.Maps.Places.V1.Place.AccessibilityOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :wheelchair_accessible_entrance, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "wheelchairAccessibleEntrance"
end

defmodule Google.Maps.Places.V1.Place do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false

  field :display_name, 31,
    type: Google.Type.LocalizedText,
    json_name: "displayName",
    deprecated: false

  field :types, 5, repeated: true, type: :string, deprecated: false

  field :national_phone_number, 7,
    type: :string,
    json_name: "nationalPhoneNumber",
    deprecated: false

  field :international_phone_number, 8,
    type: :string,
    json_name: "internationalPhoneNumber",
    deprecated: false

  field :formatted_address, 9, type: :string, json_name: "formattedAddress", deprecated: false

  field :address_components, 10,
    repeated: true,
    type: Google.Maps.Places.V1.Place.AddressComponent,
    json_name: "addressComponents",
    deprecated: false

  field :plus_code, 11,
    type: Google.Maps.Places.V1.Place.PlusCode,
    json_name: "plusCode",
    deprecated: false

  field :location, 12, type: Google.Type.LatLng, deprecated: false
  field :viewport, 13, type: Google.Geo.Type.Viewport, deprecated: false
  field :rating, 14, type: :double, deprecated: false
  field :google_maps_uri, 15, type: :string, json_name: "googleMapsUri", deprecated: false
  field :website_uri, 16, type: :string, json_name: "websiteUri", deprecated: false
  field :reviews, 53, repeated: true, type: Google.Maps.Places.V1.Review, deprecated: false

  field :regular_opening_hours, 21,
    type: Google.Maps.Places.V1.Place.OpeningHours,
    json_name: "regularOpeningHours",
    deprecated: false

  field :utc_offset_minutes, 22,
    proto3_optional: true,
    type: :int32,
    json_name: "utcOffsetMinutes",
    deprecated: false

  field :photos, 54, repeated: true, type: Google.Maps.Places.V1.Photo, deprecated: false
  field :adr_format_address, 24, type: :string, json_name: "adrFormatAddress", deprecated: false

  field :business_status, 25,
    type: Google.Maps.Places.V1.Place.BusinessStatus,
    json_name: "businessStatus",
    enum: true,
    deprecated: false

  field :price_level, 26,
    type: Google.Maps.Places.V1.PriceLevel,
    json_name: "priceLevel",
    enum: true,
    deprecated: false

  field :attributions, 27,
    repeated: true,
    type: Google.Maps.Places.V1.Place.Attribution,
    deprecated: false

  field :user_rating_count, 28,
    proto3_optional: true,
    type: :int32,
    json_name: "userRatingCount",
    deprecated: false

  field :icon_mask_base_uri, 29, type: :string, json_name: "iconMaskBaseUri", deprecated: false

  field :icon_background_color, 30,
    type: :string,
    json_name: "iconBackgroundColor",
    deprecated: false

  field :takeout, 33, proto3_optional: true, type: :bool, deprecated: false
  field :delivery, 34, proto3_optional: true, type: :bool, deprecated: false
  field :dine_in, 35, proto3_optional: true, type: :bool, json_name: "dineIn", deprecated: false

  field :curbside_pickup, 36,
    proto3_optional: true,
    type: :bool,
    json_name: "curbsidePickup",
    deprecated: false

  field :reservable, 38, proto3_optional: true, type: :bool, deprecated: false

  field :serves_breakfast, 39,
    proto3_optional: true,
    type: :bool,
    json_name: "servesBreakfast",
    deprecated: false

  field :serves_lunch, 40,
    proto3_optional: true,
    type: :bool,
    json_name: "servesLunch",
    deprecated: false

  field :serves_dinner, 41,
    proto3_optional: true,
    type: :bool,
    json_name: "servesDinner",
    deprecated: false

  field :serves_beer, 42,
    proto3_optional: true,
    type: :bool,
    json_name: "servesBeer",
    deprecated: false

  field :serves_wine, 43,
    proto3_optional: true,
    type: :bool,
    json_name: "servesWine",
    deprecated: false

  field :serves_brunch, 44,
    proto3_optional: true,
    type: :bool,
    json_name: "servesBrunch",
    deprecated: false

  field :serves_vegetarian_food, 45,
    proto3_optional: true,
    type: :bool,
    json_name: "servesVegetarianFood",
    deprecated: false

  field :current_opening_hours, 46,
    type: Google.Maps.Places.V1.Place.OpeningHours,
    json_name: "currentOpeningHours",
    deprecated: false

  field :current_secondary_opening_hours, 47,
    repeated: true,
    type: Google.Maps.Places.V1.Place.OpeningHours,
    json_name: "currentSecondaryOpeningHours",
    deprecated: false

  field :regular_secondary_opening_hours, 49,
    repeated: true,
    type: Google.Maps.Places.V1.Place.OpeningHours,
    json_name: "regularSecondaryOpeningHours",
    deprecated: false

  field :editorial_summary, 52,
    type: Google.Type.LocalizedText,
    json_name: "editorialSummary",
    deprecated: false

  field :outdoor_seating, 55,
    proto3_optional: true,
    type: :bool,
    json_name: "outdoorSeating",
    deprecated: false

  field :live_music, 56,
    proto3_optional: true,
    type: :bool,
    json_name: "liveMusic",
    deprecated: false

  field :menu_for_children, 57,
    proto3_optional: true,
    type: :bool,
    json_name: "menuForChildren",
    deprecated: false

  field :serves_cocktails, 58,
    proto3_optional: true,
    type: :bool,
    json_name: "servesCocktails",
    deprecated: false

  field :serves_dessert, 59,
    proto3_optional: true,
    type: :bool,
    json_name: "servesDessert",
    deprecated: false

  field :serves_coffee, 60,
    proto3_optional: true,
    type: :bool,
    json_name: "servesCoffee",
    deprecated: false

  field :good_for_children, 62,
    proto3_optional: true,
    type: :bool,
    json_name: "goodForChildren",
    deprecated: false

  field :allows_dogs, 63,
    proto3_optional: true,
    type: :bool,
    json_name: "allowsDogs",
    deprecated: false

  field :restroom, 64, proto3_optional: true, type: :bool, deprecated: false

  field :good_for_groups, 65,
    proto3_optional: true,
    type: :bool,
    json_name: "goodForGroups",
    deprecated: false

  field :good_for_watching_sports, 66,
    proto3_optional: true,
    type: :bool,
    json_name: "goodForWatchingSports",
    deprecated: false

  field :payment_options, 67,
    type: Google.Maps.Places.V1.Place.PaymentOptions,
    json_name: "paymentOptions",
    deprecated: false

  field :parking_options, 70,
    type: Google.Maps.Places.V1.Place.ParkingOptions,
    json_name: "parkingOptions",
    deprecated: false

  field :sub_destinations, 71,
    repeated: true,
    type: Google.Maps.Places.V1.Place.SubDestination,
    json_name: "subDestinations",
    deprecated: false

  field :accessibility_options, 72,
    proto3_optional: true,
    type: Google.Maps.Places.V1.Place.AccessibilityOptions,
    json_name: "accessibilityOptions",
    deprecated: false

  field :fuel_options, 78,
    type: Google.Maps.Places.V1.FuelOptions,
    json_name: "fuelOptions",
    deprecated: false

  field :ev_charge_options, 79,
    type: Google.Maps.Places.V1.EVChargeOptions,
    json_name: "evChargeOptions",
    deprecated: false
end