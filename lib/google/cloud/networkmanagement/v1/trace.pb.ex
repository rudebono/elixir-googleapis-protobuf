defmodule Google.Cloud.Networkmanagement.V1.Step.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :START_FROM_INSTANCE
          | :START_FROM_INTERNET
          | :START_FROM_PRIVATE_NETWORK
          | :START_FROM_GKE_MASTER
          | :START_FROM_CLOUD_SQL_INSTANCE
          | :APPLY_INGRESS_FIREWALL_RULE
          | :APPLY_EGRESS_FIREWALL_RULE
          | :APPLY_ROUTE
          | :APPLY_FORWARDING_RULE
          | :SPOOFING_APPROVED
          | :ARRIVE_AT_INSTANCE
          | :ARRIVE_AT_INTERNAL_LOAD_BALANCER
          | :ARRIVE_AT_EXTERNAL_LOAD_BALANCER
          | :ARRIVE_AT_VPN_GATEWAY
          | :ARRIVE_AT_VPN_TUNNEL
          | :NAT
          | :PROXY_CONNECTION
          | :DELIVER
          | :DROP
          | :FORWARD
          | :ABORT
          | :VIEWER_PERMISSION_MISSING

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FIREWALL_RULE_TYPE_UNSPECIFIED
          | :HIERARCHICAL_FIREWALL_POLICY_RULE
          | :VPC_FIREWALL_RULE
          | :IMPLIED_VPC_FIREWALL_RULE

  field :FIREWALL_RULE_TYPE_UNSPECIFIED, 0
  field :HIERARCHICAL_FIREWALL_POLICY_RULE, 1
  field :VPC_FIREWALL_RULE, 2
  field :IMPLIED_VPC_FIREWALL_RULE, 3
end
defmodule Google.Cloud.Networkmanagement.V1.RouteInfo.RouteType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ROUTE_TYPE_UNSPECIFIED
          | :SUBNET
          | :STATIC
          | :DYNAMIC
          | :PEERING_SUBNET
          | :PEERING_STATIC
          | :PEERING_DYNAMIC

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :NEXT_HOP_TYPE_UNSPECIFIED
          | :NEXT_HOP_IP
          | :NEXT_HOP_INSTANCE
          | :NEXT_HOP_NETWORK
          | :NEXT_HOP_PEERING
          | :NEXT_HOP_INTERCONNECT
          | :NEXT_HOP_VPN_TUNNEL
          | :NEXT_HOP_VPN_GATEWAY
          | :NEXT_HOP_INTERNET_GATEWAY
          | :NEXT_HOP_BLACKHOLE
          | :NEXT_HOP_ILB

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
end
defmodule Google.Cloud.Networkmanagement.V1.LoadBalancerInfo.LoadBalancerType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LOAD_BALANCER_TYPE_UNSPECIFIED
          | :INTERNAL_TCP_UDP
          | :NETWORK_TCP_UDP
          | :HTTP_PROXY
          | :TCP_PROXY
          | :SSL_PROXY

  field :LOAD_BALANCER_TYPE_UNSPECIFIED, 0
  field :INTERNAL_TCP_UDP, 1
  field :NETWORK_TCP_UDP, 2
  field :HTTP_PROXY, 3
  field :TCP_PROXY, 4
  field :SSL_PROXY, 5
end
defmodule Google.Cloud.Networkmanagement.V1.LoadBalancerInfo.BackendType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :BACKEND_TYPE_UNSPECIFIED | :BACKEND_SERVICE | :TARGET_POOL

  field :BACKEND_TYPE_UNSPECIFIED, 0
  field :BACKEND_SERVICE, 1
  field :TARGET_POOL, 2
end
defmodule Google.Cloud.Networkmanagement.V1.LoadBalancerBackend.HealthCheckFirewallState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :HEALTH_CHECK_FIREWALL_STATE_UNSPECIFIED | :CONFIGURED | :MISCONFIGURED

  field :HEALTH_CHECK_FIREWALL_STATE_UNSPECIFIED, 0
  field :CONFIGURED, 1
  field :MISCONFIGURED, 2
end
defmodule Google.Cloud.Networkmanagement.V1.VpnTunnelInfo.RoutingType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ROUTING_TYPE_UNSPECIFIED | :ROUTE_BASED | :POLICY_BASED | :DYNAMIC

  field :ROUTING_TYPE_UNSPECIFIED, 0
  field :ROUTE_BASED, 1
  field :POLICY_BASED, 2
  field :DYNAMIC, 3
end
defmodule Google.Cloud.Networkmanagement.V1.DeliverInfo.Target do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TARGET_UNSPECIFIED
          | :INSTANCE
          | :INTERNET
          | :GOOGLE_API
          | :GKE_MASTER
          | :CLOUD_SQL_INSTANCE

  field :TARGET_UNSPECIFIED, 0
  field :INSTANCE, 1
  field :INTERNET, 2
  field :GOOGLE_API, 3
  field :GKE_MASTER, 4
  field :CLOUD_SQL_INSTANCE, 5
end
defmodule Google.Cloud.Networkmanagement.V1.ForwardInfo.Target do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TARGET_UNSPECIFIED
          | :PEERING_VPC
          | :VPN_GATEWAY
          | :INTERCONNECT
          | :GKE_MASTER
          | :IMPORTED_CUSTOM_ROUTE_NEXT_HOP
          | :CLOUD_SQL_INSTANCE

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
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CAUSE_UNSPECIFIED
          | :UNKNOWN_NETWORK
          | :UNKNOWN_IP
          | :UNKNOWN_PROJECT
          | :PERMISSION_DENIED
          | :NO_SOURCE_LOCATION
          | :INVALID_ARGUMENT
          | :NO_EXTERNAL_IP
          | :UNINTENDED_DESTINATION
          | :TRACE_TOO_LONG
          | :INTERNAL_ERROR
          | :SOURCE_ENDPOINT_NOT_FOUND
          | :MISMATCHED_SOURCE_NETWORK
          | :DESTINATION_ENDPOINT_NOT_FOUND
          | :MISMATCHED_DESTINATION_NETWORK

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
end
defmodule Google.Cloud.Networkmanagement.V1.DropInfo.Cause do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CAUSE_UNSPECIFIED
          | :UNKNOWN_EXTERNAL_ADDRESS
          | :FOREIGN_IP_DISALLOWED
          | :FIREWALL_RULE
          | :NO_ROUTE
          | :ROUTE_BLACKHOLE
          | :ROUTE_WRONG_NETWORK
          | :PRIVATE_TRAFFIC_TO_INTERNET
          | :PRIVATE_GOOGLE_ACCESS_DISALLOWED
          | :NO_EXTERNAL_ADDRESS
          | :UNKNOWN_INTERNAL_ADDRESS
          | :FORWARDING_RULE_MISMATCH
          | :FORWARDING_RULE_NO_INSTANCES
          | :FIREWALL_BLOCKING_LOAD_BALANCER_BACKEND_HEALTH_CHECK
          | :INSTANCE_NOT_RUNNING
          | :TRAFFIC_TYPE_BLOCKED
          | :GKE_MASTER_UNAUTHORIZED_ACCESS
          | :CLOUD_SQL_INSTANCE_UNAUTHORIZED_ACCESS
          | :DROPPED_INSIDE_GKE_SERVICE
          | :DROPPED_INSIDE_CLOUD_SQL_SERVICE
          | :GOOGLE_MANAGED_SERVICE_NO_PEERING
          | :CLOUD_SQL_INSTANCE_NO_IP_ADDRESS

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint_info: Google.Cloud.Networkmanagement.V1.EndpointInfo.t() | nil,
          steps: [Google.Cloud.Networkmanagement.V1.Step.t()]
        }

  defstruct endpoint_info: nil,
            steps: []

  field :endpoint_info, 1,
    type: Google.Cloud.Networkmanagement.V1.EndpointInfo,
    json_name: "endpointInfo"

  field :steps, 2, repeated: true, type: Google.Cloud.Networkmanagement.V1.Step
end
defmodule Google.Cloud.Networkmanagement.V1.Step do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          step_info:
            {:instance, Google.Cloud.Networkmanagement.V1.InstanceInfo.t() | nil}
            | {:firewall, Google.Cloud.Networkmanagement.V1.FirewallInfo.t() | nil}
            | {:route, Google.Cloud.Networkmanagement.V1.RouteInfo.t() | nil}
            | {:endpoint, Google.Cloud.Networkmanagement.V1.EndpointInfo.t() | nil}
            | {:forwarding_rule, Google.Cloud.Networkmanagement.V1.ForwardingRuleInfo.t() | nil}
            | {:vpn_gateway, Google.Cloud.Networkmanagement.V1.VpnGatewayInfo.t() | nil}
            | {:vpn_tunnel, Google.Cloud.Networkmanagement.V1.VpnTunnelInfo.t() | nil}
            | {:deliver, Google.Cloud.Networkmanagement.V1.DeliverInfo.t() | nil}
            | {:forward, Google.Cloud.Networkmanagement.V1.ForwardInfo.t() | nil}
            | {:abort, Google.Cloud.Networkmanagement.V1.AbortInfo.t() | nil}
            | {:drop, Google.Cloud.Networkmanagement.V1.DropInfo.t() | nil}
            | {:load_balancer, Google.Cloud.Networkmanagement.V1.LoadBalancerInfo.t() | nil}
            | {:network, Google.Cloud.Networkmanagement.V1.NetworkInfo.t() | nil}
            | {:gke_master, Google.Cloud.Networkmanagement.V1.GKEMasterInfo.t() | nil}
            | {:cloud_sql_instance,
               Google.Cloud.Networkmanagement.V1.CloudSQLInstanceInfo.t() | nil},
          description: String.t(),
          state: Google.Cloud.Networkmanagement.V1.Step.State.t(),
          causes_drop: boolean,
          project_id: String.t()
        }

  defstruct step_info: nil,
            description: "",
            state: :STATE_UNSPECIFIED,
            causes_drop: false,
            project_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          uri: String.t(),
          interface: String.t(),
          network_uri: String.t(),
          internal_ip: String.t(),
          external_ip: String.t(),
          network_tags: [String.t()],
          service_account: String.t()
        }

  defstruct display_name: "",
            uri: "",
            interface: "",
            network_uri: "",
            internal_ip: "",
            external_ip: "",
            network_tags: [],
            service_account: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          uri: String.t(),
          matched_ip_range: String.t()
        }

  defstruct display_name: "",
            uri: "",
            matched_ip_range: ""

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :matched_ip_range, 4, type: :string, json_name: "matchedIpRange"
end
defmodule Google.Cloud.Networkmanagement.V1.FirewallInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          uri: String.t(),
          direction: String.t(),
          action: String.t(),
          priority: integer,
          network_uri: String.t(),
          target_tags: [String.t()],
          target_service_accounts: [String.t()],
          policy: String.t(),
          firewall_rule_type: Google.Cloud.Networkmanagement.V1.FirewallInfo.FirewallRuleType.t()
        }

  defstruct display_name: "",
            uri: "",
            direction: "",
            action: "",
            priority: 0,
            network_uri: "",
            target_tags: [],
            target_service_accounts: [],
            policy: "",
            firewall_rule_type: :FIREWALL_RULE_TYPE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          route_type: Google.Cloud.Networkmanagement.V1.RouteInfo.RouteType.t(),
          next_hop_type: Google.Cloud.Networkmanagement.V1.RouteInfo.NextHopType.t(),
          display_name: String.t(),
          uri: String.t(),
          dest_ip_range: String.t(),
          next_hop: String.t(),
          network_uri: String.t(),
          priority: integer,
          instance_tags: [String.t()]
        }

  defstruct route_type: :ROUTE_TYPE_UNSPECIFIED,
            next_hop_type: :NEXT_HOP_TYPE_UNSPECIFIED,
            display_name: "",
            uri: "",
            dest_ip_range: "",
            next_hop: "",
            network_uri: "",
            priority: 0,
            instance_tags: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          uri: String.t(),
          matched_protocol: String.t(),
          matched_port_range: String.t(),
          vip: String.t(),
          target: String.t(),
          network_uri: String.t()
        }

  defstruct display_name: "",
            uri: "",
            matched_protocol: "",
            matched_port_range: "",
            vip: "",
            target: "",
            network_uri: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          load_balancer_type:
            Google.Cloud.Networkmanagement.V1.LoadBalancerInfo.LoadBalancerType.t(),
          health_check_uri: String.t(),
          backends: [Google.Cloud.Networkmanagement.V1.LoadBalancerBackend.t()],
          backend_type: Google.Cloud.Networkmanagement.V1.LoadBalancerInfo.BackendType.t(),
          backend_uri: String.t()
        }

  defstruct load_balancer_type: :LOAD_BALANCER_TYPE_UNSPECIFIED,
            health_check_uri: "",
            backends: [],
            backend_type: :BACKEND_TYPE_UNSPECIFIED,
            backend_uri: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          uri: String.t(),
          health_check_firewall_state:
            Google.Cloud.Networkmanagement.V1.LoadBalancerBackend.HealthCheckFirewallState.t(),
          health_check_allowing_firewall_rules: [String.t()],
          health_check_blocking_firewall_rules: [String.t()]
        }

  defstruct display_name: "",
            uri: "",
            health_check_firewall_state: :HEALTH_CHECK_FIREWALL_STATE_UNSPECIFIED,
            health_check_allowing_firewall_rules: [],
            health_check_blocking_firewall_rules: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          uri: String.t(),
          network_uri: String.t(),
          ip_address: String.t(),
          vpn_tunnel_uri: String.t(),
          region: String.t()
        }

  defstruct display_name: "",
            uri: "",
            network_uri: "",
            ip_address: "",
            vpn_tunnel_uri: "",
            region: ""

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :network_uri, 3, type: :string, json_name: "networkUri"
  field :ip_address, 4, type: :string, json_name: "ipAddress"
  field :vpn_tunnel_uri, 5, type: :string, json_name: "vpnTunnelUri"
  field :region, 6, type: :string
end
defmodule Google.Cloud.Networkmanagement.V1.VpnTunnelInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          uri: String.t(),
          source_gateway: String.t(),
          remote_gateway: String.t(),
          remote_gateway_ip: String.t(),
          source_gateway_ip: String.t(),
          network_uri: String.t(),
          region: String.t(),
          routing_type: Google.Cloud.Networkmanagement.V1.VpnTunnelInfo.RoutingType.t()
        }

  defstruct display_name: "",
            uri: "",
            source_gateway: "",
            remote_gateway: "",
            remote_gateway_ip: "",
            source_gateway_ip: "",
            network_uri: "",
            region: "",
            routing_type: :ROUTING_TYPE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_ip: String.t(),
          destination_ip: String.t(),
          protocol: String.t(),
          source_port: integer,
          destination_port: integer,
          source_network_uri: String.t(),
          destination_network_uri: String.t()
        }

  defstruct source_ip: "",
            destination_ip: "",
            protocol: "",
            source_port: 0,
            destination_port: 0,
            source_network_uri: "",
            destination_network_uri: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: Google.Cloud.Networkmanagement.V1.DeliverInfo.Target.t(),
          resource_uri: String.t()
        }

  defstruct target: :TARGET_UNSPECIFIED,
            resource_uri: ""

  field :target, 1, type: Google.Cloud.Networkmanagement.V1.DeliverInfo.Target, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
end
defmodule Google.Cloud.Networkmanagement.V1.ForwardInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: Google.Cloud.Networkmanagement.V1.ForwardInfo.Target.t(),
          resource_uri: String.t()
        }

  defstruct target: :TARGET_UNSPECIFIED,
            resource_uri: ""

  field :target, 1, type: Google.Cloud.Networkmanagement.V1.ForwardInfo.Target, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
end
defmodule Google.Cloud.Networkmanagement.V1.AbortInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cause: Google.Cloud.Networkmanagement.V1.AbortInfo.Cause.t(),
          resource_uri: String.t()
        }

  defstruct cause: :CAUSE_UNSPECIFIED,
            resource_uri: ""

  field :cause, 1, type: Google.Cloud.Networkmanagement.V1.AbortInfo.Cause, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
end
defmodule Google.Cloud.Networkmanagement.V1.DropInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cause: Google.Cloud.Networkmanagement.V1.DropInfo.Cause.t(),
          resource_uri: String.t()
        }

  defstruct cause: :CAUSE_UNSPECIFIED,
            resource_uri: ""

  field :cause, 1, type: Google.Cloud.Networkmanagement.V1.DropInfo.Cause, enum: true
  field :resource_uri, 2, type: :string, json_name: "resourceUri"
end
defmodule Google.Cloud.Networkmanagement.V1.GKEMasterInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_uri: String.t(),
          cluster_network_uri: String.t(),
          internal_ip: String.t(),
          external_ip: String.t()
        }

  defstruct cluster_uri: "",
            cluster_network_uri: "",
            internal_ip: "",
            external_ip: ""

  field :cluster_uri, 2, type: :string, json_name: "clusterUri"
  field :cluster_network_uri, 4, type: :string, json_name: "clusterNetworkUri"
  field :internal_ip, 5, type: :string, json_name: "internalIp"
  field :external_ip, 6, type: :string, json_name: "externalIp"
end
defmodule Google.Cloud.Networkmanagement.V1.CloudSQLInstanceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          uri: String.t(),
          network_uri: String.t(),
          internal_ip: String.t(),
          external_ip: String.t(),
          region: String.t()
        }

  defstruct display_name: "",
            uri: "",
            network_uri: "",
            internal_ip: "",
            external_ip: "",
            region: ""

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :network_uri, 4, type: :string, json_name: "networkUri"
  field :internal_ip, 5, type: :string, json_name: "internalIp"
  field :external_ip, 6, type: :string, json_name: "externalIp"
  field :region, 7, type: :string
end
