defmodule Google.Ads.Admanager.V1.Team do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.GetTeamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListTeamsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListTeamsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :teams, 1, repeated: true, type: Google.Ads.Admanager.V1.Team
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.TeamService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.TeamService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetTeam, Google.Ads.Admanager.V1.GetTeamRequest, Google.Ads.Admanager.V1.Team

  rpc :ListTeams,
      Google.Ads.Admanager.V1.ListTeamsRequest,
      Google.Ads.Admanager.V1.ListTeamsResponse
end

defmodule Google.Ads.Admanager.V1.TeamService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.TeamService.Service
end