defmodule Google.Maps.Places.V1.PriceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PRICE_LEVEL_UNSPECIFIED, 0
  field :FREE, 1
  field :INEXPENSIVE, 2
  field :MODERATE, 3
  field :EXPENSIVE, 4
  field :VERY_EXPENSIVE, 5
end

defmodule Google.Maps.Places.V1.Place.BusinessStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BUSINESS_STATUS_UNSPECIFIED, 0
  field :OPERATIONAL, 1
  field :CLOSED_TEMPORARILY, 2
  field :CLOSED_PERMANENTLY, 3
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.SecondaryHourType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SECONDARY_HOUR_TYPE_UNSPECIFIED, 0
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

  field :long_text, 1, type: :string, json_name: "longText"
  field :short_text, 2, type: :string, json_name: "shortText"
  field :types, 3, repeated: true, type: :string
  field :language_code, 4, type: :string, json_name: "languageCode"
end

defmodule Google.Maps.Places.V1.Place.PlusCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :global_code, 1, type: :string, json_name: "globalCode"
  field :compound_code, 2, type: :string, json_name: "compoundCode"
end

defmodule Google.Maps.Places.V1.Place.Review do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :publish_time, 1, type: Google.Protobuf.Timestamp, json_name: "publishTime"

  field :relative_publish_time_description, 2,
    type: :string,
    json_name: "relativePublishTimeDescription"

  field :text, 9, type: Google.Type.LocalizedText
  field :author, 4, type: :string
  field :author_uri, 5, type: :string, json_name: "authorUri"
  field :author_photo_uri, 6, type: :string, json_name: "authorPhotoUri"
  field :rating, 7, type: :double
  field :original_language_code, 10, type: :string, json_name: "originalLanguageCode"
  field :translated, 11, type: :bool
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.OpeningHoursPeriod.OpeningHoursPoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :day, 1, proto3_optional: true, type: :int32
  field :hour, 2, proto3_optional: true, type: :int32
  field :minute, 3, proto3_optional: true, type: :int32
  field :date_deprecated, 4, type: :string, json_name: "dateDeprecated", deprecated: true
  field :date, 6, type: Google.Type.Date
  field :truncated, 5, type: :bool
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.OpeningHoursPeriod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :open, 1,
    type: Google.Maps.Places.V1.Place.OpeningHours.OpeningHoursPeriod.OpeningHoursPoint

  field :close, 2,
    type: Google.Maps.Places.V1.Place.OpeningHours.OpeningHoursPeriod.OpeningHoursPoint
end

defmodule Google.Maps.Places.V1.Place.OpeningHours.SpecialDay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :date, 1, type: Google.Type.Date
end

defmodule Google.Maps.Places.V1.Place.OpeningHours do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :open_now, 1, type: :bool, json_name: "openNow"

  field :periods, 2,
    repeated: true,
    type: Google.Maps.Places.V1.Place.OpeningHours.OpeningHoursPeriod

  field :weekday_descriptions, 3, repeated: true, type: :string, json_name: "weekdayDescriptions"

  field :secondary_hour_type, 4,
    type: Google.Maps.Places.V1.Place.OpeningHours.SecondaryHourType,
    json_name: "secondaryHourType",
    enum: true

  field :special_days, 5,
    repeated: true,
    type: Google.Maps.Places.V1.Place.OpeningHours.SpecialDay,
    json_name: "specialDays"
end

defmodule Google.Maps.Places.V1.Place.Attribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :provider, 1, type: :string
  field :provider_uri, 2, type: :string, json_name: "providerUri"
end

defmodule Google.Maps.Places.V1.Place.EditorialSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :overview, 1, type: Google.Type.LocalizedText
end

defmodule Google.Maps.Places.V1.Place do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 2, type: :string, deprecated: false
  field :display_name, 31, type: Google.Type.LocalizedText, json_name: "displayName"
  field :types, 5, repeated: true, type: :string
  field :national_phone_number, 7, type: :string, json_name: "nationalPhoneNumber"
  field :international_phone_number, 8, type: :string, json_name: "internationalPhoneNumber"
  field :formatted_address, 9, type: :string, json_name: "formattedAddress"

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
  field :reviews, 20, repeated: true, type: Google.Maps.Places.V1.Place.Review

  field :opening_hours, 21,
    type: Google.Maps.Places.V1.Place.OpeningHours,
    json_name: "openingHours"

  field :utc_offset_minutes, 22, type: :int32, json_name: "utcOffsetMinutes"
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
  field :user_rating_count, 28, type: :int32, json_name: "userRatingCount"
  field :icon_mask_base_uri, 29, type: :string, json_name: "iconMaskBaseUri"
  field :icon_background_color, 30, type: :string, json_name: "iconBackgroundColor"
  field :takeout, 33, proto3_optional: true, type: :bool
  field :delivery, 34, proto3_optional: true, type: :bool
  field :dine_in, 35, proto3_optional: true, type: :bool, json_name: "dineIn"
  field :curbside_pickup, 36, proto3_optional: true, type: :bool, json_name: "curbsidePickup"

  field :wheelchair_accessible_entrance, 37,
    proto3_optional: true,
    type: :bool,
    json_name: "wheelchairAccessibleEntrance"

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

  field :secondary_opening_hours, 49,
    repeated: true,
    type: Google.Maps.Places.V1.Place.OpeningHours,
    json_name: "secondaryOpeningHours"

  field :editorial_summary, 48,
    type: Google.Maps.Places.V1.Place.EditorialSummary,
    json_name: "editorialSummary"
end