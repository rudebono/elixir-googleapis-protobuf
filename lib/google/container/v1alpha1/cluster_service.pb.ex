defmodule Google.Container.V1alpha1.NodeTaint.Effect do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EFFECT_UNSPECIFIED, 0
  field :NO_SCHEDULE, 1
  field :PREFER_NO_SCHEDULE, 2
  field :NO_EXECUTE, 3
end

defmodule Google.Container.V1alpha1.NetworkPolicy.Provider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROVIDER_UNSPECIFIED, 0
  field :CALICO, 1
end

defmodule Google.Container.V1alpha1.Cluster.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RECONCILING, 3
  field :STOPPING, 4
  field :ERROR, 5
end

defmodule Google.Container.V1alpha1.Operation.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
  field :ABORTING, 4
end

defmodule Google.Container.V1alpha1.Operation.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CREATE_CLUSTER, 1
  field :DELETE_CLUSTER, 2
  field :UPGRADE_MASTER, 3
  field :UPGRADE_NODES, 4
  field :REPAIR_CLUSTER, 5
  field :UPDATE_CLUSTER, 6
  field :CREATE_NODE_POOL, 7
  field :DELETE_NODE_POOL, 8
  field :SET_NODE_POOL_MANAGEMENT, 9
  field :AUTO_REPAIR_NODES, 10
  field :AUTO_UPGRADE_NODES, 11
  field :SET_LABELS, 12
  field :SET_MASTER_AUTH, 13
  field :SET_NODE_POOL_SIZE, 14
  field :SET_NETWORK_POLICY, 15
  field :SET_MAINTENANCE_POLICY, 16
end

defmodule Google.Container.V1alpha1.SetMasterAuthRequest.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN, 0
  field :SET_PASSWORD, 1
  field :GENERATE_PASSWORD, 2
  field :SET_USERNAME, 3
end

defmodule Google.Container.V1alpha1.NodePool.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RUNNING_WITH_ERROR, 3
  field :RECONCILING, 4
  field :STOPPING, 5
  field :ERROR, 6
end

defmodule Google.Container.V1alpha1.NodeConfig.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1alpha1.NodeConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1alpha1.NodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType"
  field :disk_size_gb, 2, type: :int32, json_name: "diskSizeGb"
  field :oauth_scopes, 3, repeated: true, type: :string, json_name: "oauthScopes"
  field :service_account, 9, type: :string, json_name: "serviceAccount"

  field :metadata, 4,
    repeated: true,
    type: Google.Container.V1alpha1.NodeConfig.MetadataEntry,
    map: true

  field :image_type, 5, type: :string, json_name: "imageType"

  field :labels, 6,
    repeated: true,
    type: Google.Container.V1alpha1.NodeConfig.LabelsEntry,
    map: true

  field :local_ssd_count, 7, type: :int32, json_name: "localSsdCount"
  field :tags, 8, repeated: true, type: :string
  field :preemptible, 10, type: :bool
  field :accelerators, 11, repeated: true, type: Google.Container.V1alpha1.AcceleratorConfig
  field :min_cpu_platform, 13, type: :string, json_name: "minCpuPlatform"
  field :taints, 15, repeated: true, type: Google.Container.V1alpha1.NodeTaint
end

defmodule Google.Container.V1alpha1.NodeTaint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
  field :effect, 3, type: Google.Container.V1alpha1.NodeTaint.Effect, enum: true
end

defmodule Google.Container.V1alpha1.MasterAuth do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :username, 1, type: :string
  field :password, 2, type: :string

  field :client_certificate_config, 3,
    type: Google.Container.V1alpha1.ClientCertificateConfig,
    json_name: "clientCertificateConfig"

  field :cluster_ca_certificate, 100, type: :string, json_name: "clusterCaCertificate"
  field :client_certificate, 101, type: :string, json_name: "clientCertificate"
  field :client_key, 102, type: :string, json_name: "clientKey"
end

defmodule Google.Container.V1alpha1.ClientCertificateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :issue_client_certificate, 1, type: :bool, json_name: "issueClientCertificate"
end

defmodule Google.Container.V1alpha1.AddonsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :http_load_balancing, 1,
    type: Google.Container.V1alpha1.HttpLoadBalancing,
    json_name: "httpLoadBalancing"

  field :horizontal_pod_autoscaling, 2,
    type: Google.Container.V1alpha1.HorizontalPodAutoscaling,
    json_name: "horizontalPodAutoscaling"

  field :kubernetes_dashboard, 3,
    type: Google.Container.V1alpha1.KubernetesDashboard,
    json_name: "kubernetesDashboard"

  field :network_policy_config, 4,
    type: Google.Container.V1alpha1.NetworkPolicyConfig,
    json_name: "networkPolicyConfig"
end

defmodule Google.Container.V1alpha1.HttpLoadBalancing do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1alpha1.HorizontalPodAutoscaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1alpha1.KubernetesDashboard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1alpha1.NetworkPolicyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1alpha1.MasterAuthorizedNetworksConfig.CidrBlock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :cidr_block, 2, type: :string, json_name: "cidrBlock"
end

defmodule Google.Container.V1alpha1.MasterAuthorizedNetworksConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :cidr_blocks, 2,
    repeated: true,
    type: Google.Container.V1alpha1.MasterAuthorizedNetworksConfig.CidrBlock,
    json_name: "cidrBlocks"
end

defmodule Google.Container.V1alpha1.NetworkPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :provider, 1, type: Google.Container.V1alpha1.NetworkPolicy.Provider, enum: true
  field :enabled, 2, type: :bool
end

defmodule Google.Container.V1alpha1.IPAllocationPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_ip_aliases, 1, type: :bool, json_name: "useIpAliases"
  field :create_subnetwork, 2, type: :bool, json_name: "createSubnetwork"
  field :subnetwork_name, 3, type: :string, json_name: "subnetworkName"
  field :cluster_ipv4_cidr, 4, type: :string, json_name: "clusterIpv4Cidr"
  field :node_ipv4_cidr, 5, type: :string, json_name: "nodeIpv4Cidr"
  field :services_ipv4_cidr, 6, type: :string, json_name: "servicesIpv4Cidr"
  field :cluster_secondary_range_name, 7, type: :string, json_name: "clusterSecondaryRangeName"
  field :services_secondary_range_name, 8, type: :string, json_name: "servicesSecondaryRangeName"
  field :cluster_ipv4_cidr_block, 9, type: :string, json_name: "clusterIpv4CidrBlock"
  field :node_ipv4_cidr_block, 10, type: :string, json_name: "nodeIpv4CidrBlock"
  field :services_ipv4_cidr_block, 11, type: :string, json_name: "servicesIpv4CidrBlock"
end

defmodule Google.Container.V1alpha1.PodSecurityPolicyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1alpha1.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :initial_node_count, 3, type: :int32, json_name: "initialNodeCount"
  field :node_config, 4, type: Google.Container.V1alpha1.NodeConfig, json_name: "nodeConfig"
  field :master_auth, 5, type: Google.Container.V1alpha1.MasterAuth, json_name: "masterAuth"
  field :logging_service, 6, type: :string, json_name: "loggingService"
  field :monitoring_service, 7, type: :string, json_name: "monitoringService"
  field :network, 8, type: :string
  field :cluster_ipv4_cidr, 9, type: :string, json_name: "clusterIpv4Cidr"

  field :addons_config, 10,
    type: Google.Container.V1alpha1.AddonsConfig,
    json_name: "addonsConfig"

  field :subnetwork, 11, type: :string

  field :node_pools, 12,
    repeated: true,
    type: Google.Container.V1alpha1.NodePool,
    json_name: "nodePools"

  field :locations, 13, repeated: true, type: :string
  field :enable_kubernetes_alpha, 14, type: :bool, json_name: "enableKubernetesAlpha"

  field :network_policy, 19,
    type: Google.Container.V1alpha1.NetworkPolicy,
    json_name: "networkPolicy"

  field :ip_allocation_policy, 20,
    type: Google.Container.V1alpha1.IPAllocationPolicy,
    json_name: "ipAllocationPolicy"

  field :master_authorized_networks_config, 22,
    type: Google.Container.V1alpha1.MasterAuthorizedNetworksConfig,
    json_name: "masterAuthorizedNetworksConfig"

  field :maintenance_policy, 23,
    type: Google.Container.V1alpha1.MaintenancePolicy,
    json_name: "maintenancePolicy"

  field :pod_security_policy_config, 25,
    type: Google.Container.V1alpha1.PodSecurityPolicyConfig,
    json_name: "podSecurityPolicyConfig"

  field :self_link, 100, type: :string, json_name: "selfLink"
  field :zone, 101, type: :string
  field :endpoint, 102, type: :string
  field :initial_cluster_version, 103, type: :string, json_name: "initialClusterVersion"
  field :current_master_version, 104, type: :string, json_name: "currentMasterVersion"
  field :current_node_version, 105, type: :string, json_name: "currentNodeVersion"
  field :create_time, 106, type: :string, json_name: "createTime"
  field :status, 107, type: Google.Container.V1alpha1.Cluster.Status, enum: true
  field :status_message, 108, type: :string, json_name: "statusMessage"
  field :node_ipv4_cidr_size, 109, type: :int32, json_name: "nodeIpv4CidrSize"
  field :services_ipv4_cidr, 110, type: :string, json_name: "servicesIpv4Cidr"
  field :instance_group_urls, 111, repeated: true, type: :string, json_name: "instanceGroupUrls"
  field :current_node_count, 112, type: :int32, json_name: "currentNodeCount"
  field :expire_time, 113, type: :string, json_name: "expireTime"
  field :location, 114, type: :string
end

defmodule Google.Container.V1alpha1.ClusterUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :desired_node_version, 4, type: :string, json_name: "desiredNodeVersion"
  field :desired_monitoring_service, 5, type: :string, json_name: "desiredMonitoringService"

  field :desired_addons_config, 6,
    type: Google.Container.V1alpha1.AddonsConfig,
    json_name: "desiredAddonsConfig"

  field :desired_node_pool_id, 7, type: :string, json_name: "desiredNodePoolId"
  field :desired_image_type, 8, type: :string, json_name: "desiredImageType"

  field :desired_node_pool_autoscaling, 9,
    type: Google.Container.V1alpha1.NodePoolAutoscaling,
    json_name: "desiredNodePoolAutoscaling"

  field :desired_locations, 10, repeated: true, type: :string, json_name: "desiredLocations"

  field :desired_master_authorized_networks_config, 12,
    type: Google.Container.V1alpha1.MasterAuthorizedNetworksConfig,
    json_name: "desiredMasterAuthorizedNetworksConfig"

  field :desired_pod_security_policy_config, 14,
    type: Google.Container.V1alpha1.PodSecurityPolicyConfig,
    json_name: "desiredPodSecurityPolicyConfig"

  field :desired_master_version, 100, type: :string, json_name: "desiredMasterVersion"
end

defmodule Google.Container.V1alpha1.Operation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :zone, 2, type: :string

  field :operation_type, 3,
    type: Google.Container.V1alpha1.Operation.Type,
    json_name: "operationType",
    enum: true

  field :status, 4, type: Google.Container.V1alpha1.Operation.Status, enum: true
  field :detail, 8, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :self_link, 6, type: :string, json_name: "selfLink"
  field :target_link, 7, type: :string, json_name: "targetLink"
  field :location, 9, type: :string
  field :start_time, 10, type: :string, json_name: "startTime"
  field :end_time, 11, type: :string, json_name: "endTime"
end

defmodule Google.Container.V1alpha1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster, 3, type: Google.Container.V1alpha1.Cluster
  field :parent, 5, type: :string
end

defmodule Google.Container.V1alpha1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :name, 5, type: :string
end

defmodule Google.Container.V1alpha1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :update, 4, type: Google.Container.V1alpha1.ClusterUpdate
  field :name, 5, type: :string
end

defmodule Google.Container.V1alpha1.UpdateNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId"
  field :node_version, 5, type: :string, json_name: "nodeVersion"
  field :image_type, 6, type: :string, json_name: "imageType"
  field :name, 8, type: :string
end

defmodule Google.Container.V1alpha1.SetNodePoolAutoscalingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId"
  field :autoscaling, 5, type: Google.Container.V1alpha1.NodePoolAutoscaling
  field :name, 6, type: :string
end

defmodule Google.Container.V1alpha1.SetLoggingServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :logging_service, 4, type: :string, json_name: "loggingService"
  field :name, 5, type: :string
end

defmodule Google.Container.V1alpha1.SetMonitoringServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :monitoring_service, 4, type: :string, json_name: "monitoringService"
  field :name, 6, type: :string
end

defmodule Google.Container.V1alpha1.SetAddonsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :addons_config, 4, type: Google.Container.V1alpha1.AddonsConfig, json_name: "addonsConfig"
  field :name, 6, type: :string
end

defmodule Google.Container.V1alpha1.SetLocationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :locations, 4, repeated: true, type: :string
  field :name, 6, type: :string
end

defmodule Google.Container.V1alpha1.UpdateMasterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :master_version, 4, type: :string, json_name: "masterVersion"
  field :name, 7, type: :string
end

defmodule Google.Container.V1alpha1.SetMasterAuthRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :action, 4, type: Google.Container.V1alpha1.SetMasterAuthRequest.Action, enum: true
  field :update, 5, type: Google.Container.V1alpha1.MasterAuth
  field :name, 7, type: :string
end

defmodule Google.Container.V1alpha1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :name, 4, type: :string
end

defmodule Google.Container.V1alpha1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :parent, 4, type: :string
end

defmodule Google.Container.V1alpha1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Container.V1alpha1.Cluster
  field :missing_zones, 2, repeated: true, type: :string, json_name: "missingZones"
end

defmodule Google.Container.V1alpha1.GetOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :operation_id, 3, type: :string, json_name: "operationId"
  field :name, 5, type: :string
end

defmodule Google.Container.V1alpha1.ListOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :parent, 4, type: :string
end

defmodule Google.Container.V1alpha1.CancelOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :operation_id, 3, type: :string, json_name: "operationId"
  field :name, 4, type: :string
end

defmodule Google.Container.V1alpha1.ListOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operations, 1, repeated: true, type: Google.Container.V1alpha1.Operation
  field :missing_zones, 2, repeated: true, type: :string, json_name: "missingZones"
end

defmodule Google.Container.V1alpha1.GetServerConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :name, 4, type: :string
end

defmodule Google.Container.V1alpha1.ServerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :default_cluster_version, 1, type: :string, json_name: "defaultClusterVersion"
  field :valid_node_versions, 3, repeated: true, type: :string, json_name: "validNodeVersions"
  field :default_image_type, 4, type: :string, json_name: "defaultImageType"
  field :valid_image_types, 5, repeated: true, type: :string, json_name: "validImageTypes"
  field :valid_master_versions, 6, repeated: true, type: :string, json_name: "validMasterVersions"
end

defmodule Google.Container.V1alpha1.CreateNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :node_pool, 4, type: Google.Container.V1alpha1.NodePool, json_name: "nodePool"
  field :parent, 6, type: :string
end

defmodule Google.Container.V1alpha1.DeleteNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId"
  field :name, 6, type: :string
end

defmodule Google.Container.V1alpha1.ListNodePoolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :parent, 5, type: :string
end

defmodule Google.Container.V1alpha1.GetNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId"
  field :name, 6, type: :string
end

defmodule Google.Container.V1alpha1.NodePool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :config, 2, type: Google.Container.V1alpha1.NodeConfig
  field :initial_node_count, 3, type: :int32, json_name: "initialNodeCount"
  field :autoscaling, 4, type: Google.Container.V1alpha1.NodePoolAutoscaling
  field :management, 5, type: Google.Container.V1alpha1.NodeManagement
  field :self_link, 100, type: :string, json_name: "selfLink"
  field :version, 101, type: :string
  field :instance_group_urls, 102, repeated: true, type: :string, json_name: "instanceGroupUrls"
  field :status, 103, type: Google.Container.V1alpha1.NodePool.Status, enum: true
  field :status_message, 104, type: :string, json_name: "statusMessage"
end

defmodule Google.Container.V1alpha1.NodeManagement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :auto_upgrade, 1, type: :bool, json_name: "autoUpgrade"
  field :auto_repair, 2, type: :bool, json_name: "autoRepair"

  field :upgrade_options, 10,
    type: Google.Container.V1alpha1.AutoUpgradeOptions,
    json_name: "upgradeOptions"
end

defmodule Google.Container.V1alpha1.AutoUpgradeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :auto_upgrade_start_time, 1, type: :string, json_name: "autoUpgradeStartTime"
  field :description, 2, type: :string
end

defmodule Google.Container.V1alpha1.MaintenancePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :window, 1, type: Google.Container.V1alpha1.MaintenanceWindow
end

defmodule Google.Container.V1alpha1.MaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :policy, 0

  field :daily_maintenance_window, 2,
    type: Google.Container.V1alpha1.DailyMaintenanceWindow,
    json_name: "dailyMaintenanceWindow",
    oneof: 0
end

defmodule Google.Container.V1alpha1.DailyMaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 2, type: :string, json_name: "startTime"
  field :duration, 3, type: :string
end

defmodule Google.Container.V1alpha1.SetNodePoolManagementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId"
  field :management, 5, type: Google.Container.V1alpha1.NodeManagement
  field :name, 7, type: :string
end

defmodule Google.Container.V1alpha1.SetNodePoolSizeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId"
  field :node_count, 5, type: :int32, json_name: "nodeCount"
  field :name, 7, type: :string
end

defmodule Google.Container.V1alpha1.RollbackNodePoolUpgradeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId"
  field :name, 6, type: :string
end

defmodule Google.Container.V1alpha1.ListNodePoolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :node_pools, 1,
    repeated: true,
    type: Google.Container.V1alpha1.NodePool,
    json_name: "nodePools"
end

defmodule Google.Container.V1alpha1.NodePoolAutoscaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :min_node_count, 2, type: :int32, json_name: "minNodeCount"
  field :max_node_count, 3, type: :int32, json_name: "maxNodeCount"
end

defmodule Google.Container.V1alpha1.SetLabelsRequest.ResourceLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1alpha1.SetLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"

  field :resource_labels, 4,
    repeated: true,
    type: Google.Container.V1alpha1.SetLabelsRequest.ResourceLabelsEntry,
    json_name: "resourceLabels",
    map: true

  field :label_fingerprint, 5, type: :string, json_name: "labelFingerprint"
  field :name, 7, type: :string
end

defmodule Google.Container.V1alpha1.SetLegacyAbacRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :enabled, 4, type: :bool
  field :name, 6, type: :string
end

defmodule Google.Container.V1alpha1.StartIPRotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :name, 6, type: :string
end

defmodule Google.Container.V1alpha1.CompleteIPRotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"
  field :name, 7, type: :string
end

defmodule Google.Container.V1alpha1.AcceleratorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :accelerator_count, 1, type: :int64, json_name: "acceleratorCount"
  field :accelerator_type, 2, type: :string, json_name: "acceleratorType"
end

defmodule Google.Container.V1alpha1.SetNetworkPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"

  field :network_policy, 4,
    type: Google.Container.V1alpha1.NetworkPolicy,
    json_name: "networkPolicy"

  field :name, 6, type: :string
end

defmodule Google.Container.V1alpha1.SetMaintenancePolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string, json_name: "clusterId"

  field :maintenance_policy, 4,
    type: Google.Container.V1alpha1.MaintenancePolicy,
    json_name: "maintenancePolicy"

  field :name, 5, type: :string
end

defmodule Google.Container.V1alpha1.ClusterManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.container.v1alpha1.ClusterManager",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListClusters,
      Google.Container.V1alpha1.ListClustersRequest,
      Google.Container.V1alpha1.ListClustersResponse

  rpc :GetCluster, Google.Container.V1alpha1.GetClusterRequest, Google.Container.V1alpha1.Cluster

  rpc :CreateCluster,
      Google.Container.V1alpha1.CreateClusterRequest,
      Google.Container.V1alpha1.Operation

  rpc :UpdateCluster,
      Google.Container.V1alpha1.UpdateClusterRequest,
      Google.Container.V1alpha1.Operation

  rpc :UpdateNodePool,
      Google.Container.V1alpha1.UpdateNodePoolRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetNodePoolAutoscaling,
      Google.Container.V1alpha1.SetNodePoolAutoscalingRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetLoggingService,
      Google.Container.V1alpha1.SetLoggingServiceRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetMonitoringService,
      Google.Container.V1alpha1.SetMonitoringServiceRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetAddonsConfig,
      Google.Container.V1alpha1.SetAddonsConfigRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetLocations,
      Google.Container.V1alpha1.SetLocationsRequest,
      Google.Container.V1alpha1.Operation

  rpc :UpdateMaster,
      Google.Container.V1alpha1.UpdateMasterRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetMasterAuth,
      Google.Container.V1alpha1.SetMasterAuthRequest,
      Google.Container.V1alpha1.Operation

  rpc :DeleteCluster,
      Google.Container.V1alpha1.DeleteClusterRequest,
      Google.Container.V1alpha1.Operation

  rpc :ListOperations,
      Google.Container.V1alpha1.ListOperationsRequest,
      Google.Container.V1alpha1.ListOperationsResponse

  rpc :GetOperation,
      Google.Container.V1alpha1.GetOperationRequest,
      Google.Container.V1alpha1.Operation

  rpc :CancelOperation, Google.Container.V1alpha1.CancelOperationRequest, Google.Protobuf.Empty

  rpc :GetServerConfig,
      Google.Container.V1alpha1.GetServerConfigRequest,
      Google.Container.V1alpha1.ServerConfig

  rpc :ListNodePools,
      Google.Container.V1alpha1.ListNodePoolsRequest,
      Google.Container.V1alpha1.ListNodePoolsResponse

  rpc :GetNodePool,
      Google.Container.V1alpha1.GetNodePoolRequest,
      Google.Container.V1alpha1.NodePool

  rpc :CreateNodePool,
      Google.Container.V1alpha1.CreateNodePoolRequest,
      Google.Container.V1alpha1.Operation

  rpc :DeleteNodePool,
      Google.Container.V1alpha1.DeleteNodePoolRequest,
      Google.Container.V1alpha1.Operation

  rpc :RollbackNodePoolUpgrade,
      Google.Container.V1alpha1.RollbackNodePoolUpgradeRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetNodePoolManagement,
      Google.Container.V1alpha1.SetNodePoolManagementRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetLabels, Google.Container.V1alpha1.SetLabelsRequest, Google.Container.V1alpha1.Operation

  rpc :SetLegacyAbac,
      Google.Container.V1alpha1.SetLegacyAbacRequest,
      Google.Container.V1alpha1.Operation

  rpc :StartIPRotation,
      Google.Container.V1alpha1.StartIPRotationRequest,
      Google.Container.V1alpha1.Operation

  rpc :CompleteIPRotation,
      Google.Container.V1alpha1.CompleteIPRotationRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetNodePoolSize,
      Google.Container.V1alpha1.SetNodePoolSizeRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetNetworkPolicy,
      Google.Container.V1alpha1.SetNetworkPolicyRequest,
      Google.Container.V1alpha1.Operation

  rpc :SetMaintenancePolicy,
      Google.Container.V1alpha1.SetMaintenancePolicyRequest,
      Google.Container.V1alpha1.Operation
end

defmodule Google.Container.V1alpha1.ClusterManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Container.V1alpha1.ClusterManager.Service
end