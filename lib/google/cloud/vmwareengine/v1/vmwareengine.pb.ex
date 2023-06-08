defmodule Google.Cloud.Vmwareengine.V1.ListPrivateCloudsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateCloudsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_clouds, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud,
    json_name: "privateClouds"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetPrivateCloudRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreatePrivateCloudRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :private_cloud_id, 2, type: :string, json_name: "privateCloudId", deprecated: false

  field :private_cloud, 3,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud,
    json_name: "privateCloud",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdatePrivateCloudRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_cloud, 1,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud,
    json_name: "privateCloud",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeletePrivateCloudRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false

  field :delay_hours, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "delayHours",
    deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UndeletePrivateCloudRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Vmwareengine.V1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Vmwareengine.V1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :cluster, 2, type: Google.Cloud.Vmwareengine.V1.Cluster, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListSubnetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.ListSubnetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :subnets, 1, repeated: true, type: Google.Cloud.Vmwareengine.V1.Subnet
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :subnet, 2, type: Google.Cloud.Vmwareengine.V1.Subnet, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListNodeTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.ListNodeTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :node_types, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.NodeType,
    json_name: "nodeTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetNodeTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ShowNsxCredentialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ShowVcenterCredentialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ResetNsxCredentialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ResetVcenterCredentialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListHcxActivationKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :hcx_activation_keys, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.HcxActivationKey,
    json_name: "hcxActivationKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.ListHcxActivationKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.GetHcxActivationKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateHcxActivationKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :hcx_activation_key, 2,
    type: Google.Cloud.Vmwareengine.V1.HcxActivationKey,
    json_name: "hcxActivationKey",
    deprecated: false

  field :hcx_activation_key_id, 3,
    type: :string,
    json_name: "hcxActivationKeyId",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmwareengine.V1.ListNetworkPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListNetworkPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network_policies, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy,
    json_name: "networkPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetNetworkPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateNetworkPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network_policy, 1,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy,
    json_name: "networkPolicy",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateNetworkPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :network_policy_id, 2, type: :string, json_name: "networkPolicyId", deprecated: false

  field :network_policy, 3,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy,
    json_name: "networkPolicy",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteNetworkPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateVmwareEngineNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :vmware_engine_network_id, 2,
    type: :string,
    json_name: "vmwareEngineNetworkId",
    deprecated: false

  field :vmware_engine_network, 3,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork,
    json_name: "vmwareEngineNetwork",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateVmwareEngineNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vmware_engine_network, 1,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork,
    json_name: "vmwareEngineNetwork",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteVmwareEngineNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.GetVmwareEngineNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListVmwareEngineNetworksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListVmwareEngineNetworksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vmware_engine_networks, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork,
    json_name: "vmwareEngineNetworks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.CreatePrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :private_connection_id, 2,
    type: :string,
    json_name: "privateConnectionId",
    deprecated: false

  field :private_connection, 3,
    type: Google.Cloud.Vmwareengine.V1.PrivateConnection,
    json_name: "privateConnection",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.GetPrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_connections, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.PrivateConnection,
    json_name: "privateConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.UpdatePrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :private_connection, 1,
    type: Google.Cloud.Vmwareengine.V1.PrivateConnection,
    json_name: "privateConnection",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeletePrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateConnectionPeeringRoutesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateConnectionPeeringRoutesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :peering_routes, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.PeeringRoute,
    json_name: "peeringRoutes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngine.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.vmwareengine.v1.VmwareEngine",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListPrivateClouds,
      Google.Cloud.Vmwareengine.V1.ListPrivateCloudsRequest,
      Google.Cloud.Vmwareengine.V1.ListPrivateCloudsResponse

  rpc :GetPrivateCloud,
      Google.Cloud.Vmwareengine.V1.GetPrivateCloudRequest,
      Google.Cloud.Vmwareengine.V1.PrivateCloud

  rpc :CreatePrivateCloud,
      Google.Cloud.Vmwareengine.V1.CreatePrivateCloudRequest,
      Google.Longrunning.Operation

  rpc :UpdatePrivateCloud,
      Google.Cloud.Vmwareengine.V1.UpdatePrivateCloudRequest,
      Google.Longrunning.Operation

  rpc :DeletePrivateCloud,
      Google.Cloud.Vmwareengine.V1.DeletePrivateCloudRequest,
      Google.Longrunning.Operation

  rpc :UndeletePrivateCloud,
      Google.Cloud.Vmwareengine.V1.UndeletePrivateCloudRequest,
      Google.Longrunning.Operation

  rpc :ListClusters,
      Google.Cloud.Vmwareengine.V1.ListClustersRequest,
      Google.Cloud.Vmwareengine.V1.ListClustersResponse

  rpc :GetCluster,
      Google.Cloud.Vmwareengine.V1.GetClusterRequest,
      Google.Cloud.Vmwareengine.V1.Cluster

  rpc :CreateCluster,
      Google.Cloud.Vmwareengine.V1.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Cloud.Vmwareengine.V1.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Vmwareengine.V1.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :ListSubnets,
      Google.Cloud.Vmwareengine.V1.ListSubnetsRequest,
      Google.Cloud.Vmwareengine.V1.ListSubnetsResponse

  rpc :GetSubnet,
      Google.Cloud.Vmwareengine.V1.GetSubnetRequest,
      Google.Cloud.Vmwareengine.V1.Subnet

  rpc :UpdateSubnet,
      Google.Cloud.Vmwareengine.V1.UpdateSubnetRequest,
      Google.Longrunning.Operation

  rpc :ListNodeTypes,
      Google.Cloud.Vmwareengine.V1.ListNodeTypesRequest,
      Google.Cloud.Vmwareengine.V1.ListNodeTypesResponse

  rpc :GetNodeType,
      Google.Cloud.Vmwareengine.V1.GetNodeTypeRequest,
      Google.Cloud.Vmwareengine.V1.NodeType

  rpc :ShowNsxCredentials,
      Google.Cloud.Vmwareengine.V1.ShowNsxCredentialsRequest,
      Google.Cloud.Vmwareengine.V1.Credentials

  rpc :ShowVcenterCredentials,
      Google.Cloud.Vmwareengine.V1.ShowVcenterCredentialsRequest,
      Google.Cloud.Vmwareengine.V1.Credentials

  rpc :ResetNsxCredentials,
      Google.Cloud.Vmwareengine.V1.ResetNsxCredentialsRequest,
      Google.Longrunning.Operation

  rpc :ResetVcenterCredentials,
      Google.Cloud.Vmwareengine.V1.ResetVcenterCredentialsRequest,
      Google.Longrunning.Operation

  rpc :CreateHcxActivationKey,
      Google.Cloud.Vmwareengine.V1.CreateHcxActivationKeyRequest,
      Google.Longrunning.Operation

  rpc :ListHcxActivationKeys,
      Google.Cloud.Vmwareengine.V1.ListHcxActivationKeysRequest,
      Google.Cloud.Vmwareengine.V1.ListHcxActivationKeysResponse

  rpc :GetHcxActivationKey,
      Google.Cloud.Vmwareengine.V1.GetHcxActivationKeyRequest,
      Google.Cloud.Vmwareengine.V1.HcxActivationKey

  rpc :GetNetworkPolicy,
      Google.Cloud.Vmwareengine.V1.GetNetworkPolicyRequest,
      Google.Cloud.Vmwareengine.V1.NetworkPolicy

  rpc :ListNetworkPolicies,
      Google.Cloud.Vmwareengine.V1.ListNetworkPoliciesRequest,
      Google.Cloud.Vmwareengine.V1.ListNetworkPoliciesResponse

  rpc :CreateNetworkPolicy,
      Google.Cloud.Vmwareengine.V1.CreateNetworkPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateNetworkPolicy,
      Google.Cloud.Vmwareengine.V1.UpdateNetworkPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteNetworkPolicy,
      Google.Cloud.Vmwareengine.V1.DeleteNetworkPolicyRequest,
      Google.Longrunning.Operation

  rpc :CreateVmwareEngineNetwork,
      Google.Cloud.Vmwareengine.V1.CreateVmwareEngineNetworkRequest,
      Google.Longrunning.Operation

  rpc :UpdateVmwareEngineNetwork,
      Google.Cloud.Vmwareengine.V1.UpdateVmwareEngineNetworkRequest,
      Google.Longrunning.Operation

  rpc :DeleteVmwareEngineNetwork,
      Google.Cloud.Vmwareengine.V1.DeleteVmwareEngineNetworkRequest,
      Google.Longrunning.Operation

  rpc :GetVmwareEngineNetwork,
      Google.Cloud.Vmwareengine.V1.GetVmwareEngineNetworkRequest,
      Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork

  rpc :ListVmwareEngineNetworks,
      Google.Cloud.Vmwareengine.V1.ListVmwareEngineNetworksRequest,
      Google.Cloud.Vmwareengine.V1.ListVmwareEngineNetworksResponse

  rpc :CreatePrivateConnection,
      Google.Cloud.Vmwareengine.V1.CreatePrivateConnectionRequest,
      Google.Longrunning.Operation

  rpc :GetPrivateConnection,
      Google.Cloud.Vmwareengine.V1.GetPrivateConnectionRequest,
      Google.Cloud.Vmwareengine.V1.PrivateConnection

  rpc :ListPrivateConnections,
      Google.Cloud.Vmwareengine.V1.ListPrivateConnectionsRequest,
      Google.Cloud.Vmwareengine.V1.ListPrivateConnectionsResponse

  rpc :UpdatePrivateConnection,
      Google.Cloud.Vmwareengine.V1.UpdatePrivateConnectionRequest,
      Google.Longrunning.Operation

  rpc :DeletePrivateConnection,
      Google.Cloud.Vmwareengine.V1.DeletePrivateConnectionRequest,
      Google.Longrunning.Operation

  rpc :ListPrivateConnectionPeeringRoutes,
      Google.Cloud.Vmwareengine.V1.ListPrivateConnectionPeeringRoutesRequest,
      Google.Cloud.Vmwareengine.V1.ListPrivateConnectionPeeringRoutesResponse
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngine.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Vmwareengine.V1.VmwareEngine.Service
end