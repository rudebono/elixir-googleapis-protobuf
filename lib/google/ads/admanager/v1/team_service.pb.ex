defmodule Google.Ads.Admanager.V1.GetTeamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListTeamsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListTeamsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :teams, 1, repeated: true, type: Google.Ads.Admanager.V1.Team
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreateTeamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :team, 2, type: Google.Ads.Admanager.V1.Team, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateTeamsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.CreateTeamRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateTeamsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :teams, 1, repeated: true, type: Google.Ads.Admanager.V1.Team
end

defmodule Google.Ads.Admanager.V1.UpdateTeamRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :team, 1, type: Google.Ads.Admanager.V1.Team, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdateTeamsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.UpdateTeamRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdateTeamsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :teams, 1, repeated: true, type: Google.Ads.Admanager.V1.Team
end

defmodule Google.Ads.Admanager.V1.BatchActivateTeamsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchActivateTeamsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.BatchDeactivateTeamsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchDeactivateTeamsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.TeamService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.TeamService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetTeam, Google.Ads.Admanager.V1.GetTeamRequest, Google.Ads.Admanager.V1.Team

  rpc :ListTeams,
      Google.Ads.Admanager.V1.ListTeamsRequest,
      Google.Ads.Admanager.V1.ListTeamsResponse

  rpc :CreateTeam, Google.Ads.Admanager.V1.CreateTeamRequest, Google.Ads.Admanager.V1.Team

  rpc :BatchCreateTeams,
      Google.Ads.Admanager.V1.BatchCreateTeamsRequest,
      Google.Ads.Admanager.V1.BatchCreateTeamsResponse

  rpc :UpdateTeam, Google.Ads.Admanager.V1.UpdateTeamRequest, Google.Ads.Admanager.V1.Team

  rpc :BatchUpdateTeams,
      Google.Ads.Admanager.V1.BatchUpdateTeamsRequest,
      Google.Ads.Admanager.V1.BatchUpdateTeamsResponse

  rpc :BatchActivateTeams,
      Google.Ads.Admanager.V1.BatchActivateTeamsRequest,
      Google.Ads.Admanager.V1.BatchActivateTeamsResponse

  rpc :BatchDeactivateTeams,
      Google.Ads.Admanager.V1.BatchDeactivateTeamsRequest,
      Google.Ads.Admanager.V1.BatchDeactivateTeamsResponse
end

defmodule Google.Ads.Admanager.V1.TeamService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.TeamService.Service
end
