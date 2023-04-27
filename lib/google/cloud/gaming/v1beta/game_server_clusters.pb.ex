defmodule Google.Cloud.Gaming.V1beta.ListGameServerClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.ListGameServerClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :game_server_clusters, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.GameServerCluster,
    json_name: "gameServerClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 4, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GetGameServerClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.CreateGameServerClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1beta.TargetState, json_name: "targetState"
end

defmodule Google.Cloud.Gaming.V1beta.DeleteGameServerClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.PreviewDeleteGameServerClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :preview_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "previewTime",
    deprecated: false
end

defmodule Google.Cloud.Gaming.V1beta.PreviewDeleteGameServerClusterResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1beta.TargetState, json_name: "targetState"
end

defmodule Google.Cloud.Gaming.V1beta.UpdateGameServerClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :etag, 2, type: :string
  field :target_state, 3, type: Google.Cloud.Gaming.V1beta.TargetState, json_name: "targetState"
end

defmodule Google.Cloud.Gaming.V1beta.GameServerClusterConnectionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :cluster_reference, 0

  field :gke_cluster_reference, 7,
    type: Google.Cloud.Gaming.V1beta.GkeClusterReference,
    json_name: "gkeClusterReference",
    oneof: 0

  field :namespace, 5, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GkeClusterReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cluster, 1, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerCluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.GameServerCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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