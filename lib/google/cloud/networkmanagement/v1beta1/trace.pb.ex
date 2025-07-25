defmodule Google.Cloud.Networkmanagement.V1beta1.LoadBalancerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LOAD_BALANCER_TYPE_UNSPECIFIED, 0
  field :HTTPS_ADVANCED_LOAD_BALANCER, 1
  field :HTTPS_LOAD_BALANCER, 2
  field :REGIONAL_HTTPS_LOAD_BALANCER, 3
  field :INTERNAL_HTTPS_LOAD_BALANCER, 4
  field :SSL_PROXY_LOAD_BALANCER, 5
  field :TCP_PROXY_LOAD_BALANCER, 6
  field :INTERNAL_TCP_PROXY_LOAD_BALANCER, 7
  field :NETWORK_LOAD_BALANCER, 8
  field :LEGACY_NETWORK_LOAD_BALANCER, 9
  field :TCP_UDP_INTERNAL_LOAD_BALANCER, 10
end

defmodule Google.Cloud.Networkmanagement.V1beta1.Step.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :START_FROM_INSTANCE, 1
  field :START_FROM_INTERNET, 2
  field :START_FROM_GOOGLE_SERVICE, 27
  field :START_FROM_PRIVATE_NETWORK, 3
  field :START_FROM_GKE_MASTER, 21
  field :START_FROM_CLOUD_SQL_INSTANCE, 22
  field :START_FROM_REDIS_INSTANCE, 32
  field :START_FROM_REDIS_CLUSTER, 33
  field :START_FROM_CLOUD_FUNCTION, 23
  field :START_FROM_APP_ENGINE_VERSION, 25
  field :START_FROM_CLOUD_RUN_REVISION, 26
  field :START_FROM_STORAGE_BUCKET, 29
  field :START_FROM_PSC_PUBLISHED_SERVICE, 30
  field :START_FROM_SERVERLESS_NEG, 31
  field :APPLY_INGRESS_FIREWALL_RULE, 4
  field :APPLY_EGRESS_FIREWALL_RULE, 5
  field :APPLY_ROUTE, 6
  field :APPLY_FORWARDING_RULE, 7
  field :ANALYZE_LOAD_BALANCER_BACKEND, 28
  field :SPOOFING_APPROVED, 8
  field :ARRIVE_AT_INSTANCE, 9
  field :ARRIVE_AT_INTERNAL_LOAD_BALANCER, 10
  field :ARRIVE_AT_EXTERNAL_LOAD_BALANCER, 11
  field :ARRIVE_AT_VPN_GATEWAY, 12
  field :ARRIVE_AT_VPN_TUNNEL, 13
  field :ARRIVE_AT_VPC_CONNECTOR, 24
  field :DIRECT_VPC_EGRESS_CONNECTION, 35
  field :SERVERLESS_EXTERNAL_CONNECTION, 36
  field :NAT, 14
  field :PROXY_CONNECTION, 15
  field :DELIVER, 16
  field :DROP, 17
  field :FORWARD, 18
  field :ABORT, 19
  field :VIEWER_PERMISSION_MISSING, 20
end

defmodule Google.Cloud.Networkmanagement.V1beta1.InstanceInfo.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :RUNNING, 1
  field :NOT_RUNNING, 2
end

defmodule Google.Cloud.Networkmanagement.V1beta1.FirewallInfo.FirewallRuleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FIREWALL_RULE_TYPE_UNSPECIFIED, 0
  field :HIERARCHICAL_FIREWALL_POLICY_RULE, 1
  field :VPC_FIREWALL_RULE, 2
  field :IMPLIED_VPC_FIREWALL_RULE, 3
  field :SERVERLESS_VPC_ACCESS_MANAGED_FIREWALL_RULE, 4
  field :NETWORK_FIREWALL_POLICY_RULE, 5
  field :NETWORK_REGIONAL_FIREWALL_POLICY_RULE, 6
  field :UNSUPPORTED_FIREWALL_POLICY_RULE, 100
  field :TRACKING_STATE, 101
  field :ANALYSIS_SKIPPED, 102
end

defmodule Google.Cloud.Networkmanagement.V1beta1.RouteInfo.RouteType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ROUTE_TYPE_UNSPECIFIED, 0
  field :SUBNET, 1
  field :STATIC, 2
  field :DYNAMIC, 3
  field :PEERING_SUBNET, 4
  field :PEERING_STATIC, 5
  field :PEERING_DYNAMIC, 6
  field :POLICY_BASED, 7
  field :ADVERTISED, 101
end

defmodule Google.Cloud.Networkmanagement.V1beta1.RouteInfo.NextHopType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
  field :NEXT_HOP_NCC_HUB, 12
  field :SECURE_WEB_PROXY_GATEWAY, 13
end

defmodule Google.Cloud.Networkmanagement.V1beta1.RouteInfo.RouteScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ROUTE_SCOPE_UNSPECIFIED, 0
  field :NETWORK, 1
  field :NCC_HUB, 2
end

defmodule Google.Cloud.Networkmanagement.V1beta1.GoogleServiceInfo.GoogleServiceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GOOGLE_SERVICE_TYPE_UNSPECIFIED, 0
  field :IAP, 1
  field :GFE_PROXY_OR_HEALTH_CHECK_PROBER, 2
  field :CLOUD_DNS, 3
  field :GOOGLE_API, 4
  field :GOOGLE_API_PSC, 5
  field :GOOGLE_API_VPC_SC, 6
  field :SERVERLESS_VPC_ACCESS, 7
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LoadBalancerInfo.LoadBalancerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LOAD_BALANCER_TYPE_UNSPECIFIED, 0
  field :INTERNAL_TCP_UDP, 1
  field :NETWORK_TCP_UDP, 2
  field :HTTP_PROXY, 3
  field :TCP_PROXY, 4
  field :SSL_PROXY, 5
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LoadBalancerInfo.BackendType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BACKEND_TYPE_UNSPECIFIED, 0
  field :BACKEND_SERVICE, 1
  field :TARGET_POOL, 2
  field :TARGET_INSTANCE, 3
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LoadBalancerBackend.HealthCheckFirewallState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HEALTH_CHECK_FIREWALL_STATE_UNSPECIFIED, 0
  field :CONFIGURED, 1
  field :MISCONFIGURED, 2
end

defmodule Google.Cloud.Networkmanagement.V1beta1.VpnTunnelInfo.RoutingType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ROUTING_TYPE_UNSPECIFIED, 0
  field :ROUTE_BASED, 1
  field :POLICY_BASED, 2
  field :DYNAMIC, 3
end

defmodule Google.Cloud.Networkmanagement.V1beta1.DeliverInfo.Target do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TARGET_UNSPECIFIED, 0
  field :INSTANCE, 1
  field :INTERNET, 2
  field :GOOGLE_API, 3
  field :GKE_MASTER, 4
  field :CLOUD_SQL_INSTANCE, 5
  field :PSC_PUBLISHED_SERVICE, 6
  field :PSC_GOOGLE_API, 7
  field :PSC_VPC_SC, 8
  field :SERVERLESS_NEG, 9
  field :STORAGE_BUCKET, 10
  field :PRIVATE_NETWORK, 11
  field :CLOUD_FUNCTION, 12
  field :APP_ENGINE_VERSION, 13
  field :CLOUD_RUN_REVISION, 14
  field :GOOGLE_MANAGED_SERVICE, 15
  field :REDIS_INSTANCE, 16
  field :REDIS_CLUSTER, 17
end

defmodule Google.Cloud.Networkmanagement.V1beta1.DeliverInfo.GoogleServiceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GOOGLE_SERVICE_TYPE_UNSPECIFIED, 0
  field :IAP, 1
  field :GFE_PROXY_OR_HEALTH_CHECK_PROBER, 2
  field :CLOUD_DNS, 3
  field :PRIVATE_GOOGLE_ACCESS, 4
  field :SERVERLESS_VPC_ACCESS, 5
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ForwardInfo.Target do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TARGET_UNSPECIFIED, 0
  field :PEERING_VPC, 1
  field :VPN_GATEWAY, 2
  field :INTERCONNECT, 3
  field :GKE_MASTER, 4
  field :IMPORTED_CUSTOM_ROUTE_NEXT_HOP, 5
  field :CLOUD_SQL_INSTANCE, 6
  field :ANOTHER_PROJECT, 7
  field :NCC_HUB, 8
  field :ROUTER_APPLIANCE, 9
  field :SECURE_WEB_PROXY_GATEWAY, 10
end

defmodule Google.Cloud.Networkmanagement.V1beta1.AbortInfo.Cause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CAUSE_UNSPECIFIED, 0
  field :UNKNOWN_NETWORK, 1
  field :UNKNOWN_PROJECT, 3
  field :NO_EXTERNAL_IP, 7
  field :UNINTENDED_DESTINATION, 8
  field :SOURCE_ENDPOINT_NOT_FOUND, 11
  field :MISMATCHED_SOURCE_NETWORK, 12
  field :DESTINATION_ENDPOINT_NOT_FOUND, 13
  field :MISMATCHED_DESTINATION_NETWORK, 14
  field :UNKNOWN_IP, 2
  field :GOOGLE_MANAGED_SERVICE_UNKNOWN_IP, 32
  field :SOURCE_IP_ADDRESS_NOT_IN_SOURCE_NETWORK, 23
  field :PERMISSION_DENIED, 4
  field :PERMISSION_DENIED_NO_CLOUD_NAT_CONFIGS, 28
  field :PERMISSION_DENIED_NO_NEG_ENDPOINT_CONFIGS, 29
  field :PERMISSION_DENIED_NO_CLOUD_ROUTER_CONFIGS, 36
  field :NO_SOURCE_LOCATION, 5
  field :INVALID_ARGUMENT, 6
  field :TRACE_TOO_LONG, 9
  field :INTERNAL_ERROR, 10
  field :UNSUPPORTED, 15
  field :MISMATCHED_IP_VERSION, 16
  field :GKE_KONNECTIVITY_PROXY_UNSUPPORTED, 17
  field :RESOURCE_CONFIG_NOT_FOUND, 18
  field :VM_INSTANCE_CONFIG_NOT_FOUND, 24
  field :NETWORK_CONFIG_NOT_FOUND, 25
  field :FIREWALL_CONFIG_NOT_FOUND, 26
  field :ROUTE_CONFIG_NOT_FOUND, 27
  field :GOOGLE_MANAGED_SERVICE_AMBIGUOUS_PSC_ENDPOINT, 19
  field :GOOGLE_MANAGED_SERVICE_AMBIGUOUS_ENDPOINT, 39
  field :SOURCE_PSC_CLOUD_SQL_UNSUPPORTED, 20
  field :SOURCE_REDIS_CLUSTER_UNSUPPORTED, 34
  field :SOURCE_REDIS_INSTANCE_UNSUPPORTED, 35
  field :SOURCE_FORWARDING_RULE_UNSUPPORTED, 21
  field :NON_ROUTABLE_IP_ADDRESS, 22
  field :UNKNOWN_ISSUE_IN_GOOGLE_MANAGED_PROJECT, 30
  field :UNSUPPORTED_GOOGLE_MANAGED_PROJECT_CONFIG, 31
  field :NO_SERVERLESS_IP_RANGES, 37
end

defmodule Google.Cloud.Networkmanagement.V1beta1.DropInfo.Cause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CAUSE_UNSPECIFIED, 0
  field :UNKNOWN_EXTERNAL_ADDRESS, 1
  field :FOREIGN_IP_DISALLOWED, 2
  field :FIREWALL_RULE, 3
  field :NO_ROUTE, 4
  field :ROUTE_BLACKHOLE, 5
  field :ROUTE_WRONG_NETWORK, 6
  field :ROUTE_NEXT_HOP_IP_ADDRESS_NOT_RESOLVED, 42
  field :ROUTE_NEXT_HOP_RESOURCE_NOT_FOUND, 43
  field :ROUTE_NEXT_HOP_INSTANCE_WRONG_NETWORK, 49
  field :ROUTE_NEXT_HOP_INSTANCE_NON_PRIMARY_IP, 50
  field :ROUTE_NEXT_HOP_FORWARDING_RULE_IP_MISMATCH, 51
  field :ROUTE_NEXT_HOP_VPN_TUNNEL_NOT_ESTABLISHED, 52
  field :ROUTE_NEXT_HOP_FORWARDING_RULE_TYPE_INVALID, 53
  field :NO_ROUTE_FROM_INTERNET_TO_PRIVATE_IPV6_ADDRESS, 44
  field :NO_ROUTE_FROM_EXTERNAL_IPV6_SOURCE_TO_PRIVATE_IPV6_ADDRESS, 98
  field :VPN_TUNNEL_LOCAL_SELECTOR_MISMATCH, 45
  field :VPN_TUNNEL_REMOTE_SELECTOR_MISMATCH, 46
  field :PRIVATE_TRAFFIC_TO_INTERNET, 7
  field :PRIVATE_GOOGLE_ACCESS_DISALLOWED, 8
  field :PRIVATE_GOOGLE_ACCESS_VIA_VPN_TUNNEL_UNSUPPORTED, 47
  field :NO_EXTERNAL_ADDRESS, 9
  field :UNKNOWN_INTERNAL_ADDRESS, 10
  field :FORWARDING_RULE_MISMATCH, 11
  field :FORWARDING_RULE_NO_INSTANCES, 12
  field :FIREWALL_BLOCKING_LOAD_BALANCER_BACKEND_HEALTH_CHECK, 13
  field :INGRESS_FIREWALL_TAGS_UNSUPPORTED_BY_DIRECT_VPC_EGRESS, 85
  field :INSTANCE_NOT_RUNNING, 14
  field :GKE_CLUSTER_NOT_RUNNING, 27
  field :CLOUD_SQL_INSTANCE_NOT_RUNNING, 28
  field :REDIS_INSTANCE_NOT_RUNNING, 68
  field :REDIS_CLUSTER_NOT_RUNNING, 69
  field :TRAFFIC_TYPE_BLOCKED, 15
  field :GKE_MASTER_UNAUTHORIZED_ACCESS, 16
  field :CLOUD_SQL_INSTANCE_UNAUTHORIZED_ACCESS, 17
  field :DROPPED_INSIDE_GKE_SERVICE, 18
  field :DROPPED_INSIDE_CLOUD_SQL_SERVICE, 19
  field :GOOGLE_MANAGED_SERVICE_NO_PEERING, 20
  field :GOOGLE_MANAGED_SERVICE_NO_PSC_ENDPOINT, 38
  field :GKE_PSC_ENDPOINT_MISSING, 36
  field :CLOUD_SQL_INSTANCE_NO_IP_ADDRESS, 21
  field :GKE_CONTROL_PLANE_REGION_MISMATCH, 30
  field :PUBLIC_GKE_CONTROL_PLANE_TO_PRIVATE_DESTINATION, 31
  field :GKE_CONTROL_PLANE_NO_ROUTE, 32
  field :CLOUD_SQL_INSTANCE_NOT_CONFIGURED_FOR_EXTERNAL_TRAFFIC, 33
  field :PUBLIC_CLOUD_SQL_INSTANCE_TO_PRIVATE_DESTINATION, 34
  field :CLOUD_SQL_INSTANCE_NO_ROUTE, 35
  field :CLOUD_SQL_CONNECTOR_REQUIRED, 63
  field :CLOUD_FUNCTION_NOT_ACTIVE, 22
  field :VPC_CONNECTOR_NOT_SET, 23
  field :VPC_CONNECTOR_NOT_RUNNING, 24
  field :VPC_CONNECTOR_SERVERLESS_TRAFFIC_BLOCKED, 60
  field :VPC_CONNECTOR_HEALTH_CHECK_TRAFFIC_BLOCKED, 61
  field :FORWARDING_RULE_REGION_MISMATCH, 25
  field :PSC_CONNECTION_NOT_ACCEPTED, 26
  field :PSC_ENDPOINT_ACCESSED_FROM_PEERED_NETWORK, 41
  field :PSC_NEG_PRODUCER_ENDPOINT_NO_GLOBAL_ACCESS, 48
  field :PSC_NEG_PRODUCER_FORWARDING_RULE_MULTIPLE_PORTS, 54
  field :CLOUD_SQL_PSC_NEG_UNSUPPORTED, 58
  field :NO_NAT_SUBNETS_FOR_PSC_SERVICE_ATTACHMENT, 57
  field :PSC_TRANSITIVITY_NOT_PROPAGATED, 64
  field :HYBRID_NEG_NON_DYNAMIC_ROUTE_MATCHED, 55
  field :HYBRID_NEG_NON_LOCAL_DYNAMIC_ROUTE_MATCHED, 56
  field :CLOUD_RUN_REVISION_NOT_READY, 29
  field :DROPPED_INSIDE_PSC_SERVICE_PRODUCER, 37
  field :LOAD_BALANCER_HAS_NO_PROXY_SUBNET, 39
  field :CLOUD_NAT_NO_ADDRESSES, 40
  field :ROUTING_LOOP, 59
  field :DROPPED_INSIDE_GOOGLE_MANAGED_SERVICE, 62
  field :LOAD_BALANCER_BACKEND_INVALID_NETWORK, 65
  field :BACKEND_SERVICE_NAMED_PORT_NOT_DEFINED, 66
  field :DESTINATION_IS_PRIVATE_NAT_IP_RANGE, 67
  field :DROPPED_INSIDE_REDIS_INSTANCE_SERVICE, 70
  field :REDIS_INSTANCE_UNSUPPORTED_PORT, 71
  field :REDIS_INSTANCE_CONNECTING_FROM_PUPI_ADDRESS, 72
  field :REDIS_INSTANCE_NO_ROUTE_TO_DESTINATION_NETWORK, 73
  field :REDIS_INSTANCE_NO_EXTERNAL_IP, 74
  field :REDIS_INSTANCE_UNSUPPORTED_PROTOCOL, 78
  field :DROPPED_INSIDE_REDIS_CLUSTER_SERVICE, 75
  field :REDIS_CLUSTER_UNSUPPORTED_PORT, 76
  field :REDIS_CLUSTER_NO_EXTERNAL_IP, 77
  field :REDIS_CLUSTER_UNSUPPORTED_PROTOCOL, 79
  field :NO_ADVERTISED_ROUTE_TO_GCP_DESTINATION, 80
  field :NO_TRAFFIC_SELECTOR_TO_GCP_DESTINATION, 81
  field :NO_KNOWN_ROUTE_FROM_PEERED_NETWORK_TO_DESTINATION, 82
  field :PRIVATE_NAT_TO_PSC_ENDPOINT_UNSUPPORTED, 83
  field :PSC_PORT_MAPPING_PORT_MISMATCH, 86
  field :PSC_PORT_MAPPING_WITHOUT_PSC_CONNECTION_UNSUPPORTED, 87
  field :UNSUPPORTED_ROUTE_MATCHED_FOR_NAT64_DESTINATION, 88
  field :TRAFFIC_FROM_HYBRID_ENDPOINT_TO_INTERNET_DISALLOWED, 89
  field :NO_MATCHING_NAT64_GATEWAY, 90
  field :LOAD_BALANCER_BACKEND_IP_VERSION_MISMATCH, 96
  field :NO_KNOWN_ROUTE_FROM_NCC_NETWORK_TO_DESTINATION, 97
end

defmodule Google.Cloud.Networkmanagement.V1beta1.NatInfo.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :INTERNAL_TO_EXTERNAL, 1
  field :EXTERNAL_TO_INTERNAL, 2
  field :CLOUD_NAT, 3
  field :PRIVATE_SERVICE_CONNECT, 4
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LoadBalancerBackendInfo.HealthCheckFirewallsConfigState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HEALTH_CHECK_FIREWALLS_CONFIG_STATE_UNSPECIFIED, 0
  field :FIREWALLS_CONFIGURED, 1
  field :FIREWALLS_PARTIALLY_CONFIGURED, 2
  field :FIREWALLS_NOT_CONFIGURED, 3
  field :FIREWALLS_UNSUPPORTED, 4
end

defmodule Google.Cloud.Networkmanagement.V1beta1.Trace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :endpoint_info, 1,
    type: Google.Cloud.Networkmanagement.V1beta1.EndpointInfo,
    json_name: "endpointInfo"

  field :steps, 2, repeated: true, type: Google.Cloud.Networkmanagement.V1beta1.Step
  field :forward_trace_id, 4, type: :int32, json_name: "forwardTraceId"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.Step do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :step_info, 0

  field :description, 1, type: :string
  field :state, 2, type: Google.Cloud.Networkmanagement.V1beta1.Step.State, enum: true
  field :causes_drop, 3, type: :bool, json_name: "causesDrop"
  field :project_id, 4, type: :string, json_name: "projectId"
  field :instance, 5, type: Google.Cloud.Networkmanagement.V1beta1.InstanceInfo, oneof: 0
  field :firewall, 6, type: Google.Cloud.Networkmanagement.V1beta1.FirewallInfo, oneof: 0
  field :route, 7, type: Google.Cloud.Networkmanagement.V1beta1.RouteInfo, oneof: 0
  field :endpoint, 8, type: Google.Cloud.Networkmanagement.V1beta1.EndpointInfo, oneof: 0

  field :google_service, 24,
    type: Google.Cloud.Networkmanagement.V1beta1.GoogleServiceInfo,
    json_name: "googleService",
    oneof: 0

  field :forwarding_rule, 9,
    type: Google.Cloud.Networkmanagement.V1beta1.ForwardingRuleInfo,
    json_name: "forwardingRule",
    oneof: 0

  field :vpn_gateway, 10,
    type: Google.Cloud.Networkmanagement.V1beta1.VpnGatewayInfo,
    json_name: "vpnGateway",
    oneof: 0

  field :vpn_tunnel, 11,
    type: Google.Cloud.Networkmanagement.V1beta1.VpnTunnelInfo,
    json_name: "vpnTunnel",
    oneof: 0

  field :vpc_connector, 21,
    type: Google.Cloud.Networkmanagement.V1beta1.VpcConnectorInfo,
    json_name: "vpcConnector",
    oneof: 0

  field :direct_vpc_egress_connection, 33,
    type: Google.Cloud.Networkmanagement.V1beta1.DirectVpcEgressConnectionInfo,
    json_name: "directVpcEgressConnection",
    oneof: 0

  field :serverless_external_connection, 34,
    type: Google.Cloud.Networkmanagement.V1beta1.ServerlessExternalConnectionInfo,
    json_name: "serverlessExternalConnection",
    oneof: 0

  field :deliver, 12, type: Google.Cloud.Networkmanagement.V1beta1.DeliverInfo, oneof: 0
  field :forward, 13, type: Google.Cloud.Networkmanagement.V1beta1.ForwardInfo, oneof: 0
  field :abort, 14, type: Google.Cloud.Networkmanagement.V1beta1.AbortInfo, oneof: 0
  field :drop, 15, type: Google.Cloud.Networkmanagement.V1beta1.DropInfo, oneof: 0

  field :load_balancer, 16,
    type: Google.Cloud.Networkmanagement.V1beta1.LoadBalancerInfo,
    json_name: "loadBalancer",
    oneof: 0,
    deprecated: true

  field :network, 17, type: Google.Cloud.Networkmanagement.V1beta1.NetworkInfo, oneof: 0

  field :gke_master, 18,
    type: Google.Cloud.Networkmanagement.V1beta1.GKEMasterInfo,
    json_name: "gkeMaster",
    oneof: 0

  field :cloud_sql_instance, 19,
    type: Google.Cloud.Networkmanagement.V1beta1.CloudSQLInstanceInfo,
    json_name: "cloudSqlInstance",
    oneof: 0

  field :redis_instance, 30,
    type: Google.Cloud.Networkmanagement.V1beta1.RedisInstanceInfo,
    json_name: "redisInstance",
    oneof: 0

  field :redis_cluster, 31,
    type: Google.Cloud.Networkmanagement.V1beta1.RedisClusterInfo,
    json_name: "redisCluster",
    oneof: 0

  field :cloud_function, 20,
    type: Google.Cloud.Networkmanagement.V1beta1.CloudFunctionInfo,
    json_name: "cloudFunction",
    oneof: 0

  field :app_engine_version, 22,
    type: Google.Cloud.Networkmanagement.V1beta1.AppEngineVersionInfo,
    json_name: "appEngineVersion",
    oneof: 0

  field :cloud_run_revision, 23,
    type: Google.Cloud.Networkmanagement.V1beta1.CloudRunRevisionInfo,
    json_name: "cloudRunRevision",
    oneof: 0

  field :nat, 25, type: Google.Cloud.Networkmanagement.V1beta1.NatInfo, oneof: 0

  field :proxy_connection, 26,
    type: Google.Cloud.Networkmanagement.V1beta1.ProxyConnectionInfo,
    json_name: "proxyConnection",
    oneof: 0

  field :load_balancer_backend_info, 27,
    type: Google.Cloud.Networkmanagement.V1beta1.LoadBalancerBackendInfo,
    json_name: "loadBalancerBackendInfo",
    oneof: 0

  field :storage_bucket, 28,
    type: Google.Cloud.Networkmanagement.V1beta1.StorageBucketInfo,
    json_name: "storageBucket",
    oneof: 0

  field :serverless_neg, 29,
    type: Google.Cloud.Networkmanagement.V1beta1.ServerlessNegInfo,
    json_name: "serverlessNeg",
    oneof: 0
end

defmodule Google.Cloud.Networkmanagement.V1beta1.InstanceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :interface, 3, type: :string
  field :network_uri, 4, type: :string, json_name: "networkUri"
  field :internal_ip, 5, type: :string, json_name: "internalIp"
  field :external_ip, 6, type: :string, json_name: "externalIp"
  field :network_tags, 7, repeated: true, type: :string, json_name: "networkTags"
  field :service_account, 8, type: :string, json_name: "serviceAccount", deprecated: true
  field :psc_network_attachment_uri, 9, type: :string, json_name: "pscNetworkAttachmentUri"
  field :running, 10, type: :bool, deprecated: true
  field :status, 11, type: Google.Cloud.Networkmanagement.V1beta1.InstanceInfo.Status, enum: true
end

defmodule Google.Cloud.Networkmanagement.V1beta1.NetworkInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :matched_subnet_uri, 5, type: :string, json_name: "matchedSubnetUri"
  field :matched_ip_range, 4, type: :string, json_name: "matchedIpRange"
  field :region, 6, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.FirewallInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
  field :policy_uri, 11, type: :string, json_name: "policyUri"

  field :firewall_rule_type, 10,
    type: Google.Cloud.Networkmanagement.V1beta1.FirewallInfo.FirewallRuleType,
    json_name: "firewallRuleType",
    enum: true

  field :policy_priority, 12, type: :int32, json_name: "policyPriority"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.RouteInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :route_type, 8,
    type: Google.Cloud.Networkmanagement.V1beta1.RouteInfo.RouteType,
    json_name: "routeType",
    enum: true

  field :next_hop_type, 9,
    type: Google.Cloud.Networkmanagement.V1beta1.RouteInfo.NextHopType,
    json_name: "nextHopType",
    enum: true

  field :route_scope, 14,
    type: Google.Cloud.Networkmanagement.V1beta1.RouteInfo.RouteScope,
    json_name: "routeScope",
    enum: true,
    deprecated: true

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :region, 19, type: :string
  field :dest_ip_range, 3, type: :string, json_name: "destIpRange"
  field :next_hop, 4, type: :string, json_name: "nextHop", deprecated: true
  field :network_uri, 5, type: :string, json_name: "networkUri"
  field :priority, 6, type: :int32
  field :instance_tags, 7, repeated: true, type: :string, json_name: "instanceTags"
  field :src_ip_range, 10, type: :string, json_name: "srcIpRange"
  field :dest_port_ranges, 11, repeated: true, type: :string, json_name: "destPortRanges"
  field :src_port_ranges, 12, repeated: true, type: :string, json_name: "srcPortRanges"
  field :protocols, 13, repeated: true, type: :string
  field :ncc_hub_uri, 15, proto3_optional: true, type: :string, json_name: "nccHubUri"
  field :ncc_spoke_uri, 16, proto3_optional: true, type: :string, json_name: "nccSpokeUri"

  field :advertised_route_source_router_uri, 17,
    proto3_optional: true,
    type: :string,
    json_name: "advertisedRouteSourceRouterUri"

  field :advertised_route_next_hop_uri, 18,
    proto3_optional: true,
    type: :string,
    json_name: "advertisedRouteNextHopUri",
    deprecated: true

  field :next_hop_uri, 20, type: :string, json_name: "nextHopUri"
  field :next_hop_network_uri, 21, type: :string, json_name: "nextHopNetworkUri"
  field :originating_route_uri, 22, type: :string, json_name: "originatingRouteUri"

  field :originating_route_display_name, 23,
    type: :string,
    json_name: "originatingRouteDisplayName"

  field :ncc_hub_route_uri, 24, type: :string, json_name: "nccHubRouteUri"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.GoogleServiceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_ip, 1, type: :string, json_name: "sourceIp"

  field :google_service_type, 2,
    type: Google.Cloud.Networkmanagement.V1beta1.GoogleServiceInfo.GoogleServiceType,
    json_name: "googleServiceType",
    enum: true
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ForwardingRuleInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :matched_protocol, 3, type: :string, json_name: "matchedProtocol"
  field :matched_port_range, 6, type: :string, json_name: "matchedPortRange"
  field :vip, 4, type: :string
  field :target, 5, type: :string
  field :network_uri, 7, type: :string, json_name: "networkUri"
  field :region, 8, type: :string
  field :load_balancer_name, 9, type: :string, json_name: "loadBalancerName"
  field :psc_service_attachment_uri, 10, type: :string, json_name: "pscServiceAttachmentUri"
  field :psc_google_api_target, 11, type: :string, json_name: "pscGoogleApiTarget"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LoadBalancerInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :load_balancer_type, 1,
    type: Google.Cloud.Networkmanagement.V1beta1.LoadBalancerInfo.LoadBalancerType,
    json_name: "loadBalancerType",
    enum: true

  field :health_check_uri, 2, type: :string, json_name: "healthCheckUri", deprecated: true

  field :backends, 3,
    repeated: true,
    type: Google.Cloud.Networkmanagement.V1beta1.LoadBalancerBackend

  field :backend_type, 4,
    type: Google.Cloud.Networkmanagement.V1beta1.LoadBalancerInfo.BackendType,
    json_name: "backendType",
    enum: true

  field :backend_uri, 5, type: :string, json_name: "backendUri"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LoadBalancerBackend do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string

  field :health_check_firewall_state, 3,
    type: Google.Cloud.Networkmanagement.V1beta1.LoadBalancerBackend.HealthCheckFirewallState,
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

defmodule Google.Cloud.Networkmanagement.V1beta1.VpnGatewayInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :network_uri, 3, type: :string, json_name: "networkUri"
  field :ip_address, 4, type: :string, json_name: "ipAddress"
  field :vpn_tunnel_uri, 5, type: :string, json_name: "vpnTunnelUri"
  field :region, 6, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.VpnTunnelInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :source_gateway, 3, type: :string, json_name: "sourceGateway"
  field :remote_gateway, 4, type: :string, json_name: "remoteGateway"
  field :remote_gateway_ip, 5, type: :string, json_name: "remoteGatewayIp"
  field :source_gateway_ip, 6, type: :string, json_name: "sourceGatewayIp"
  field :network_uri, 7, type: :string, json_name: "networkUri"
  field :region, 8, type: :string

  field :routing_type, 9,
    type: Google.Cloud.Networkmanagement.V1beta1.VpnTunnelInfo.RoutingType,
    json_name: "routingType",
    enum: true
end

defmodule Google.Cloud.Networkmanagement.V1beta1.EndpointInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_ip, 1, type: :string, json_name: "sourceIp"
  field :destination_ip, 2, type: :string, json_name: "destinationIp"
  field :protocol, 3, type: :string
  field :source_port, 4, type: :int32, json_name: "sourcePort"
  field :destination_port, 5, type: :int32, json_name: "destinationPort"
  field :source_network_uri, 6, type: :string, json_name: "sourceNetworkUri"
  field :destination_network_uri, 7, type: :string, json_name: "destinationNetworkUri"
  field :source_agent_uri, 8, type: :string, json_name: "sourceAgentUri"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.DeliverInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target, 1, type: Google.Cloud.Networkmanagement.V1beta1.DeliverInfo.Target, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
  field :ip_address, 3, type: :string, json_name: "ipAddress", deprecated: false
  field :storage_bucket, 4, type: :string, json_name: "storageBucket"
  field :psc_google_api_target, 5, type: :string, json_name: "pscGoogleApiTarget"

  field :google_service_type, 6,
    type: Google.Cloud.Networkmanagement.V1beta1.DeliverInfo.GoogleServiceType,
    json_name: "googleServiceType",
    enum: true
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ForwardInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target, 1, type: Google.Cloud.Networkmanagement.V1beta1.ForwardInfo.Target, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
  field :ip_address, 3, type: :string, json_name: "ipAddress", deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1beta1.AbortInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cause, 1, type: Google.Cloud.Networkmanagement.V1beta1.AbortInfo.Cause, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
  field :ip_address, 4, type: :string, json_name: "ipAddress", deprecated: false

  field :projects_missing_permission, 3,
    repeated: true,
    type: :string,
    json_name: "projectsMissingPermission"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.DropInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cause, 1, type: Google.Cloud.Networkmanagement.V1beta1.DropInfo.Cause, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
  field :source_ip, 3, type: :string, json_name: "sourceIp"
  field :destination_ip, 4, type: :string, json_name: "destinationIp"
  field :region, 5, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.GKEMasterInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cluster_uri, 2, type: :string, json_name: "clusterUri"
  field :cluster_network_uri, 4, type: :string, json_name: "clusterNetworkUri"
  field :internal_ip, 5, type: :string, json_name: "internalIp"
  field :external_ip, 6, type: :string, json_name: "externalIp"
  field :dns_endpoint, 7, type: :string, json_name: "dnsEndpoint"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.CloudSQLInstanceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :network_uri, 4, type: :string, json_name: "networkUri"
  field :internal_ip, 5, type: :string, json_name: "internalIp"
  field :external_ip, 6, type: :string, json_name: "externalIp"
  field :region, 7, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.RedisInstanceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :network_uri, 3, type: :string, json_name: "networkUri"
  field :primary_endpoint_ip, 4, type: :string, json_name: "primaryEndpointIp"
  field :read_endpoint_ip, 5, type: :string, json_name: "readEndpointIp"
  field :region, 6, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.RedisClusterInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :network_uri, 3, type: :string, json_name: "networkUri"

  field :discovery_endpoint_ip_address, 4,
    type: :string,
    json_name: "discoveryEndpointIpAddress",
    deprecated: false

  field :secondary_endpoint_ip_address, 5,
    type: :string,
    json_name: "secondaryEndpointIpAddress",
    deprecated: false

  field :location, 6, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.CloudFunctionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :location, 3, type: :string
  field :version_id, 4, type: :int64, json_name: "versionId"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.CloudRunRevisionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :location, 4, type: :string
  field :service_uri, 5, type: :string, json_name: "serviceUri"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.AppEngineVersionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :runtime, 3, type: :string
  field :environment, 4, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.VpcConnectorInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :location, 3, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.DirectVpcEgressConnectionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :network_uri, 1, type: :string, json_name: "networkUri"
  field :subnetwork_uri, 2, type: :string, json_name: "subnetworkUri"
  field :selected_ip_range, 3, type: :string, json_name: "selectedIpRange", deprecated: false
  field :selected_ip_address, 4, type: :string, json_name: "selectedIpAddress", deprecated: false
  field :region, 5, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ServerlessExternalConnectionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :selected_ip_address, 1, type: :string, json_name: "selectedIpAddress", deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1beta1.NatInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Google.Cloud.Networkmanagement.V1beta1.NatInfo.Type, enum: true
  field :protocol, 2, type: :string
  field :network_uri, 3, type: :string, json_name: "networkUri"
  field :old_source_ip, 4, type: :string, json_name: "oldSourceIp"
  field :new_source_ip, 5, type: :string, json_name: "newSourceIp"
  field :old_destination_ip, 6, type: :string, json_name: "oldDestinationIp"
  field :new_destination_ip, 7, type: :string, json_name: "newDestinationIp"
  field :old_source_port, 8, type: :int32, json_name: "oldSourcePort"
  field :new_source_port, 9, type: :int32, json_name: "newSourcePort"
  field :old_destination_port, 10, type: :int32, json_name: "oldDestinationPort"
  field :new_destination_port, 11, type: :int32, json_name: "newDestinationPort"
  field :router_uri, 12, type: :string, json_name: "routerUri"
  field :nat_gateway_name, 13, type: :string, json_name: "natGatewayName"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ProxyConnectionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :protocol, 1, type: :string
  field :old_source_ip, 2, type: :string, json_name: "oldSourceIp"
  field :new_source_ip, 3, type: :string, json_name: "newSourceIp"
  field :old_destination_ip, 4, type: :string, json_name: "oldDestinationIp"
  field :new_destination_ip, 5, type: :string, json_name: "newDestinationIp"
  field :old_source_port, 6, type: :int32, json_name: "oldSourcePort"
  field :new_source_port, 7, type: :int32, json_name: "newSourcePort"
  field :old_destination_port, 8, type: :int32, json_name: "oldDestinationPort"
  field :new_destination_port, 9, type: :int32, json_name: "newDestinationPort"
  field :subnet_uri, 10, type: :string, json_name: "subnetUri"
  field :network_uri, 11, type: :string, json_name: "networkUri"
end

defmodule Google.Cloud.Networkmanagement.V1beta1.LoadBalancerBackendInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :instance_uri, 2, type: :string, json_name: "instanceUri"
  field :backend_service_uri, 3, type: :string, json_name: "backendServiceUri"
  field :instance_group_uri, 4, type: :string, json_name: "instanceGroupUri"
  field :network_endpoint_group_uri, 5, type: :string, json_name: "networkEndpointGroupUri"
  field :backend_bucket_uri, 8, type: :string, json_name: "backendBucketUri"
  field :psc_service_attachment_uri, 9, type: :string, json_name: "pscServiceAttachmentUri"
  field :psc_google_api_target, 10, type: :string, json_name: "pscGoogleApiTarget"
  field :health_check_uri, 6, type: :string, json_name: "healthCheckUri"

  field :health_check_firewalls_config_state, 7,
    type:
      Google.Cloud.Networkmanagement.V1beta1.LoadBalancerBackendInfo.HealthCheckFirewallsConfigState,
    json_name: "healthCheckFirewallsConfigState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networkmanagement.V1beta1.StorageBucketInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :bucket, 1, type: :string
end

defmodule Google.Cloud.Networkmanagement.V1beta1.ServerlessNegInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :neg_uri, 1, type: :string, json_name: "negUri"
end
