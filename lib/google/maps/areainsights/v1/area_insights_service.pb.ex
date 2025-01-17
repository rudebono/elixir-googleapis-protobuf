defmodule Google.Maps.Areainsights.V1.Insight do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :INSIGHT_UNSPECIFIED, 0
  field :INSIGHT_COUNT, 1
  field :INSIGHT_PLACES, 2
end

defmodule Google.Maps.Areainsights.V1.OperatingStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OPERATING_STATUS_UNSPECIFIED, 0
  field :OPERATING_STATUS_OPERATIONAL, 1
  field :OPERATING_STATUS_PERMANENTLY_CLOSED, 3
  field :OPERATING_STATUS_TEMPORARILY_CLOSED, 4
end

defmodule Google.Maps.Areainsights.V1.PriceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :PRICE_LEVEL_UNSPECIFIED, 0
  field :PRICE_LEVEL_FREE, 1
  field :PRICE_LEVEL_INEXPENSIVE, 2
  field :PRICE_LEVEL_MODERATE, 3
  field :PRICE_LEVEL_EXPENSIVE, 4
  field :PRICE_LEVEL_VERY_EXPENSIVE, 5
end

defmodule Google.Maps.Areainsights.V1.ComputeInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :insights, 4,
    repeated: true,
    type: Google.Maps.Areainsights.V1.Insight,
    enum: true,
    deprecated: false

  field :filter, 5, type: Google.Maps.Areainsights.V1.Filter, deprecated: false
end

defmodule Google.Maps.Areainsights.V1.ComputeInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :count, 1, proto3_optional: true, type: :int64

  field :place_insights, 5,
    repeated: true,
    type: Google.Maps.Areainsights.V1.PlaceInsight,
    json_name: "placeInsights"
end

defmodule Google.Maps.Areainsights.V1.PlaceInsight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :place, 1, type: :string, deprecated: false
end

defmodule Google.Maps.Areainsights.V1.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :location_filter, 1,
    type: Google.Maps.Areainsights.V1.LocationFilter,
    json_name: "locationFilter",
    deprecated: false

  field :type_filter, 2,
    type: Google.Maps.Areainsights.V1.TypeFilter,
    json_name: "typeFilter",
    deprecated: false

  field :operating_status, 3,
    repeated: true,
    type: Google.Maps.Areainsights.V1.OperatingStatus,
    json_name: "operatingStatus",
    enum: true,
    deprecated: false

  field :price_levels, 4,
    repeated: true,
    type: Google.Maps.Areainsights.V1.PriceLevel,
    json_name: "priceLevels",
    enum: true,
    deprecated: false

  field :rating_filter, 5,
    type: Google.Maps.Areainsights.V1.RatingFilter,
    json_name: "ratingFilter",
    deprecated: false
end

defmodule Google.Maps.Areainsights.V1.LocationFilter.Circle do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :center, 0

  field :lat_lng, 1, type: Google.Type.LatLng, json_name: "latLng", oneof: 0
  field :place, 2, type: :string, oneof: 0, deprecated: false
  field :radius, 3, type: :int32, deprecated: false
end

defmodule Google.Maps.Areainsights.V1.LocationFilter.Region do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :region, 0

  field :place, 1, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Maps.Areainsights.V1.LocationFilter.CustomArea.Polygon do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :coordinates, 1, repeated: true, type: Google.Type.LatLng, deprecated: false
end

defmodule Google.Maps.Areainsights.V1.LocationFilter.CustomArea do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :polygon, 1,
    type: Google.Maps.Areainsights.V1.LocationFilter.CustomArea.Polygon,
    deprecated: false
end

defmodule Google.Maps.Areainsights.V1.LocationFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :area, 0

  field :circle, 1, type: Google.Maps.Areainsights.V1.LocationFilter.Circle, oneof: 0
  field :region, 2, type: Google.Maps.Areainsights.V1.LocationFilter.Region, oneof: 0

  field :custom_area, 3,
    type: Google.Maps.Areainsights.V1.LocationFilter.CustomArea,
    json_name: "customArea",
    oneof: 0
end

defmodule Google.Maps.Areainsights.V1.TypeFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :included_types, 1,
    repeated: true,
    type: :string,
    json_name: "includedTypes",
    deprecated: false

  field :excluded_types, 2,
    repeated: true,
    type: :string,
    json_name: "excludedTypes",
    deprecated: false

  field :included_primary_types, 3,
    repeated: true,
    type: :string,
    json_name: "includedPrimaryTypes",
    deprecated: false

  field :excluded_primary_types, 4,
    repeated: true,
    type: :string,
    json_name: "excludedPrimaryTypes",
    deprecated: false
end

defmodule Google.Maps.Areainsights.V1.RatingFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :min_rating, 5,
    proto3_optional: true,
    type: :float,
    json_name: "minRating",
    deprecated: false

  field :max_rating, 6,
    proto3_optional: true,
    type: :float,
    json_name: "maxRating",
    deprecated: false
end

defmodule Google.Maps.Areainsights.V1.AreaInsights.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.areainsights.v1.AreaInsights",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ComputeInsights,
      Google.Maps.Areainsights.V1.ComputeInsightsRequest,
      Google.Maps.Areainsights.V1.ComputeInsightsResponse
end

defmodule Google.Maps.Areainsights.V1.AreaInsights.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Areainsights.V1.AreaInsights.Service
end
