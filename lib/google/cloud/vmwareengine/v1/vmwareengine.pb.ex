defmodule Google.Cloud.Vmwareengine.V1.ListPrivateCloudsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateCloudsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_clouds, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.PrivateCloud,
    json_name: "privateClouds"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetPrivateCloudRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreatePrivateCloudRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Vmwareengine.V1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :cluster_id, 2, type: :string, json_name: "clusterId", deprecated: false
  field :cluster, 3, type: Google.Cloud.Vmwareengine.V1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListNodesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.ListNodesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :nodes, 1, repeated: true, type: Google.Cloud.Vmwareengine.V1.Node
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.GetNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListExternalAddressesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListExternalAddressesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :external_addresses, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.ExternalAddress,
    json_name: "externalAddresses"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.FetchNetworkPolicyExternalAddressesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network_policy, 1, type: :string, json_name: "networkPolicy", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.FetchNetworkPolicyExternalAddressesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :external_addresses, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.ExternalAddress,
    json_name: "externalAddresses"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.GetExternalAddressRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateExternalAddressRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :external_address, 2,
    type: Google.Cloud.Vmwareengine.V1.ExternalAddress,
    json_name: "externalAddress",
    deprecated: false

  field :external_address_id, 3, type: :string, json_name: "externalAddressId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateExternalAddressRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :external_address, 2,
    type: Google.Cloud.Vmwareengine.V1.ExternalAddress,
    json_name: "externalAddress",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteExternalAddressRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListSubnetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.ListSubnetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subnets, 1, repeated: true, type: Google.Cloud.Vmwareengine.V1.Subnet
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateSubnetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :subnet, 2, type: Google.Cloud.Vmwareengine.V1.Subnet, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListExternalAccessRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListExternalAccessRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :external_access_rules, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.ExternalAccessRule,
    json_name: "externalAccessRules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetExternalAccessRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateExternalAccessRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :external_access_rule, 2,
    type: Google.Cloud.Vmwareengine.V1.ExternalAccessRule,
    json_name: "externalAccessRule",
    deprecated: false

  field :external_access_rule_id, 3,
    type: :string,
    json_name: "externalAccessRuleId",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateExternalAccessRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :external_access_rule, 2,
    type: Google.Cloud.Vmwareengine.V1.ExternalAccessRule,
    json_name: "externalAccessRule",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteExternalAccessRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListLoggingServersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListLoggingServersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :logging_servers, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.LoggingServer,
    json_name: "loggingServers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetLoggingServerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateLoggingServerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :logging_server, 2,
    type: Google.Cloud.Vmwareengine.V1.LoggingServer,
    json_name: "loggingServer",
    deprecated: false

  field :logging_server_id, 3, type: :string, json_name: "loggingServerId", deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateLoggingServerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :logging_server, 2,
    type: Google.Cloud.Vmwareengine.V1.LoggingServer,
    json_name: "loggingServer",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteLoggingServerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.ListNodeTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :node_types, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.NodeType,
    json_name: "nodeTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetNodeTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ShowNsxCredentialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ShowVcenterCredentialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
  field :username, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ResetNsxCredentialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ResetVcenterCredentialsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_cloud, 1, type: :string, json_name: "privateCloud", deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :username, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListHcxActivationKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hcx_activation_keys, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.HcxActivationKey,
    json_name: "hcxActivationKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.ListHcxActivationKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.GetHcxActivationKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateHcxActivationKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Cloud.Vmwareengine.V1.GetDnsForwardingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateDnsForwardingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dns_forwarding, 1,
    type: Google.Cloud.Vmwareengine.V1.DnsForwarding,
    json_name: "dnsForwarding",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateNetworkPeeringRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :network_peering_id, 2, type: :string, json_name: "networkPeeringId", deprecated: false

  field :network_peering, 3,
    type: Google.Cloud.Vmwareengine.V1.NetworkPeering,
    json_name: "networkPeering",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteNetworkPeeringRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.GetNetworkPeeringRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListNetworkPeeringsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateNetworkPeeringRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network_peering, 1,
    type: Google.Cloud.Vmwareengine.V1.NetworkPeering,
    json_name: "networkPeering",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListNetworkPeeringsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network_peerings, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.NetworkPeering,
    json_name: "networkPeerings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.ListPeeringRoutesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 6, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.ListPeeringRoutesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :peering_routes, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.PeeringRoute,
    json_name: "peeringRoutes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.ListNetworkPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListNetworkPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network_policies, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.NetworkPolicy,
    json_name: "networkPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetNetworkPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateNetworkPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListManagementDnsZoneBindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListManagementDnsZoneBindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :management_dns_zone_bindings, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.ManagementDnsZoneBinding,
    json_name: "managementDnsZoneBindings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.GetManagementDnsZoneBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateManagementDnsZoneBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :management_dns_zone_binding, 2,
    type: Google.Cloud.Vmwareengine.V1.ManagementDnsZoneBinding,
    json_name: "managementDnsZoneBinding",
    deprecated: false

  field :management_dns_zone_binding_id, 3,
    type: :string,
    json_name: "managementDnsZoneBindingId",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.UpdateManagementDnsZoneBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :management_dns_zone_binding, 2,
    type: Google.Cloud.Vmwareengine.V1.ManagementDnsZoneBinding,
    json_name: "managementDnsZoneBinding",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.DeleteManagementDnsZoneBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.RepairManagementDnsZoneBindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.CreateVmwareEngineNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.GetVmwareEngineNetworkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListVmwareEngineNetworksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListVmwareEngineNetworksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vmware_engine_networks, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.VmwareEngineNetwork,
    json_name: "vmwareEngineNetworks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.CreatePrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_connections, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.PrivateConnection,
    json_name: "privateConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Vmwareengine.V1.UpdatePrivateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateConnectionPeeringRoutesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.ListPrivateConnectionPeeringRoutesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :peering_routes, 1,
    repeated: true,
    type: Google.Cloud.Vmwareengine.V1.PeeringRoute,
    json_name: "peeringRoutes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vmwareengine.V1.GrantDnsBindPermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :principal, 2, type: Google.Cloud.Vmwareengine.V1.Principal, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.RevokeDnsBindPermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :principal, 2, type: Google.Cloud.Vmwareengine.V1.Principal, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.GetDnsBindPermissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngine.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.vmwareengine.v1.VmwareEngine",
    protoc_gen_elixir_version: "0.15.0"

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

  rpc :ListNodes,
      Google.Cloud.Vmwareengine.V1.ListNodesRequest,
      Google.Cloud.Vmwareengine.V1.ListNodesResponse

  rpc :GetNode, Google.Cloud.Vmwareengine.V1.GetNodeRequest, Google.Cloud.Vmwareengine.V1.Node

  rpc :ListExternalAddresses,
      Google.Cloud.Vmwareengine.V1.ListExternalAddressesRequest,
      Google.Cloud.Vmwareengine.V1.ListExternalAddressesResponse

  rpc :FetchNetworkPolicyExternalAddresses,
      Google.Cloud.Vmwareengine.V1.FetchNetworkPolicyExternalAddressesRequest,
      Google.Cloud.Vmwareengine.V1.FetchNetworkPolicyExternalAddressesResponse

  rpc :GetExternalAddress,
      Google.Cloud.Vmwareengine.V1.GetExternalAddressRequest,
      Google.Cloud.Vmwareengine.V1.ExternalAddress

  rpc :CreateExternalAddress,
      Google.Cloud.Vmwareengine.V1.CreateExternalAddressRequest,
      Google.Longrunning.Operation

  rpc :UpdateExternalAddress,
      Google.Cloud.Vmwareengine.V1.UpdateExternalAddressRequest,
      Google.Longrunning.Operation

  rpc :DeleteExternalAddress,
      Google.Cloud.Vmwareengine.V1.DeleteExternalAddressRequest,
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

  rpc :ListExternalAccessRules,
      Google.Cloud.Vmwareengine.V1.ListExternalAccessRulesRequest,
      Google.Cloud.Vmwareengine.V1.ListExternalAccessRulesResponse

  rpc :GetExternalAccessRule,
      Google.Cloud.Vmwareengine.V1.GetExternalAccessRuleRequest,
      Google.Cloud.Vmwareengine.V1.ExternalAccessRule

  rpc :CreateExternalAccessRule,
      Google.Cloud.Vmwareengine.V1.CreateExternalAccessRuleRequest,
      Google.Longrunning.Operation

  rpc :UpdateExternalAccessRule,
      Google.Cloud.Vmwareengine.V1.UpdateExternalAccessRuleRequest,
      Google.Longrunning.Operation

  rpc :DeleteExternalAccessRule,
      Google.Cloud.Vmwareengine.V1.DeleteExternalAccessRuleRequest,
      Google.Longrunning.Operation

  rpc :ListLoggingServers,
      Google.Cloud.Vmwareengine.V1.ListLoggingServersRequest,
      Google.Cloud.Vmwareengine.V1.ListLoggingServersResponse

  rpc :GetLoggingServer,
      Google.Cloud.Vmwareengine.V1.GetLoggingServerRequest,
      Google.Cloud.Vmwareengine.V1.LoggingServer

  rpc :CreateLoggingServer,
      Google.Cloud.Vmwareengine.V1.CreateLoggingServerRequest,
      Google.Longrunning.Operation

  rpc :UpdateLoggingServer,
      Google.Cloud.Vmwareengine.V1.UpdateLoggingServerRequest,
      Google.Longrunning.Operation

  rpc :DeleteLoggingServer,
      Google.Cloud.Vmwareengine.V1.DeleteLoggingServerRequest,
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

  rpc :GetDnsForwarding,
      Google.Cloud.Vmwareengine.V1.GetDnsForwardingRequest,
      Google.Cloud.Vmwareengine.V1.DnsForwarding

  rpc :UpdateDnsForwarding,
      Google.Cloud.Vmwareengine.V1.UpdateDnsForwardingRequest,
      Google.Longrunning.Operation

  rpc :GetNetworkPeering,
      Google.Cloud.Vmwareengine.V1.GetNetworkPeeringRequest,
      Google.Cloud.Vmwareengine.V1.NetworkPeering

  rpc :ListNetworkPeerings,
      Google.Cloud.Vmwareengine.V1.ListNetworkPeeringsRequest,
      Google.Cloud.Vmwareengine.V1.ListNetworkPeeringsResponse

  rpc :CreateNetworkPeering,
      Google.Cloud.Vmwareengine.V1.CreateNetworkPeeringRequest,
      Google.Longrunning.Operation

  rpc :DeleteNetworkPeering,
      Google.Cloud.Vmwareengine.V1.DeleteNetworkPeeringRequest,
      Google.Longrunning.Operation

  rpc :UpdateNetworkPeering,
      Google.Cloud.Vmwareengine.V1.UpdateNetworkPeeringRequest,
      Google.Longrunning.Operation

  rpc :ListPeeringRoutes,
      Google.Cloud.Vmwareengine.V1.ListPeeringRoutesRequest,
      Google.Cloud.Vmwareengine.V1.ListPeeringRoutesResponse

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

  rpc :ListManagementDnsZoneBindings,
      Google.Cloud.Vmwareengine.V1.ListManagementDnsZoneBindingsRequest,
      Google.Cloud.Vmwareengine.V1.ListManagementDnsZoneBindingsResponse

  rpc :GetManagementDnsZoneBinding,
      Google.Cloud.Vmwareengine.V1.GetManagementDnsZoneBindingRequest,
      Google.Cloud.Vmwareengine.V1.ManagementDnsZoneBinding

  rpc :CreateManagementDnsZoneBinding,
      Google.Cloud.Vmwareengine.V1.CreateManagementDnsZoneBindingRequest,
      Google.Longrunning.Operation

  rpc :UpdateManagementDnsZoneBinding,
      Google.Cloud.Vmwareengine.V1.UpdateManagementDnsZoneBindingRequest,
      Google.Longrunning.Operation

  rpc :DeleteManagementDnsZoneBinding,
      Google.Cloud.Vmwareengine.V1.DeleteManagementDnsZoneBindingRequest,
      Google.Longrunning.Operation

  rpc :RepairManagementDnsZoneBinding,
      Google.Cloud.Vmwareengine.V1.RepairManagementDnsZoneBindingRequest,
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

  rpc :GrantDnsBindPermission,
      Google.Cloud.Vmwareengine.V1.GrantDnsBindPermissionRequest,
      Google.Longrunning.Operation

  rpc :GetDnsBindPermission,
      Google.Cloud.Vmwareengine.V1.GetDnsBindPermissionRequest,
      Google.Cloud.Vmwareengine.V1.DnsBindPermission

  rpc :RevokeDnsBindPermission,
      Google.Cloud.Vmwareengine.V1.RevokeDnsBindPermissionRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Vmwareengine.V1.VmwareEngine.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Vmwareengine.V1.VmwareEngine.Service
end
