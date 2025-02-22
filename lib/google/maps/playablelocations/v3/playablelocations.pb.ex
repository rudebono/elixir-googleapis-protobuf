defmodule Google.Maps.Playablelocations.V3.SamplePlayableLocationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :area_filter, 1,
    type: Google.Maps.Playablelocations.V3.Sample.AreaFilter,
    json_name: "areaFilter",
    deprecated: false

  field :criteria, 2,
    repeated: true,
    type: Google.Maps.Playablelocations.V3.Sample.Criterion,
    deprecated: false
end

defmodule Google.Maps.Playablelocations.V3.SamplePlayableLocationsResponse.LocationsPerGameObjectTypeEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: Google.Maps.Playablelocations.V3.Sample.PlayableLocationList
end

defmodule Google.Maps.Playablelocations.V3.SamplePlayableLocationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :locations_per_game_object_type, 1,
    repeated: true,
    type:
      Google.Maps.Playablelocations.V3.SamplePlayableLocationsResponse.LocationsPerGameObjectTypeEntry,
    json_name: "locationsPerGameObjectType",
    map: true

  field :ttl, 9, type: Google.Protobuf.Duration
end

defmodule Google.Maps.Playablelocations.V3.LogPlayerReportsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :player_reports, 1,
    repeated: true,
    type: Google.Maps.Playablelocations.V3.PlayerReport,
    json_name: "playerReports",
    deprecated: false

  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :client_info, 3,
    type: Google.Maps.Unity.ClientInfo,
    json_name: "clientInfo",
    deprecated: false
end

defmodule Google.Maps.Playablelocations.V3.LogPlayerReportsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Maps.Playablelocations.V3.LogImpressionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :impressions, 1,
    repeated: true,
    type: Google.Maps.Playablelocations.V3.Impression,
    deprecated: false

  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :client_info, 3,
    type: Google.Maps.Unity.ClientInfo,
    json_name: "clientInfo",
    deprecated: false
end

defmodule Google.Maps.Playablelocations.V3.LogImpressionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Maps.Playablelocations.V3.PlayableLocations.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.playablelocations.v3.PlayableLocations",
    protoc_gen_elixir_version: "0.14.1"

  rpc :SamplePlayableLocations,
      Google.Maps.Playablelocations.V3.SamplePlayableLocationsRequest,
      Google.Maps.Playablelocations.V3.SamplePlayableLocationsResponse

  rpc :LogPlayerReports,
      Google.Maps.Playablelocations.V3.LogPlayerReportsRequest,
      Google.Maps.Playablelocations.V3.LogPlayerReportsResponse

  rpc :LogImpressions,
      Google.Maps.Playablelocations.V3.LogImpressionsRequest,
      Google.Maps.Playablelocations.V3.LogImpressionsResponse
end

defmodule Google.Maps.Playablelocations.V3.PlayableLocations.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Playablelocations.V3.PlayableLocations.Service
end
