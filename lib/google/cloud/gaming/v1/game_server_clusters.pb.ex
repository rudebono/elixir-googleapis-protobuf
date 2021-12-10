defmodule Google.Cloud.Gaming.V1.GameServerClusterView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end
defmodule Google.Cloud.Gaming.V1.KubernetesClusterState.InstallationState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INSTALLATION_STATE_UNSPECIFIED
          | :AGONES_KUBERNETES_VERSION_SUPPORTED
          | :AGONES_VERSION_UNSUPPORTED
          | :AGONES_KUBERNETES_VERSION_UNSUPPORTED
          | :AGONES_VERSION_UNRECOGNIZED
          | :KUBERNETES_VERSION_UNRECOGNIZED
          | :VERSION_VERIFICATION_FAILED
          | :AGONES_NOT_INSTALLED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t(),
          view: Google.Cloud.Gaming.V1.GameServerClusterView.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: "",
            view: :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_clusters: [Google.Cloud.Gaming.V1.GameServerCluster.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct game_server_clusters: [],
            next_page_token: "",
            unreachable: []

  field :game_server_clusters, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1.GameServerCluster,
    json_name: "gameServerClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 4, repeated: true, type: :string
end
defmodule Google.Cloud.Gaming.V1.GetGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Gaming.V1.GameServerClusterView.t()
        }

  defstruct name: "",
            view: :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :view, 6,
    type: Google.Cloud.Gaming.V1.GameServerClusterView,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Gaming.V1.CreateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          game_server_cluster_id: String.t(),
          game_server_cluster: Google.Cloud.Gaming.V1.GameServerCluster.t() | nil
        }

  defstruct parent: "",
            game_server_cluster_id: "",
            game_server_cluster: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          game_server_cluster_id: String.t(),
          game_server_cluster: Google.Cloud.Gaming.V1.GameServerCluster.t() | nil,
          preview_time: Google.Protobuf.Timestamp.t() | nil,
          view: Google.Cloud.Gaming.V1.GameServerClusterView.t()
        }

  defstruct parent: "",
            game_server_cluster_id: "",
            game_server_cluster: nil,
            preview_time: nil,
            view: :GAME_SERVER_CLUSTER_VIEW_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1.TargetState.t() | nil,
          cluster_state: Google.Cloud.Gaming.V1.KubernetesClusterState.t() | nil
        }

  defstruct etag: "",
            target_state: nil,
            cluster_state: nil

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1.TargetState, json_name: "targetState"

  field :cluster_state, 4,
    type: Google.Cloud.Gaming.V1.KubernetesClusterState,
    json_name: "clusterState",
    deprecated: false
end
defmodule Google.Cloud.Gaming.V1.DeleteGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gaming.V1.PreviewDeleteGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          preview_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            preview_time: nil

  field :name, 1, type: :string, deprecated: false

  field :preview_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "previewTime",
    deprecated: false
end
defmodule Google.Cloud.Gaming.V1.PreviewDeleteGameServerClusterResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1.TargetState.t() | nil
        }

  defstruct etag: "",
            target_state: nil

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1.TargetState, json_name: "targetState"
end
defmodule Google.Cloud.Gaming.V1.UpdateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_cluster: Google.Cloud.Gaming.V1.GameServerCluster.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct game_server_cluster: nil,
            update_mask: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_cluster: Google.Cloud.Gaming.V1.GameServerCluster.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          preview_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct game_server_cluster: nil,
            update_mask: nil,
            preview_time: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1.TargetState.t() | nil
        }

  defstruct etag: "",
            target_state: nil

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1.TargetState, json_name: "targetState"
end
defmodule Google.Cloud.Gaming.V1.GameServerClusterConnectionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_reference:
            {:gke_cluster_reference, Google.Cloud.Gaming.V1.GkeClusterReference.t() | nil},
          namespace: String.t()
        }

  defstruct cluster_reference: nil,
            namespace: ""

  oneof :cluster_reference, 0

  field :gke_cluster_reference, 7,
    type: Google.Cloud.Gaming.V1.GkeClusterReference,
    json_name: "gkeClusterReference",
    oneof: 0

  field :namespace, 5, type: :string
end
defmodule Google.Cloud.Gaming.V1.GkeClusterReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster: String.t()
        }

  defstruct cluster: ""

  field :cluster, 1, type: :string
end
defmodule Google.Cloud.Gaming.V1.GameServerCluster.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Gaming.V1.GameServerCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          connection_info: Google.Cloud.Gaming.V1.GameServerClusterConnectionInfo.t() | nil,
          etag: String.t(),
          description: String.t(),
          cluster_state: Google.Cloud.Gaming.V1.KubernetesClusterState.t() | nil
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            connection_info: nil,
            etag: "",
            description: "",
            cluster_state: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          agones_version_installed: String.t(),
          kubernetes_version_installed: String.t(),
          installation_state: Google.Cloud.Gaming.V1.KubernetesClusterState.InstallationState.t(),
          version_installed_error_message: String.t(),
          provider: String.t(),
          agones_version_targeted: String.t()
        }

  defstruct agones_version_installed: "",
            kubernetes_version_installed: "",
            installation_state: :INSTALLATION_STATE_UNSPECIFIED,
            version_installed_error_message: "",
            provider: "",
            agones_version_targeted: ""

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
