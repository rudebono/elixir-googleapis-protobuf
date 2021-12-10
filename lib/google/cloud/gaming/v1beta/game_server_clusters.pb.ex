defmodule Google.Cloud.Gaming.V1beta.ListGameServerClustersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Gaming.V1beta.ListGameServerClustersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_clusters: [Google.Cloud.Gaming.V1beta.GameServerCluster.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct game_server_clusters: [],
            next_page_token: "",
            unreachable: []

  field :game_server_clusters, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.GameServerCluster,
    json_name: "gameServerClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 4, repeated: true, type: :string
end
defmodule Google.Cloud.Gaming.V1beta.GetGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gaming.V1beta.CreateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          game_server_cluster_id: String.t(),
          game_server_cluster: Google.Cloud.Gaming.V1beta.GameServerCluster.t() | nil
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
    type: Google.Cloud.Gaming.V1beta.GameServerCluster,
    json_name: "gameServerCluster",
    deprecated: false
end
defmodule Google.Cloud.Gaming.V1beta.PreviewCreateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          game_server_cluster_id: String.t(),
          game_server_cluster: Google.Cloud.Gaming.V1beta.GameServerCluster.t() | nil,
          preview_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct parent: "",
            game_server_cluster_id: "",
            game_server_cluster: nil,
            preview_time: nil

  field :parent, 1, type: :string, deprecated: false

  field :game_server_cluster_id, 2,
    type: :string,
    json_name: "gameServerClusterId",
    deprecated: false

  field :game_server_cluster, 3,
    type: Google.Cloud.Gaming.V1beta.GameServerCluster,
    json_name: "gameServerCluster",
    deprecated: false

  field :preview_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "previewTime",
    deprecated: false
end
defmodule Google.Cloud.Gaming.V1beta.PreviewCreateGameServerClusterResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1beta.TargetState.t() | nil
        }

  defstruct etag: "",
            target_state: nil

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1beta.TargetState, json_name: "targetState"
end
defmodule Google.Cloud.Gaming.V1beta.DeleteGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gaming.V1beta.PreviewDeleteGameServerClusterRequest do
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
defmodule Google.Cloud.Gaming.V1beta.PreviewDeleteGameServerClusterResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1beta.TargetState.t() | nil
        }

  defstruct etag: "",
            target_state: nil

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1beta.TargetState, json_name: "targetState"
end
defmodule Google.Cloud.Gaming.V1beta.UpdateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_cluster: Google.Cloud.Gaming.V1beta.GameServerCluster.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct game_server_cluster: nil,
            update_mask: nil

  field :game_server_cluster, 1,
    type: Google.Cloud.Gaming.V1beta.GameServerCluster,
    json_name: "gameServerCluster",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Gaming.V1beta.PreviewUpdateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_cluster: Google.Cloud.Gaming.V1beta.GameServerCluster.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          preview_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct game_server_cluster: nil,
            update_mask: nil,
            preview_time: nil

  field :game_server_cluster, 1,
    type: Google.Cloud.Gaming.V1beta.GameServerCluster,
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
defmodule Google.Cloud.Gaming.V1beta.PreviewUpdateGameServerClusterResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1beta.TargetState.t() | nil
        }

  defstruct etag: "",
            target_state: nil

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1beta.TargetState, json_name: "targetState"
end
defmodule Google.Cloud.Gaming.V1beta.GameServerClusterConnectionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_reference:
            {:gke_cluster_reference, Google.Cloud.Gaming.V1beta.GkeClusterReference.t() | nil},
          namespace: String.t()
        }

  defstruct cluster_reference: nil,
            namespace: ""

  oneof :cluster_reference, 0

  field :gke_cluster_reference, 7,
    type: Google.Cloud.Gaming.V1beta.GkeClusterReference,
    json_name: "gkeClusterReference",
    oneof: 0

  field :namespace, 5, type: :string
end
defmodule Google.Cloud.Gaming.V1beta.GkeClusterReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster: String.t()
        }

  defstruct cluster: ""

  field :cluster, 1, type: :string
end
defmodule Google.Cloud.Gaming.V1beta.GameServerCluster.LabelsEntry do
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
defmodule Google.Cloud.Gaming.V1beta.GameServerCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          connection_info: Google.Cloud.Gaming.V1beta.GameServerClusterConnectionInfo.t() | nil,
          etag: String.t(),
          description: String.t()
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            labels: %{},
            connection_info: nil,
            etag: "",
            description: ""

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
    type: Google.Cloud.Gaming.V1beta.GameServerCluster.LabelsEntry,
    map: true

  field :connection_info, 5,
    type: Google.Cloud.Gaming.V1beta.GameServerClusterConnectionInfo,
    json_name: "connectionInfo"

  field :etag, 6, type: :string
  field :description, 7, type: :string
end
