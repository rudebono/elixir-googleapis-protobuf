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
end

defmodule Google.Maps.Places.V1.Places.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Places.V1.Places.Service
end