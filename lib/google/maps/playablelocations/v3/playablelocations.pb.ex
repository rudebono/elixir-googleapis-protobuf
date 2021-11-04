defmodule Google.Maps.Playablelocations.V3.SamplePlayableLocationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          area_filter: Google.Maps.Playablelocations.V3.Sample.AreaFilter.t() | nil,
          criteria: [Google.Maps.Playablelocations.V3.Sample.Criterion.t()]
        }

  defstruct [:area_filter, :criteria]

  field :area_filter, 1,
    type: Google.Maps.Playablelocations.V3.Sample.AreaFilter,
    json_name: "areaFilter"

  field :criteria, 2, repeated: true, type: Google.Maps.Playablelocations.V3.Sample.Criterion

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.SamplePlayableLocationsResponse.LocationsPerGameObjectTypeEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: integer,
          value: Google.Maps.Playablelocations.V3.Sample.PlayableLocationList.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :int32
  field :value, 2, type: Google.Maps.Playablelocations.V3.Sample.PlayableLocationList

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.SamplePlayableLocationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locations_per_game_object_type: %{
            integer => Google.Maps.Playablelocations.V3.Sample.PlayableLocationList.t() | nil
          },
          ttl: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:locations_per_game_object_type, :ttl]

  field :locations_per_game_object_type, 1,
    repeated: true,
    type:
      Google.Maps.Playablelocations.V3.SamplePlayableLocationsResponse.LocationsPerGameObjectTypeEntry,
    json_name: "locationsPerGameObjectType",
    map: true

  field :ttl, 9, type: Google.Protobuf.Duration

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.LogPlayerReportsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          player_reports: [Google.Maps.Playablelocations.V3.PlayerReport.t()],
          request_id: String.t(),
          client_info: Google.Maps.Unity.ClientInfo.t() | nil
        }

  defstruct [:player_reports, :request_id, :client_info]

  field :player_reports, 1,
    repeated: true,
    type: Google.Maps.Playablelocations.V3.PlayerReport,
    json_name: "playerReports"

  field :request_id, 2, type: :string, json_name: "requestId"
  field :client_info, 3, type: Google.Maps.Unity.ClientInfo, json_name: "clientInfo"

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.LogPlayerReportsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.LogImpressionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          impressions: [Google.Maps.Playablelocations.V3.Impression.t()],
          request_id: String.t(),
          client_info: Google.Maps.Unity.ClientInfo.t() | nil
        }

  defstruct [:impressions, :request_id, :client_info]

  field :impressions, 1, repeated: true, type: Google.Maps.Playablelocations.V3.Impression
  field :request_id, 2, type: :string, json_name: "requestId"
  field :client_info, 3, type: Google.Maps.Unity.ClientInfo, json_name: "clientInfo"

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.LogImpressionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Maps.Playablelocations.V3.PlayableLocations.Service do
  @moduledoc false
  use GRPC.Service, name: "google.maps.playablelocations.v3.PlayableLocations"

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
