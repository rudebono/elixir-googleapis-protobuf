defmodule Google.Cloud.Edgecontainer.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"
end

defmodule Google.Cloud.Edgecontainer.V1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Edgecontainer.V1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Edgecontainer.V1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Edgecontainer.V1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Edgecontainer.V1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :cluster, 2, type: Google.Cloud.Edgecontainer.V1.Cluster
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Edgecontainer.V1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Edgecontainer.V1.GenerateAccessTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cluster, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.GenerateAccessTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :access_token, 1, type: :string, json_name: "accessToken", deprecated: false

  field :expire_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.ListNodePoolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Edgecontainer.V1.ListNodePoolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :node_pools, 1,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.NodePool,
    json_name: "nodePools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.GetNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.CreateNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :node_pool_id, 2, type: :string, json_name: "nodePoolId", deprecated: false

  field :node_pool, 3,
    type: Google.Cloud.Edgecontainer.V1.NodePool,
    json_name: "nodePool",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Edgecontainer.V1.UpdateNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :node_pool, 2, type: Google.Cloud.Edgecontainer.V1.NodePool, json_name: "nodePool"
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Edgecontainer.V1.DeleteNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Edgecontainer.V1.ListMachinesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Edgecontainer.V1.ListMachinesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :machines, 1, repeated: true, type: Google.Cloud.Edgecontainer.V1.Machine
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.GetMachineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.ListVpnConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Edgecontainer.V1.ListVpnConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vpn_connections, 1,
    repeated: true,
    type: Google.Cloud.Edgecontainer.V1.VpnConnection,
    json_name: "vpnConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Edgecontainer.V1.GetVpnConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Edgecontainer.V1.CreateVpnConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :vpn_connection_id, 2, type: :string, json_name: "vpnConnectionId", deprecated: false

  field :vpn_connection, 3,
    type: Google.Cloud.Edgecontainer.V1.VpnConnection,
    json_name: "vpnConnection",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Edgecontainer.V1.DeleteVpnConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Edgecontainer.V1.EdgeContainer.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.edgecontainer.v1.EdgeContainer",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListClusters,
      Google.Cloud.Edgecontainer.V1.ListClustersRequest,
      Google.Cloud.Edgecontainer.V1.ListClustersResponse

  rpc :GetCluster,
      Google.Cloud.Edgecontainer.V1.GetClusterRequest,
      Google.Cloud.Edgecontainer.V1.Cluster

  rpc :CreateCluster,
      Google.Cloud.Edgecontainer.V1.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Cloud.Edgecontainer.V1.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Edgecontainer.V1.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :GenerateAccessToken,
      Google.Cloud.Edgecontainer.V1.GenerateAccessTokenRequest,
      Google.Cloud.Edgecontainer.V1.GenerateAccessTokenResponse

  rpc :ListNodePools,
      Google.Cloud.Edgecontainer.V1.ListNodePoolsRequest,
      Google.Cloud.Edgecontainer.V1.ListNodePoolsResponse

  rpc :GetNodePool,
      Google.Cloud.Edgecontainer.V1.GetNodePoolRequest,
      Google.Cloud.Edgecontainer.V1.NodePool

  rpc :CreateNodePool,
      Google.Cloud.Edgecontainer.V1.CreateNodePoolRequest,
      Google.Longrunning.Operation

  rpc :UpdateNodePool,
      Google.Cloud.Edgecontainer.V1.UpdateNodePoolRequest,
      Google.Longrunning.Operation

  rpc :DeleteNodePool,
      Google.Cloud.Edgecontainer.V1.DeleteNodePoolRequest,
      Google.Longrunning.Operation

  rpc :ListMachines,
      Google.Cloud.Edgecontainer.V1.ListMachinesRequest,
      Google.Cloud.Edgecontainer.V1.ListMachinesResponse

  rpc :GetMachine,
      Google.Cloud.Edgecontainer.V1.GetMachineRequest,
      Google.Cloud.Edgecontainer.V1.Machine

  rpc :ListVpnConnections,
      Google.Cloud.Edgecontainer.V1.ListVpnConnectionsRequest,
      Google.Cloud.Edgecontainer.V1.ListVpnConnectionsResponse

  rpc :GetVpnConnection,
      Google.Cloud.Edgecontainer.V1.GetVpnConnectionRequest,
      Google.Cloud.Edgecontainer.V1.VpnConnection

  rpc :CreateVpnConnection,
      Google.Cloud.Edgecontainer.V1.CreateVpnConnectionRequest,
      Google.Longrunning.Operation

  rpc :DeleteVpnConnection,
      Google.Cloud.Edgecontainer.V1.DeleteVpnConnectionRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Edgecontainer.V1.EdgeContainer.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Edgecontainer.V1.EdgeContainer.Service
end