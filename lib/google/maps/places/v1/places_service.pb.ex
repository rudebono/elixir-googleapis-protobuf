defmodule Google.Maps.Places.V1.SearchTextRequest.RankPreference do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RANK_PREFERENCE_UNSPECIFIED, 0
  field :DISTANCE, 1
  field :RELEVANCE, 2
end

defmodule Google.Maps.Places.V1.Int32Range do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min, 1, proto3_optional: true, type: :int32
  field :max, 2, proto3_optional: true, type: :int32
end

defmodule Google.Maps.Places.V1.SearchTextRequest.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :rectangle, 1, type: Google.Geo.Type.Viewport, oneof: 0
  field :strict_restriction, 2, type: :bool, json_name: "strictRestriction"
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

  field :location, 5, type: Google.Maps.Places.V1.SearchTextRequest.Location, deprecated: true
  field :included_type, 6, type: :string, json_name: "includedType"
  field :open_now, 7, type: :bool, json_name: "openNow"

  field :price_range, 8,
    type: Google.Maps.Places.V1.Int32Range,
    json_name: "priceRange",
    deprecated: true

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

defmodule Google.Maps.Places.V1.Places.Service do
  @moduledoc false

  use GRPC.Service, name: "google.maps.places.v1.Places", protoc_gen_elixir_version: "0.12.0"

  rpc :SearchText,
      Google.Maps.Places.V1.SearchTextRequest,
      Google.Maps.Places.V1.SearchTextResponse
end

defmodule Google.Maps.Places.V1.Places.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Places.V1.Places.Service
end