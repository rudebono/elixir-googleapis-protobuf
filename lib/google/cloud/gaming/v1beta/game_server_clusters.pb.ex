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

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.ListGameServerClustersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_clusters: [Google.Cloud.Gaming.V1beta.GameServerCluster.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:game_server_clusters, :next_page_token, :unreachable]

  field :game_server_clusters, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.GameServerCluster

  field :next_page_token, 2, type: :string
  field :unreachable, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GetGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.CreateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          game_server_cluster_id: String.t(),
          game_server_cluster: Google.Cloud.Gaming.V1beta.GameServerCluster.t() | nil
        }

  defstruct [:parent, :game_server_cluster_id, :game_server_cluster]

  field :parent, 1, type: :string
  field :game_server_cluster_id, 2, type: :string
  field :game_server_cluster, 3, type: Google.Cloud.Gaming.V1beta.GameServerCluster
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

  defstruct [:parent, :game_server_cluster_id, :game_server_cluster, :preview_time]

  field :parent, 1, type: :string
  field :game_server_cluster_id, 2, type: :string
  field :game_server_cluster, 3, type: Google.Cloud.Gaming.V1beta.GameServerCluster
  field :preview_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Gaming.V1beta.PreviewCreateGameServerClusterResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1beta.TargetState.t() | nil
        }

  defstruct [:etag, :target_state]

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1beta.TargetState
end

defmodule Google.Cloud.Gaming.V1beta.DeleteGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.PreviewDeleteGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          preview_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :preview_time]

  field :name, 1, type: :string
  field :preview_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Gaming.V1beta.PreviewDeleteGameServerClusterResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1beta.TargetState.t() | nil
        }

  defstruct [:etag, :target_state]

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1beta.TargetState
end

defmodule Google.Cloud.Gaming.V1beta.UpdateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_cluster: Google.Cloud.Gaming.V1beta.GameServerCluster.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:game_server_cluster, :update_mask]

  field :game_server_cluster, 1, type: Google.Cloud.Gaming.V1beta.GameServerCluster
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Gaming.V1beta.PreviewUpdateGameServerClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_cluster: Google.Cloud.Gaming.V1beta.GameServerCluster.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          preview_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:game_server_cluster, :update_mask, :preview_time]

  field :game_server_cluster, 1, type: Google.Cloud.Gaming.V1beta.GameServerCluster
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :preview_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Gaming.V1beta.PreviewUpdateGameServerClusterResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          etag: String.t(),
          target_state: Google.Cloud.Gaming.V1beta.TargetState.t() | nil
        }

  defstruct [:etag, :target_state]

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1beta.TargetState
end

defmodule Google.Cloud.Gaming.V1beta.GameServerClusterConnectionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_reference: {atom, any},
          namespace: String.t()
        }

  defstruct [:cluster_reference, :namespace]

  oneof :cluster_reference, 0
  field :gke_cluster_reference, 7, type: Google.Cloud.Gaming.V1beta.GkeClusterReference, oneof: 0
  field :namespace, 5, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GkeClusterReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster: String.t()
        }

  defstruct [:cluster]

  field :cluster, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerCluster.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

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

  defstruct [:name, :create_time, :update_time, :labels, :connection_info, :etag, :description]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.GameServerCluster.LabelsEntry,
    map: true

  field :connection_info, 5, type: Google.Cloud.Gaming.V1beta.GameServerClusterConnectionInfo
  field :etag, 6, type: :string
  field :description, 7, type: :string
end
