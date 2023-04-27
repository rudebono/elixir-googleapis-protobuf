defmodule Google.Cloud.Networkmanagement.V1.Step.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :START_FROM_INSTANCE, 1
  field :START_FROM_INTERNET, 2
  field :START_FROM_PRIVATE_NETWORK, 3
  field :START_FROM_GKE_MASTER, 21
  field :START_FROM_CLOUD_SQL_INSTANCE, 22
  field :APPLY_INGRESS_FIREWALL_RULE, 4
  field :APPLY_EGRESS_FIREWALL_RULE, 5
  field :APPLY_ROUTE, 6
  field :APPLY_FORWARDING_RULE, 7
  field :SPOOFING_APPROVED, 8
  field :ARRIVE_AT_INSTANCE, 9
  field :ARRIVE_AT_INTERNAL_LOAD_BALANCER, 10
  field :ARRIVE_AT_EXTERNAL_LOAD_BALANCER, 11
  field :ARRIVE_AT_VPN_GATEWAY, 12
  field :ARRIVE_AT_VPN_TUNNEL, 13
  field :NAT, 14
  field :PROXY_CONNECTION, 15
  field :DELIVER, 16
  field :DROP, 17
  field :FORWARD, 18
  field :ABORT, 19
  field :VIEWER_PERMISSION_MISSING, 20
end

defmodule Google.Cloud.Networkmanagement.V1.FirewallInfo.FirewallRuleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FIREWALL_RULE_TYPE_UNSPECIFIED, 0
  field :HIERARCHICAL_FIREWALL_POLICY_RULE, 1
  field :VPC_FIREWALL_RULE, 2
  field :IMPLIED_VPC_FIREWALL_RULE, 3
end

defmodule Google.Cloud.Networkmanagement.V1.RouteInfo.RouteType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ROUTE_TYPE_UNSPECIFIED, 0
  field :SUBNET, 1
  field :STATIC, 2
  field :DYNAMIC, 3
  field :PEERING_SUBNET, 4
  field :PEERING_STATIC, 5
  field :PEERING_DYNAMIC, 6
end

defmodule Google.Cloud.Networkmanagement.V1.RouteInfo.NextHopType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NEXT_HOP_TYPE_UNSPECIFIED, 0
  field :NEXT_HOP_IP, 1
  field :NEXT_HOP_INSTANCE, 2
  field :NEXT_HOP_NETWORK, 3
  field :NEXT_HOP_PEERING, 4
  field :NEXT_HOP_INTERCONNECT, 5
  field :NEXT_HOP_VPN_TUNNEL, 6
  field :NEXT_HOP_VPN_GATEWAY, 7
  field :NEXT_HOP_INTERNET_GATEWAY, 8
  field :NEXT_HOP_BLACKHOLE, 9
  field :NEXT_HOP_ILB, 10
  field :NEXT_HOP_ROUTER_APPLIANCE, 11
end

defmodule Google.Cloud.Networkmanagement.V1.LoadBalancerInfo.LoadBalancerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LOAD_BALANCER_TYPE_UNSPECIFIED, 0
  field :INTERNAL_TCP_UDP, 1
  field :NETWORK_TCP_UDP, 2
  field :HTTP_PROXY, 3
  field :TCP_PROXY, 4
  field :SSL_PROXY, 5
end

defmodule Google.Cloud.Networkmanagement.V1.LoadBalancerInfo.BackendType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BACKEND_TYPE_UNSPECIFIED, 0
  field :BACKEND_SERVICE, 1
  field :TARGET_POOL, 2
end

defmodule Google.Cloud.Networkmanagement.V1.LoadBalancerBackend.HealthCheckFirewallState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :HEALTH_CHECK_FIREWALL_STATE_UNSPECIFIED, 0
  field :CONFIGURED, 1
  field :MISCONFIGURED, 2
end

defmodule Google.Cloud.Networkmanagement.V1.VpnTunnelInfo.RoutingType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ROUTING_TYPE_UNSPECIFIED, 0
  field :ROUTE_BASED, 1
  field :POLICY_BASED, 2
  field :DYNAMIC, 3
end

defmodule Google.Cloud.Networkmanagement.V1.DeliverInfo.Target do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TARGET_UNSPECIFIED, 0
  field :INSTANCE, 1
  field :INTERNET, 2
  field :GOOGLE_API, 3
  field :GKE_MASTER, 4
  field :CLOUD_SQL_INSTANCE, 5
end

defmodule Google.Cloud.Networkmanagement.V1.ForwardInfo.Target do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TARGET_UNSPECIFIED, 0
  field :PEERING_VPC, 1
  field :VPN_GATEWAY, 2
  field :INTERCONNECT, 3
  field :GKE_MASTER, 4
  field :IMPORTED_CUSTOM_ROUTE_NEXT_HOP, 5
  field :CLOUD_SQL_INSTANCE, 6
end

defmodule Google.Cloud.Networkmanagement.V1.AbortInfo.Cause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CAUSE_UNSPECIFIED, 0
  field :UNKNOWN_NETWORK, 1
  field :UNKNOWN_IP, 2
  field :UNKNOWN_PROJECT, 3
  field :PERMISSION_DENIED, 4
  field :NO_SOURCE_LOCATION, 5
  field :INVALID_ARGUMENT, 6
  field :NO_EXTERNAL_IP, 7
  field :UNINTENDED_DESTINATION, 8
  field :TRACE_TOO_LONG, 9
  field :INTERNAL_ERROR, 10
  field :SOURCE_ENDPOINT_NOT_FOUND, 11
  field :MISMATCHED_SOURCE_NETWORK, 12
  field :DESTINATION_ENDPOINT_NOT_FOUND, 13
  field :MISMATCHED_DESTINATION_NETWORK, 14
  field :UNSUPPORTED, 15
end

defmodule Google.Cloud.Networkmanagement.V1.DropInfo.Cause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CAUSE_UNSPECIFIED, 0
  field :UNKNOWN_EXTERNAL_ADDRESS, 1
  field :FOREIGN_IP_DISALLOWED, 2
  field :FIREWALL_RULE, 3
  field :NO_ROUTE, 4
  field :ROUTE_BLACKHOLE, 5
  field :ROUTE_WRONG_NETWORK, 6
  field :PRIVATE_TRAFFIC_TO_INTERNET, 7
  field :PRIVATE_GOOGLE_ACCESS_DISALLOWED, 8
  field :NO_EXTERNAL_ADDRESS, 9
  field :UNKNOWN_INTERNAL_ADDRESS, 10
  field :FORWARDING_RULE_MISMATCH, 11
  field :FORWARDING_RULE_NO_INSTANCES, 12
  field :FIREWALL_BLOCKING_LOAD_BALANCER_BACKEND_HEALTH_CHECK, 13
  field :INSTANCE_NOT_RUNNING, 14
  field :TRAFFIC_TYPE_BLOCKED, 15
  field :GKE_MASTER_UNAUTHORIZED_ACCESS, 16
  field :CLOUD_SQL_INSTANCE_UNAUTHORIZED_ACCESS, 17
  field :DROPPED_INSIDE_GKE_SERVICE, 18
  field :DROPPED_INSIDE_CLOUD_SQL_SERVICE, 19
  field :GOOGLE_MANAGED_SERVICE_NO_PEERING, 20
  field :CLOUD_SQL_INSTANCE_NO_IP_ADDRESS, 21
end

defmodule Google.Cloud.Networkmanagement.V1.Trace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :endpoint_info, 1,
    type: Google.Cloud.Networkmanagement.V1.EndpointInfo,
    json_name: "endpointInfo"

  field :steps, 2, repeated: true, type: Google.Cloud.Networkmanagement.V1.Step
end

defmodule Google.Cloud.Networkmanagement.V1.Step do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :step_info, 0

  field :description, 1, type: :string
  field :state, 2, type: Google.Cloud.Networkmanagement.V1.Step.State, enum: true
  field :causes_drop, 3, type: :bool, json_name: "causesDrop"
  field :project_id, 4, type: :string, json_name: "projectId"
  field :instance, 5, type: Google.Cloud.Networkmanagement.V1.InstanceInfo, oneof: 0
  field :firewall, 6, type: Google.Cloud.Networkmanagement.V1.FirewallInfo, oneof: 0
  field :route, 7, type: Google.Cloud.Networkmanagement.V1.RouteInfo, oneof: 0
  field :endpoint, 8, type: Google.Cloud.Networkmanagement.V1.EndpointInfo, oneof: 0

  field :forwarding_rule, 9,
    type: Google.Cloud.Networkmanagement.V1.ForwardingRuleInfo,
    json_name: "forwardingRule",
    oneof: 0

  field :vpn_gateway, 10,
    type: Google.Cloud.Networkmanagement.V1.VpnGatewayInfo,
    json_name: "vpnGateway",
    oneof: 0

  field :vpn_tunnel, 11,
    type: Google.Cloud.Networkmanagement.V1.VpnTunnelInfo,
    json_name: "vpnTunnel",
    oneof: 0

  field :deliver, 12, type: Google.Cloud.Networkmanagement.V1.DeliverInfo, oneof: 0
  field :forward, 13, type: Google.Cloud.Networkmanagement.V1.ForwardInfo, oneof: 0
  field :abort, 14, type: Google.Cloud.Networkmanagement.V1.AbortInfo, oneof: 0
  field :drop, 15, type: Google.Cloud.Networkmanagement.V1.DropInfo, oneof: 0

  field :load_balancer, 16,
    type: Google.Cloud.Networkmanagement.V1.LoadBalancerInfo,
    json_name: "loadBalancer",
    oneof: 0

  field :network, 17, type: Google.Cloud.Networkmanagement.V1.NetworkInfo, oneof: 0

  field :gke_master, 18,
    type: Google.Cloud.Networkmanagement.V1.GKEMasterInfo,
    json_name: "gkeMaster",
    oneof: 0

  field :cloud_sql_instance, 19,
    type: Google.Cloud.Networkmanagement.V1.CloudSQLInstanceInfo,
    json_name: "cloudSqlInstance",
    oneof: 0
end

defmodule Google.Cloud.Networkmanagement.V1.InstanceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :interface, 3, type: :string
  field :network_uri, 4, type: :string, json_name: "networkUri"
  field :internal_ip, 5, type: :string, json_name: "internalIp"
  field :external_ip, 6, type: :string, json_name: "externalIp"
  field :network_tags, 7, repeated: true, type: :string, json_name: "networkTags"
  field :service_account, 8, type: :string, json_name: "serviceAccount", deprecated: true
end

defmodule Google.Cloud.Networkmanagement.V1.NetworkInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :matched_ip_range, 4, type: :string, json_name: "matchedIpRange"
end

defmodule Google.Cloud.Networkmanagement.V1.FirewallInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :direction, 3, type: :string
  field :action, 4, type: :string
  field :priority, 5, type: :int32
  field :network_uri, 6, type: :string, json_name: "networkUri"
  field :target_tags, 7, repeated: true, type: :string, json_name: "targetTags"

  field :target_service_accounts, 8,
    repeated: true,
    type: :string,
    json_name: "targetServiceAccounts"

  field :policy, 9, type: :string

  field :firewall_rule_type, 10,
    type: Google.Cloud.Networkmanagement.V1.FirewallInfo.FirewallRuleType,
    json_name: "firewallRuleType",
    enum: true
end

defmodule Google.Cloud.Networkmanagement.V1.RouteInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :route_type, 8,
    type: Google.Cloud.Networkmanagement.V1.RouteInfo.RouteType,
    json_name: "routeType",
    enum: true

  field :next_hop_type, 9,
    type: Google.Cloud.Networkmanagement.V1.RouteInfo.NextHopType,
    json_name: "nextHopType",
    enum: true

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :dest_ip_range, 3, type: :string, json_name: "destIpRange"
  field :next_hop, 4, type: :string, json_name: "nextHop"
  field :network_uri, 5, type: :string, json_name: "networkUri"
  field :priority, 6, type: :int32
  field :instance_tags, 7, repeated: true, type: :string, json_name: "instanceTags"
end

defmodule Google.Cloud.Networkmanagement.V1.ForwardingRuleInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :matched_protocol, 3, type: :string, json_name: "matchedProtocol"
  field :matched_port_range, 6, type: :string, json_name: "matchedPortRange"
  field :vip, 4, type: :string
  field :target, 5, type: :string
  field :network_uri, 7, type: :string, json_name: "networkUri"
end

defmodule Google.Cloud.Networkmanagement.V1.LoadBalancerInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :load_balancer_type, 1,
    type: Google.Cloud.Networkmanagement.V1.LoadBalancerInfo.LoadBalancerType,
    json_name: "loadBalancerType",
    enum: true

  field :health_check_uri, 2, type: :string, json_name: "healthCheckUri"
  field :backends, 3, repeated: true, type: Google.Cloud.Networkmanagement.V1.LoadBalancerBackend

  field :backend_type, 4,
    type: Google.Cloud.Networkmanagement.V1.LoadBalancerInfo.BackendType,
    json_name: "backendType",
    enum: true

  field :backend_uri, 5, type: :string, json_name: "backendUri"
end

defmodule Google.Cloud.Networkmanagement.V1.LoadBalancerBackend do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string

  field :health_check_firewall_state, 3,
    type: Google.Cloud.Networkmanagement.V1.LoadBalancerBackend.HealthCheckFirewallState,
    json_name: "healthCheckFirewallState",
    enum: true

  field :health_check_allowing_firewall_rules, 4,
    repeated: true,
    type: :string,
    json_name: "healthCheckAllowingFirewallRules"

  field :health_check_blocking_firewall_rules, 5,
    repeated: true,
    type: :string,
    json_name: "healthCheckBlockingFirewallRules"
end

defmodule Google.Cloud.Networkmanagement.V1.VpnGatewayInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :network_uri, 3, type: :string, json_name: "networkUri"
  field :ip_address, 4, type: :string, json_name: "ipAddress"
  field :vpn_tunnel_uri, 5, type: :string, json_name: "vpnTunnelUri"
  field :region, 6, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1.VpnTunnelInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :source_gateway, 3, type: :string, json_name: "sourceGateway"
  field :remote_gateway, 4, type: :string, json_name: "remoteGateway"
  field :remote_gateway_ip, 5, type: :string, json_name: "remoteGatewayIp"
  field :source_gateway_ip, 6, type: :string, json_name: "sourceGatewayIp"
  field :network_uri, 7, type: :string, json_name: "networkUri"
  field :region, 8, type: :string

  field :routing_type, 9,
    type: Google.Cloud.Networkmanagement.V1.VpnTunnelInfo.RoutingType,
    json_name: "routingType",
    enum: true
end

defmodule Google.Cloud.Networkmanagement.V1.EndpointInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source_ip, 1, type: :string, json_name: "sourceIp"
  field :destination_ip, 2, type: :string, json_name: "destinationIp"
  field :protocol, 3, type: :string
  field :source_port, 4, type: :int32, json_name: "sourcePort"
  field :destination_port, 5, type: :int32, json_name: "destinationPort"
  field :source_network_uri, 6, type: :string, json_name: "sourceNetworkUri"
  field :destination_network_uri, 7, type: :string, json_name: "destinationNetworkUri"
end

defmodule Google.Cloud.Networkmanagement.V1.DeliverInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target, 1, type: Google.Cloud.Networkmanagement.V1.DeliverInfo.Target, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
end

defmodule Google.Cloud.Networkmanagement.V1.ForwardInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target, 1, type: Google.Cloud.Networkmanagement.V1.ForwardInfo.Target, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
end

defmodule Google.Cloud.Networkmanagement.V1.AbortInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cause, 1, type: Google.Cloud.Networkmanagement.V1.AbortInfo.Cause, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"

  field :projects_missing_permission, 3,
    repeated: true,
    type: :string,
    json_name: "projectsMissingPermission"
end

defmodule Google.Cloud.Networkmanagement.V1.DropInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cause, 1, type: Google.Cloud.Networkmanagement.V1.DropInfo.Cause, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
end

defmodule Google.Cloud.Networkmanagement.V1.GKEMasterInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cluster_uri, 2, type: :string, json_name: "clusterUri"
  field :cluster_network_uri, 4, type: :string, json_name: "clusterNetworkUri"
  field :internal_ip, 5, type: :string, json_name: "internalIp"
  field :external_ip, 6, type: :string, json_name: "externalIp"
end

defmodule Google.Cloud.Networkmanagement.V1.CloudSQLInstanceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :network_uri, 4, type: :string, json_name: "networkUri"
  field :internal_ip, 5, type: :string, json_name: "internalIp"
  field :external_ip, 6, type: :string, json_name: "externalIp"
  field :region, 7, type: :string
end