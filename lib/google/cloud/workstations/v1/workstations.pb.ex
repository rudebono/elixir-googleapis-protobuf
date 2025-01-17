defmodule Google.Cloud.Workstations.V1.WorkstationConfig.PersistentDirectory.GceRegionalPersistentDisk.ReclaimPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RECLAIM_POLICY_UNSPECIFIED, 0
  field :DELETE, 1
  field :RETAIN, 2
end

defmodule Google.Cloud.Workstations.V1.Workstation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_STARTING, 1
  field :STATE_RUNNING, 2
  field :STATE_STOPPING, 3
  field :STATE_STOPPED, 4
end

defmodule Google.Cloud.Workstations.V1.WorkstationCluster.PrivateClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enable_private_endpoint, 1,
    type: :bool,
    json_name: "enablePrivateEndpoint",
    deprecated: false

  field :cluster_hostname, 2, type: :string, json_name: "clusterHostname", deprecated: false

  field :service_attachment_uri, 3,
    type: :string,
    json_name: "serviceAttachmentUri",
    deprecated: false

  field :allowed_projects, 4,
    repeated: true,
    type: :string,
    json_name: "allowedProjects",
    deprecated: false
end

defmodule Google.Cloud.Workstations.V1.WorkstationCluster.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Workstations.V1.WorkstationCluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Workstations.V1.WorkstationCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :uid, 3, type: :string, deprecated: false
  field :reconciling, 4, type: :bool, deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Workstations.V1.WorkstationCluster.AnnotationsEntry,
    map: true,
    deprecated: false

  field :labels, 15,
    repeated: true,
    type: Google.Cloud.Workstations.V1.WorkstationCluster.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :etag, 9, type: :string, deprecated: false
  field :network, 10, type: :string, deprecated: false
  field :subnetwork, 11, type: :string, deprecated: false
  field :control_plane_ip, 16, type: :string, json_name: "controlPlaneIp", deprecated: false

  field :private_cluster_config, 12,
    type: Google.Cloud.Workstations.V1.WorkstationCluster.PrivateClusterConfig,
    json_name: "privateClusterConfig",
    deprecated: false

  field :degraded, 13, type: :bool, deprecated: false
  field :conditions, 14, repeated: true, type: Google.Rpc.Status, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.Host.GceInstance.GceShieldedInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enable_secure_boot, 1, type: :bool, json_name: "enableSecureBoot", deprecated: false
  field :enable_vtpm, 2, type: :bool, json_name: "enableVtpm", deprecated: false

  field :enable_integrity_monitoring, 3,
    type: :bool,
    json_name: "enableIntegrityMonitoring",
    deprecated: false
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.Host.GceInstance.GceConfidentialInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enable_confidential_compute, 1,
    type: :bool,
    json_name: "enableConfidentialCompute",
    deprecated: false
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.Host.GceInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false
  field :service_account, 2, type: :string, json_name: "serviceAccount", deprecated: false

  field :service_account_scopes, 3,
    repeated: true,
    type: :string,
    json_name: "serviceAccountScopes",
    deprecated: false

  field :tags, 4, repeated: true, type: :string, deprecated: false
  field :pool_size, 5, type: :int32, json_name: "poolSize", deprecated: false
  field :pooled_instances, 12, type: :int32, json_name: "pooledInstances", deprecated: false

  field :disable_public_ip_addresses, 6,
    type: :bool,
    json_name: "disablePublicIpAddresses",
    deprecated: false

  field :enable_nested_virtualization, 7,
    type: :bool,
    json_name: "enableNestedVirtualization",
    deprecated: false

  field :shielded_instance_config, 8,
    type:
      Google.Cloud.Workstations.V1.WorkstationConfig.Host.GceInstance.GceShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig",
    deprecated: false

  field :confidential_instance_config, 10,
    type:
      Google.Cloud.Workstations.V1.WorkstationConfig.Host.GceInstance.GceConfidentialInstanceConfig,
    json_name: "confidentialInstanceConfig",
    deprecated: false

  field :boot_disk_size_gb, 9, type: :int32, json_name: "bootDiskSizeGb", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.Host do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :config, 0

  field :gce_instance, 1,
    type: Google.Cloud.Workstations.V1.WorkstationConfig.Host.GceInstance,
    json_name: "gceInstance",
    oneof: 0
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.PersistentDirectory.GceRegionalPersistentDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :size_gb, 1, type: :int32, json_name: "sizeGb", deprecated: false
  field :fs_type, 2, type: :string, json_name: "fsType", deprecated: false
  field :disk_type, 3, type: :string, json_name: "diskType", deprecated: false
  field :source_snapshot, 5, type: :string, json_name: "sourceSnapshot", deprecated: false

  field :reclaim_policy, 4,
    type:
      Google.Cloud.Workstations.V1.WorkstationConfig.PersistentDirectory.GceRegionalPersistentDisk.ReclaimPolicy,
    json_name: "reclaimPolicy",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.PersistentDirectory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :directory_type, 0

  field :gce_pd, 2,
    type:
      Google.Cloud.Workstations.V1.WorkstationConfig.PersistentDirectory.GceRegionalPersistentDisk,
    json_name: "gcePd",
    oneof: 0

  field :mount_path, 1, type: :string, json_name: "mountPath", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.Container.EnvEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.Container do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :image, 1, type: :string, deprecated: false
  field :command, 2, repeated: true, type: :string, deprecated: false
  field :args, 3, repeated: true, type: :string, deprecated: false

  field :env, 4,
    repeated: true,
    type: Google.Cloud.Workstations.V1.WorkstationConfig.Container.EnvEntry,
    map: true,
    deprecated: false

  field :working_dir, 5, type: :string, json_name: "workingDir", deprecated: false
  field :run_as_user, 6, type: :int32, json_name: "runAsUser", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.CustomerEncryptionKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :kms_key, 1, type: :string, json_name: "kmsKey", deprecated: false

  field :kms_key_service_account, 2,
    type: :string,
    json_name: "kmsKeyServiceAccount",
    deprecated: false
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.ReadinessCheck do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
  field :port, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Workstations.V1.WorkstationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :uid, 3, type: :string, deprecated: false
  field :reconciling, 4, type: :bool, deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Workstations.V1.WorkstationConfig.AnnotationsEntry,
    map: true,
    deprecated: false

  field :labels, 18,
    repeated: true,
    type: Google.Cloud.Workstations.V1.WorkstationConfig.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :etag, 9, type: :string, deprecated: false

  field :idle_timeout, 10,
    type: Google.Protobuf.Duration,
    json_name: "idleTimeout",
    deprecated: false

  field :running_timeout, 11,
    type: Google.Protobuf.Duration,
    json_name: "runningTimeout",
    deprecated: false

  field :host, 12, type: Google.Cloud.Workstations.V1.WorkstationConfig.Host, deprecated: false

  field :persistent_directories, 13,
    repeated: true,
    type: Google.Cloud.Workstations.V1.WorkstationConfig.PersistentDirectory,
    json_name: "persistentDirectories",
    deprecated: false

  field :container, 14,
    type: Google.Cloud.Workstations.V1.WorkstationConfig.Container,
    deprecated: false

  field :encryption_key, 17,
    type: Google.Cloud.Workstations.V1.WorkstationConfig.CustomerEncryptionKey,
    json_name: "encryptionKey",
    deprecated: false

  field :readiness_checks, 19,
    repeated: true,
    type: Google.Cloud.Workstations.V1.WorkstationConfig.ReadinessCheck,
    json_name: "readinessChecks",
    deprecated: false

  field :replica_zones, 23,
    repeated: true,
    type: :string,
    json_name: "replicaZones",
    deprecated: false

  field :degraded, 15, type: :bool, deprecated: false
  field :conditions, 16, repeated: true, type: Google.Rpc.Status, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.Workstation.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Workstations.V1.Workstation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Workstations.V1.Workstation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :uid, 3, type: :string, deprecated: false
  field :reconciling, 4, type: :bool, deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Workstations.V1.Workstation.AnnotationsEntry,
    map: true,
    deprecated: false

  field :labels, 13,
    repeated: true,
    type: Google.Cloud.Workstations.V1.Workstation.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :start_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :etag, 9, type: :string, deprecated: false

  field :state, 10,
    type: Google.Cloud.Workstations.V1.Workstation.State,
    enum: true,
    deprecated: false

  field :host, 11, type: :string, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.GetWorkstationClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.ListWorkstationClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.ListWorkstationClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :workstation_clusters, 1,
    repeated: true,
    type: Google.Cloud.Workstations.V1.WorkstationCluster,
    json_name: "workstationClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Workstations.V1.CreateWorkstationClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :workstation_cluster_id, 2,
    type: :string,
    json_name: "workstationClusterId",
    deprecated: false

  field :workstation_cluster, 3,
    type: Google.Cloud.Workstations.V1.WorkstationCluster,
    json_name: "workstationCluster",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.UpdateWorkstationClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :workstation_cluster, 1,
    type: Google.Cloud.Workstations.V1.WorkstationCluster,
    json_name: "workstationCluster",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.DeleteWorkstationClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :force, 4, type: :bool, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.GetWorkstationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.ListWorkstationConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.ListWorkstationConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :workstation_configs, 1,
    repeated: true,
    type: Google.Cloud.Workstations.V1.WorkstationConfig,
    json_name: "workstationConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Workstations.V1.ListUsableWorkstationConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.ListUsableWorkstationConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :workstation_configs, 1,
    repeated: true,
    type: Google.Cloud.Workstations.V1.WorkstationConfig,
    json_name: "workstationConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Workstations.V1.CreateWorkstationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :workstation_config_id, 2,
    type: :string,
    json_name: "workstationConfigId",
    deprecated: false

  field :workstation_config, 3,
    type: Google.Cloud.Workstations.V1.WorkstationConfig,
    json_name: "workstationConfig",
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.UpdateWorkstationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :workstation_config, 1,
    type: Google.Cloud.Workstations.V1.WorkstationConfig,
    json_name: "workstationConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.DeleteWorkstationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 3, type: :string, deprecated: false
  field :force, 4, type: :bool, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.GetWorkstationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.ListWorkstationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.ListWorkstationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :workstations, 1, repeated: true, type: Google.Cloud.Workstations.V1.Workstation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.ListUsableWorkstationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.ListUsableWorkstationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :workstations, 1, repeated: true, type: Google.Cloud.Workstations.V1.Workstation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Workstations.V1.CreateWorkstationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :workstation_id, 2, type: :string, json_name: "workstationId", deprecated: false
  field :workstation, 3, type: Google.Cloud.Workstations.V1.Workstation, deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.UpdateWorkstationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :workstation, 1, type: Google.Cloud.Workstations.V1.Workstation, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Workstations.V1.DeleteWorkstationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.StartWorkstationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.StopWorkstationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.GenerateAccessTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :expiration, 0

  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime", oneof: 0
  field :ttl, 3, type: Google.Protobuf.Duration, oneof: 0
  field :workstation, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Workstations.V1.GenerateAccessTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :access_token, 1, type: :string, json_name: "accessToken"
  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end

defmodule Google.Cloud.Workstations.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

defmodule Google.Cloud.Workstations.V1.Workstations.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.workstations.v1.Workstations",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetWorkstationCluster,
      Google.Cloud.Workstations.V1.GetWorkstationClusterRequest,
      Google.Cloud.Workstations.V1.WorkstationCluster

  rpc :ListWorkstationClusters,
      Google.Cloud.Workstations.V1.ListWorkstationClustersRequest,
      Google.Cloud.Workstations.V1.ListWorkstationClustersResponse

  rpc :CreateWorkstationCluster,
      Google.Cloud.Workstations.V1.CreateWorkstationClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkstationCluster,
      Google.Cloud.Workstations.V1.UpdateWorkstationClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteWorkstationCluster,
      Google.Cloud.Workstations.V1.DeleteWorkstationClusterRequest,
      Google.Longrunning.Operation

  rpc :GetWorkstationConfig,
      Google.Cloud.Workstations.V1.GetWorkstationConfigRequest,
      Google.Cloud.Workstations.V1.WorkstationConfig

  rpc :ListWorkstationConfigs,
      Google.Cloud.Workstations.V1.ListWorkstationConfigsRequest,
      Google.Cloud.Workstations.V1.ListWorkstationConfigsResponse

  rpc :ListUsableWorkstationConfigs,
      Google.Cloud.Workstations.V1.ListUsableWorkstationConfigsRequest,
      Google.Cloud.Workstations.V1.ListUsableWorkstationConfigsResponse

  rpc :CreateWorkstationConfig,
      Google.Cloud.Workstations.V1.CreateWorkstationConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkstationConfig,
      Google.Cloud.Workstations.V1.UpdateWorkstationConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteWorkstationConfig,
      Google.Cloud.Workstations.V1.DeleteWorkstationConfigRequest,
      Google.Longrunning.Operation

  rpc :GetWorkstation,
      Google.Cloud.Workstations.V1.GetWorkstationRequest,
      Google.Cloud.Workstations.V1.Workstation

  rpc :ListWorkstations,
      Google.Cloud.Workstations.V1.ListWorkstationsRequest,
      Google.Cloud.Workstations.V1.ListWorkstationsResponse

  rpc :ListUsableWorkstations,
      Google.Cloud.Workstations.V1.ListUsableWorkstationsRequest,
      Google.Cloud.Workstations.V1.ListUsableWorkstationsResponse

  rpc :CreateWorkstation,
      Google.Cloud.Workstations.V1.CreateWorkstationRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkstation,
      Google.Cloud.Workstations.V1.UpdateWorkstationRequest,
      Google.Longrunning.Operation

  rpc :DeleteWorkstation,
      Google.Cloud.Workstations.V1.DeleteWorkstationRequest,
      Google.Longrunning.Operation

  rpc :StartWorkstation,
      Google.Cloud.Workstations.V1.StartWorkstationRequest,
      Google.Longrunning.Operation

  rpc :StopWorkstation,
      Google.Cloud.Workstations.V1.StopWorkstationRequest,
      Google.Longrunning.Operation

  rpc :GenerateAccessToken,
      Google.Cloud.Workstations.V1.GenerateAccessTokenRequest,
      Google.Cloud.Workstations.V1.GenerateAccessTokenResponse
end

defmodule Google.Cloud.Workstations.V1.Workstations.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Workstations.V1.Workstations.Service
end
