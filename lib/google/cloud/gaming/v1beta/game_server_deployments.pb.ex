defmodule Google.Cloud.Gaming.V1beta.ListGameServerDeploymentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.ListGameServerDeploymentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :game_server_deployments, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.GameServerDeployment,
    json_name: "gameServerDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GetGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.GetGameServerDeploymentRolloutRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.CreateGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :deployment_id, 2, type: :string, json_name: "deploymentId", deprecated: false

  field :game_server_deployment, 3,
    type: Google.Cloud.Gaming.V1beta.GameServerDeployment,
    json_name: "gameServerDeployment",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.DeleteGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.UpdateGameServerDeploymentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :game_server_deployment, 1,
    type: Google.Cloud.Gaming.V1beta.GameServerDeployment,
    json_name: "gameServerDeployment",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.UpdateGameServerDeploymentRolloutRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rollout, 1,
    type: Google.Cloud.Gaming.V1beta.GameServerDeploymentRollout,
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.FetchDeploymentStateRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.FetchDeploymentStateResponse.DeployedClusterState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cluster, 1, type: :string

  field :fleet_details, 2,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.DeployedFleetDetails,
    json_name: "fleetDetails"
end

defmodule Google.Cloud.Gaming.V1beta.FetchDeploymentStateResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cluster_state, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.FetchDeploymentStateResponse.DeployedClusterState,
    json_name: "clusterState"

  field :unavailable, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerDeployment.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerDeployment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
    type: Google.Cloud.Gaming.V1beta.GameServerDeployment.LabelsEntry,
    map: true

  field :etag, 7, type: :string
  field :description, 8, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerConfigOverride do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :selector, 0

  oneof :change, 1

  field :realms_selector, 1,
    type: Google.Cloud.Gaming.V1beta.RealmSelector,
    json_name: "realmsSelector",
    oneof: 0

  field :config_version, 100, type: :string, json_name: "configVersion", oneof: 1
end

defmodule Google.Cloud.Gaming.V1beta.GameServerDeploymentRollout do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
    type: Google.Cloud.Gaming.V1beta.GameServerConfigOverride,
    json_name: "gameServerConfigOverrides"

  field :etag, 6, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.PreviewGameServerDeploymentRolloutRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :rollout, 1,
    type: Google.Cloud.Gaming.V1beta.GameServerDeploymentRollout,
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :preview_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "previewTime",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.PreviewGameServerDeploymentRolloutResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :unavailable, 2, repeated: true, type: :string
  field :etag, 3, type: :string
  field :target_state, 4, type: Google.Cloud.Gaming.V1beta.TargetState, json_name: "targetState"
end