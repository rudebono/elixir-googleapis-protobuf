defmodule Google.Cloud.Networkanalyzer.Logging.V1.ReportCauseCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REPORT_CAUSE_CODE_UNSPECIFIED, 0
  field :ROUTE_INVALID_NEXT_HOP_VM_IP_FORWARDING_DISABLED, 1
  field :ROUTE_INVALID_NEXT_HOP_VM_DELETED, 2
  field :ROUTE_INVALID_NEXT_HOP_VM_STOPPED, 3
  field :ROUTE_INVALID_NEXT_HOP_ILB_MISCONFIGURED, 4
  field :ROUTE_INVALID_NEXT_HOP_VPN_TUNNEL_DELETED, 5
  field :ROUTE_INVALID_NEXT_HOP_ILB_BACKEND_IP_FORWARDING_DISABLED, 6
  field :IP_UTILIZATION_IP_ALLOCATION_RATIO_HIGH, 20
  field :GKE_NODE_TO_CONTROL_PLANE_BLOCKED_BY_ROUTING_ISSUE, 201
  field :GKE_NODE_TO_CONTROL_PLANE_PUBLIC_ENDPOINT_BLOCKED_BY_EGRESS_FIREWALL, 202
  field :GKE_NODE_TO_CONTROL_PLANE_PRIVATE_ENDPOINT_BLOCKED_BY_EGRESS_FIREWALL, 203
  field :GKE_CONTROL_PLANE_TO_NODE_BLOCKED_BY_ROUTING_ISSUE, 211
  field :GKE_CONTROL_PLANE_TO_NODE_BLOCKED_BY_INGRESS_FIREWALL_ON_NODE, 212
  field :GKE_IP_UTILIZATION_POD_RANGES_ALLOCATION_HIGH, 221
  field :GKE_IP_UTILIZATION_POD_RANGES_ALLOCATION_LIMITES_AUTOSCALING, 222
  field :CLOUD_SQL_PRIVATE_IP_BLOCKED_BY_EGRESS_FIREWALL, 601
  field :CLOUD_SQL_PRIVATE_IP_BLOCKED_BY_ROUTING_ISSUE, 602
  field :CLOUD_SQL_PRIVATE_IP_INSTANCE_NOT_RUNNING, 603
  field :DYNAMIC_ROUTE_SHADOWED_FULLY_SHADOWED_BY_SUBNET_ROUTE, 801
  field :DYNAMIC_ROUTE_SHADOWED_FULLY_SHADOWED_BY_PEERING_SUBNET_ROUTE, 802
  field :DYNAMIC_ROUTE_SHADOWED_FULLY_SHADOWED_BY_STATIC_ROUTE, 803
  field :DYNAMIC_ROUTE_SHADOWED_FULLY_SHADOWED_BY_PEERING_STATIC_ROUTE, 804
  field :DYNAMIC_ROUTE_SHADOWED_PARTIALLY_SHADOWED_BY_SUBNET_ROUTE, 805
  field :DYNAMIC_ROUTE_SHADOWED_PARTIALLY_SHADOWED_BY_PEERING_SUBNET_ROUTE, 806
  field :DYNAMIC_ROUTE_SHADOWED_PARTIALLY_SHADOWED_BY_STATIC_ROUTE, 807
  field :DYNAMIC_ROUTE_SHADOWED_PARTIALLY_SHADOWED_BY_PEERING_STATIC_ROUTE, 808
  field :LOAD_BALANCER_HEALTH_CHECK_FIREWALL_HEALTH_CHECK_FIREWALL_NOT_CONFIGURED, 1001
  field :LOAD_BALANCER_HEALTH_CHECK_FIREWALL_HEALTH_CHECK_RANGE_BLOCKED, 1002
  field :LOAD_BALANCER_HEALTH_CHECK_FIREWALL_FIREWALL_CONFIG_INCONSISTENT, 1003
  field :LOAD_BALANCER_HEALTH_CHECK_FIREWALL_HEALTH_CHECK_RANGE_PARTIALLY_BLOCKED, 1004
  field :LOAD_BALANCER_BEST_PRACTICES_BACKEND_SERVICE_BALANCING_MODE_BREAKS_SESSION_AFFINITY, 1021
  field :LOAD_BALANCER_BEST_PRACTICES_BACKEND_SERVICE_HEALTH_CHECK_PORT_MISMATCH, 1024
end

defmodule Google.Cloud.Networkanalyzer.Logging.V1.Report.Priority do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :CRITICAL, 1
  field :HIGH, 2
  field :MEDIUM, 3
  field :LOW, 4
end

defmodule Google.Cloud.Networkanalyzer.Logging.V1.Report.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REPORT_TYPE_UNSPECIFIED, 0
  field :INFO, 1
  field :WARNING, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Networkanalyzer.Logging.V1.Report.ReportStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REPORT_STATUS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :FIXED, 2
  field :DISMISSED, 3
end

defmodule Google.Cloud.Networkanalyzer.Logging.V1.Report.ReportGroup do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :CATEGORY_UNSPECIFIED, 0
  field :VPC_NETWORK, 1
  field :NETWORK_SERVICES, 2
  field :KUBERNETES_ENGINE, 3
  field :HYBRID_CONNECTIVITY, 4
  field :MANAGED_SERVICES, 5
end

defmodule Google.Cloud.Networkanalyzer.Logging.V1.IpUtilizationInfo.SubnetIpUtilization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :subnet_uri, 1, type: :string, json_name: "subnetUri"
  field :secondary_range_name, 2, type: :string, json_name: "secondaryRangeName"
  field :total_usable_addresses, 3, type: :uint64, json_name: "totalUsableAddresses"
  field :allocation_ratio, 4, type: :double, json_name: "allocationRatio"
end

defmodule Google.Cloud.Networkanalyzer.Logging.V1.IpUtilizationInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :subnet_ip_utilization, 1,
    repeated: true,
    type: Google.Cloud.Networkanalyzer.Logging.V1.IpUtilizationInfo.SubnetIpUtilization,
    json_name: "subnetIpUtilization"
end

defmodule Google.Cloud.Networkanalyzer.Logging.V1.Report do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :content, 0

  field :id, 1, type: :string
  field :priority, 2, type: Google.Cloud.Networkanalyzer.Logging.V1.Report.Priority, enum: true
  field :type, 3, type: Google.Cloud.Networkanalyzer.Logging.V1.Report.Type, enum: true
  field :status, 4, type: Google.Cloud.Networkanalyzer.Logging.V1.Report.ReportStatus, enum: true
  field :first_report_time, 9, type: Google.Protobuf.Timestamp, json_name: "firstReportTime"

  field :cause_code, 12,
    type: Google.Cloud.Networkanalyzer.Logging.V1.ReportCauseCode,
    json_name: "causeCode",
    enum: true

  field :resource_name, 15, type: :string, json_name: "resourceName"
  field :location, 16, type: :string
  field :report_documentation_uri, 17, type: :string, json_name: "reportDocumentationUri"

  field :report_groups, 18,
    repeated: true,
    type: Google.Cloud.Networkanalyzer.Logging.V1.Report.ReportGroup,
    json_name: "reportGroups",
    enum: true

  field :ip_utilization_info, 19,
    type: Google.Cloud.Networkanalyzer.Logging.V1.IpUtilizationInfo,
    json_name: "ipUtilizationInfo",
    oneof: 0
end