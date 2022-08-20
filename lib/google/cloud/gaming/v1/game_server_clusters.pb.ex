defmodule Google.Cloud.Gaming.V1.GameServerClusterView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Gaming.V1.KubernetesClusterState.InstallationState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :INSTALLATION_STATE_UNSPECIFIED, 0
  field :AGONES_KUBERNETES_VERSION_SUPPORTED, 1
  field :AGONES_VERSION_UNSUPPORTED, 2
  field :AGONES_KUBERNETES_VERSION_UNSUPPORTED, 3
  field :AGONES_VERSION_UNRECOGNIZED, 4
  field :KUBERNETES_VERSION_UNRECOGNIZED, 5
  field :VERSION_VERIFICATION_FAILED, 6
  field :AGONES_NOT_INSTALLED, 7
end

defmodule Google.Cloud.Gaming.V1.ListGameServerClustersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false

  field :view, 6,
    type: Google.Cloud.Gaming.V1.GameServerClusterView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.ListGameServerClustersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :game_server_clusters, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1.GameServerCluster,
    json_name: "gameServerClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1.GetGameServerClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 6,
    type: Google.Cloud.Gaming.V1.GameServerClusterView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.CreateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :game_server_cluster_id, 2,
    type: :string,
    json_name: "gameServerClusterId",
    deprecated: false

  field :game_server_cluster, 3,
    type: Google.Cloud.Gaming.V1.GameServerCluster,
    json_name: "gameServerCluster",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.PreviewCreateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :game_server_cluster_id, 2,
    type: :string,
    json_name: "gameServerClusterId",
    deprecated: false

  field :game_server_cluster, 3,
    type: Google.Cloud.Gaming.V1.GameServerCluster,
    json_name: "gameServerCluster",
    deprecated: false

  field :preview_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "previewTime",
    deprecated: false

  field :view, 6, type: Google.Cloud.Gaming.V1.GameServerClusterView, enum: true, deprecated: true
end

defmodule Google.Cloud.Gaming.V1.PreviewCreateGameServerClusterResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1.TargetState, json_name: "targetState"

  field :cluster_state, 4,
    type: Google.Cloud.Gaming.V1.KubernetesClusterState,
    json_name: "clusterState",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.DeleteGameServerClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1.PreviewDeleteGameServerClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :preview_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "previewTime",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.PreviewDeleteGameServerClusterResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1.TargetState, json_name: "targetState"
end

defmodule Google.Cloud.Gaming.V1.UpdateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :game_server_cluster, 1,
    type: Google.Cloud.Gaming.V1.GameServerCluster,
    json_name: "gameServerCluster",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.PreviewUpdateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :game_server_cluster, 1,
    type: Google.Cloud.Gaming.V1.GameServerCluster,
    json_name: "gameServerCluster",
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

defmodule Google.Cloud.Gaming.V1.PreviewUpdateGameServerClusterResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1.TargetState, json_name: "targetState"
end

defmodule Google.Cloud.Gaming.V1.GameServerClusterConnectionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :cluster_reference, 0

  field :gke_cluster_reference, 7,
    type: Google.Cloud.Gaming.V1.GkeClusterReference,
    json_name: "gkeClusterReference",
    oneof: 0

  field :namespace, 5, type: :string
end

defmodule Google.Cloud.Gaming.V1.GkeClusterReference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cluster, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1.GameServerCluster.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1.GameServerCluster do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

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
    type: Google.Cloud.Gaming.V1.GameServerCluster.LabelsEntry,
    map: true

  field :connection_info, 5,
    type: Google.Cloud.Gaming.V1.GameServerClusterConnectionInfo,
    json_name: "connectionInfo"

  field :etag, 6, type: :string
  field :description, 7, type: :string

  field :cluster_state, 11,
    type: Google.Cloud.Gaming.V1.KubernetesClusterState,
    json_name: "clusterState",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1.KubernetesClusterState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :agones_version_installed, 1,
    type: :string,
    json_name: "agonesVersionInstalled",
    deprecated: false

  field :kubernetes_version_installed, 2,
    type: :string,
    json_name: "kubernetesVersionInstalled",
    deprecated: false

  field :installation_state, 3,
    type: Google.Cloud.Gaming.V1.KubernetesClusterState.InstallationState,
    json_name: "installationState",
    enum: true,
    deprecated: false

  field :version_installed_error_message, 4,
    type: :string,
    json_name: "versionInstalledErrorMessage",
    deprecated: false

  field :provider, 5, type: :string, deprecated: false

  field :agones_version_targeted, 6,
    type: :string,
    json_name: "agonesVersionTargeted",
    deprecated: false
end