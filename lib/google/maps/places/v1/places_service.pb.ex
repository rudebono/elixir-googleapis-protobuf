defmodule Google.Maps.Places.V1.SearchNearbyRequest.RankPreference do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RANK_PREFERENCE_UNSPECIFIED, 0
  field :DISTANCE, 1
  field :POPULARITY, 2
end

defmodule Google.Maps.Places.V1.SearchTextRequest.RankPreference do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RANK_PREFERENCE_UNSPECIFIED, 0
  field :DISTANCE, 1
  field :RELEVANCE, 2
end

defmodule Google.Maps.Places.V1.SearchNearbyRequest.LocationRestriction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :circle, 2, type: Google.Maps.Places.V1.Circle, oneof: 0
end

defmodule Google.Maps.Places.V1.SearchNearbyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :region_code, 2, type: :string, json_name: "regionCode"
  field :included_types, 3, repeated: true, type: :string, json_name: "includedTypes"
  field :excluded_types, 4, repeated: true, type: :string, json_name: "excludedTypes"

  field :included_primary_types, 5,
    repeated: true,
    type: :string,
    json_name: "includedPrimaryTypes"

  field :excluded_primary_types, 6,
    repeated: true,
    type: :string,
    json_name: "excludedPrimaryTypes"

  field :max_result_count, 7, type: :int32, json_name: "maxResultCount"

  field :location_restriction, 8,
    type: Google.Maps.Places.V1.SearchNearbyRequest.LocationRestriction,
    json_name: "locationRestriction",
    deprecated: false

  field :rank_preference, 9,
    type: Google.Maps.Places.V1.SearchNearbyRequest.RankPreference,
    json_name: "rankPreference",
    enum: true
end

defmodule Google.Maps.Places.V1.SearchNearbyResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :places, 1, repeated: true, type: Google.Maps.Places.V1.Place
end

defmodule Google.Maps.Places.V1.SearchTextRequest.LocationBias do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :rectangle, 1, type: Google.Geo.Type.Viewport, oneof: 0
  field :circle, 2, type: Google.Maps.Places.V1.Circle, oneof: 0
end

defmodule Google.Maps.Places.V1.SearchTextRequest.LocationRestriction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :rectangle, 1, type: Google.Geo.Type.Viewport, oneof: 0
end

defmodule Google.Maps.Places.V1.SearchTextRequest.EVOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :minimum_charging_rate_kw, 1,
    type: :double,
    json_name: "minimumChargingRateKw",
    deprecated: false

  field :connector_types, 2,
    repeated: true,
    type: Google.Maps.Places.V1.EVConnectorType,
    json_name: "connectorTypes",
    enum: true,
    deprecated: false
end

defmodule Google.Maps.Places.V1.SearchTextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text_query, 1, type: :string, json_name: "textQuery", deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :region_code, 3, type: :string, json_name: "regionCode"

  field :rank_preference, 4,
    type: Google.Maps.Places.V1.SearchTextRequest.RankPreference,
    json_name: "rankPreference",
    enum: true

  field :included_type, 6, type: :string, json_name: "includedType"
  field :open_now, 7, type: :bool, json_name: "openNow"
  field :min_rating, 9, type: :double, json_name: "minRating"
  field :max_result_count, 10, type: :int32, json_name: "maxResultCount"

  field :price_levels, 11,
    repeated: true,
    type: Google.Maps.Places.V1.PriceLevel,
    json_name: "priceLevels",
    enum: true

  field :strict_type_filtering, 12, type: :bool, json_name: "strictTypeFiltering"

  field :location_bias, 13,
    type: Google.Maps.Places.V1.SearchTextRequest.LocationBias,
    json_name: "locationBias"

  field :location_restriction, 14,
    type: Google.Maps.Places.V1.SearchTextRequest.LocationRestriction,
    json_name: "locationRestriction"

  field :ev_options, 15,
    type: Google.Maps.Places.V1.SearchTextRequest.EVOptions,
    json_name: "evOptions",
    deprecated: false
end

defmodule Google.Maps.Places.V1.SearchTextResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :places, 1, repeated: true, type: Google.Maps.Places.V1.Place
end

defmodule Google.Maps.Places.V1.GetPhotoMediaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :max_width_px, 2, type: :int32, json_name: "maxWidthPx", deprecated: false
  field :max_height_px, 3, type: :int32, json_name: "maxHeightPx", deprecated: false
  field :skip_http_redirect, 4, type: :bool, json_name: "skipHttpRedirect", deprecated: false
end

defmodule Google.Maps.Places.V1.PhotoMedia do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :photo_uri, 2, type: :string, json_name: "photoUri"
end

defmodule Google.Maps.Places.V1.GetPlaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
  field :region_code, 3, type: :string, json_name: "regionCode", deprecated: false
  field :session_token, 4, type: :string, json_name: "sessionToken", deprecated: false
end

defmodule Google.Maps.Places.V1.AutocompletePlacesRequest.LocationBias do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :rectangle, 1, type: Google.Geo.Type.Viewport, oneof: 0
  field :circle, 2, type: Google.Maps.Places.V1.Circle, oneof: 0
end

defmodule Google.Maps.Places.V1.AutocompletePlacesRequest.LocationRestriction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :rectangle, 1, type: Google.Geo.Type.Viewport, oneof: 0
  field :circle, 2, type: Google.Maps.Places.V1.Circle, oneof: 0
end

defmodule Google.Maps.Places.V1.AutocompletePlacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input, 1, type: :string, deprecated: false

  field :location_bias, 2,
    type: Google.Maps.Places.V1.AutocompletePlacesRequest.LocationBias,
    json_name: "locationBias",
    deprecated: false

  field :location_restriction, 3,
    type: Google.Maps.Places.V1.AutocompletePlacesRequest.LocationRestriction,
    json_name: "locationRestriction",
    deprecated: false

  field :included_primary_types, 4,
    repeated: true,
    type: :string,
    json_name: "includedPrimaryTypes",
    deprecated: false

  field :included_region_codes, 5,
    repeated: true,
    type: :string,
    json_name: "includedRegionCodes",
    deprecated: false

  field :language_code, 6, type: :string, json_name: "languageCode", deprecated: false
  field :region_code, 7, type: :string, json_name: "regionCode", deprecated: false
  field :origin, 8, type: Google.Type.LatLng, deprecated: false
  field :input_offset, 9, type: :int32, json_name: "inputOffset", deprecated: false

  field :include_query_predictions, 10,
    type: :bool,
    json_name: "includeQueryPredictions",
    deprecated: false

  field :session_token, 11, type: :string, json_name: "sessionToken", deprecated: false
end

defmodule Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.StringRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_offset, 1, type: :int32, json_name: "startOffset"
  field :end_offset, 2, type: :int32, json_name: "endOffset"
end

defmodule Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.FormattableText do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string

  field :matches, 2,
    repeated: true,
    type: Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.StringRange
end

defmodule Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.StructuredFormat do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :main_text, 1,
    type: Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.FormattableText,
    json_name: "mainText"

  field :secondary_text, 2,
    type: Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.FormattableText,
    json_name: "secondaryText"
end

defmodule Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.PlacePrediction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :place, 1, type: :string, deprecated: false
  field :place_id, 2, type: :string, json_name: "placeId"

  field :text, 3,
    type: Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.FormattableText

  field :structured_format, 4,
    type: Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.StructuredFormat,
    json_name: "structuredFormat"

  field :types, 5, repeated: true, type: :string
  field :distance_meters, 6, type: :int32, json_name: "distanceMeters"
end

defmodule Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.QueryPrediction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1,
    type: Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.FormattableText

  field :structured_format, 2,
    type: Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.StructuredFormat,
    json_name: "structuredFormat"
end

defmodule Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :kind, 0

  field :place_prediction, 1,
    type: Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.PlacePrediction,
    json_name: "placePrediction",
    oneof: 0

  field :query_prediction, 2,
    type: Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion.QueryPrediction,
    json_name: "queryPrediction",
    oneof: 0
end

defmodule Google.Maps.Places.V1.AutocompletePlacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :suggestions, 1,
    repeated: true,
    type: Google.Maps.Places.V1.AutocompletePlacesResponse.Suggestion
end

defmodule Google.Maps.Places.V1.Places.Service do
  @moduledoc false

  use GRPC.Service, name: "google.maps.places.v1.Places", protoc_gen_elixir_version: "0.12.0"

  rpc :SearchNearby,
      Google.Maps.Places.V1.SearchNearbyRequest,
      Google.Maps.Places.V1.SearchNearbyResponse

  rpc :SearchText,
      Google.Maps.Places.V1.SearchTextRequest,
      Google.Maps.Places.V1.SearchTextResponse

  rpc :GetPhotoMedia, Google.Maps.Places.V1.GetPhotoMediaRequest, Google.Maps.Places.V1.PhotoMedia

  rpc :GetPlace, Google.Maps.Places.V1.GetPlaceRequest, Google.Maps.Places.V1.Place

  rpc :AutocompletePlaces,
      Google.Maps.Places.V1.AutocompletePlacesRequest,
      Google.Maps.Places.V1.AutocompletePlacesResponse
end

defmodule Google.Maps.Places.V1.Places.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Places.V1.Places.Service
end