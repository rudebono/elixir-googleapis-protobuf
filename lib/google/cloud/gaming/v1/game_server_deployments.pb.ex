defmodule Google.Cloud.Gaming.V1.ListGameServerDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gaming.V1.ListGameServerDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :game_server_deployments, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1.GameServerDeployment,
    json_name: "gameServerDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1.GetGameServerDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1.GetGameServerDeploymentRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1.CreateGameServerDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :deployment_id, 2, type: :string, json_name: "deploymentId", deprecated: false

  field :game_server_deployment, 3,
    type: Google.Cloud.Gaming.V1.GameServerDeployment,
    json_name: "gameServerDeployment",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.DeleteGameServerDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1.UpdateGameServerDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :game_server_deployment, 1,
    type: Google.Cloud.Gaming.V1.GameServerDeployment,
    json_name: "gameServerDeployment",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.UpdateGameServerDeploymentRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rollout, 1, type: Google.Cloud.Gaming.V1.GameServerDeploymentRollout, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.FetchDeploymentStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1.FetchDeploymentStateResponse.DeployedClusterState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cluster, 1, type: :string

  field :fleet_details, 2,
    repeated: true,
    type: Google.Cloud.Gaming.V1.DeployedFleetDetails,
    json_name: "fleetDetails"
end

defmodule Google.Cloud.Gaming.V1.FetchDeploymentStateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cluster_state, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1.FetchDeploymentStateResponse.DeployedClusterState,
    json_name: "clusterState"

  field :unavailable, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1.GameServerDeployment.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1.GameServerDeployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gaming.V1.GameServerDeployment.LabelsEntry,
    map: true

  field :etag, 7, type: :string
  field :description, 8, type: :string
end

defmodule Google.Cloud.Gaming.V1.GameServerConfigOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :selector, 0

  oneof :change, 1

  field :realms_selector, 1,
    type: Google.Cloud.Gaming.V1.RealmSelector,
    json_name: "realmsSelector",
    oneof: 0

  field :config_version, 100, type: :string, json_name: "configVersion", oneof: 1
end

defmodule Google.Cloud.Gaming.V1.GameServerDeploymentRollout do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :default_game_server_config, 4, type: :string, json_name: "defaultGameServerConfig"

  field :game_server_config_overrides, 5,
    repeated: true,
    type: Google.Cloud.Gaming.V1.GameServerConfigOverride,
    json_name: "gameServerConfigOverrides"

  field :etag, 6, type: :string
end

defmodule Google.Cloud.Gaming.V1.PreviewGameServerDeploymentRolloutRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rollout, 1, type: Google.Cloud.Gaming.V1.GameServerDeploymentRollout, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :preview_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "previewTime",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.PreviewGameServerDeploymentRolloutResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :unavailable, 2, repeated: true, type: :string
  field :etag, 3, type: :string
  field :target_state, 4, type: Google.Cloud.Gaming.V1.TargetState, json_name: "targetState"
end