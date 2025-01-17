defmodule Google.Ads.Googleads.V16.Services.SuggestGeoTargetConstantsRequest.LocationNames do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :names, 2, repeated: true, type: :string
end

defmodule Google.Ads.Googleads.V16.Services.SuggestGeoTargetConstantsRequest.GeoTargets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :geo_target_constants, 2, repeated: true, type: :string, json_name: "geoTargetConstants"
end

defmodule Google.Ads.Googleads.V16.Services.SuggestGeoTargetConstantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :query, 0

  field :locale, 6, proto3_optional: true, type: :string
  field :country_code, 7, proto3_optional: true, type: :string, json_name: "countryCode"

  field :location_names, 1,
    type: Google.Ads.Googleads.V16.Services.SuggestGeoTargetConstantsRequest.LocationNames,
    json_name: "locationNames",
    oneof: 0

  field :geo_targets, 2,
    type: Google.Ads.Googleads.V16.Services.SuggestGeoTargetConstantsRequest.GeoTargets,
    json_name: "geoTargets",
    oneof: 0
end

defmodule Google.Ads.Googleads.V16.Services.SuggestGeoTargetConstantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :geo_target_constant_suggestions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V16.Services.GeoTargetConstantSuggestion,
    json_name: "geoTargetConstantSuggestions"
end

defmodule Google.Ads.Googleads.V16.Services.GeoTargetConstantSuggestion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :locale, 6, proto3_optional: true, type: :string
  field :reach, 7, proto3_optional: true, type: :int64
  field :search_term, 8, proto3_optional: true, type: :string, json_name: "searchTerm"

  field :geo_target_constant, 4,
    type: Google.Ads.Googleads.V16.Resources.GeoTargetConstant,
    json_name: "geoTargetConstant"

  field :geo_target_constant_parents, 5,
    repeated: true,
    type: Google.Ads.Googleads.V16.Resources.GeoTargetConstant,
    json_name: "geoTargetConstantParents"
end

defmodule Google.Ads.Googleads.V16.Services.GeoTargetConstantService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v16.services.GeoTargetConstantService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :SuggestGeoTargetConstants,
      Google.Ads.Googleads.V16.Services.SuggestGeoTargetConstantsRequest,
      Google.Ads.Googleads.V16.Services.SuggestGeoTargetConstantsResponse
end

defmodule Google.Ads.Googleads.V16.Services.GeoTargetConstantService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V16.Services.GeoTargetConstantService.Service
end
