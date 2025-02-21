defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DEPLOYMENT_STATE_UNSPECIFIED, 0
  field :NOT_INSTALLED, 1
  field :INSTALLED, 2
  field :ERROR, 3
  field :PENDING, 4
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.MembershipSpec.Management do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MANAGEMENT_UNSPECIFIED, 0
  field :MANAGEMENT_AUTOMATIC, 1
  field :MANAGEMENT_MANUAL, 2
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerMonitoring.MonitoringBackend do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MONITORING_BACKEND_UNSPECIFIED, 0
  field :PROMETHEUS, 1
  field :CLOUD_MONITORING, 2
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncState.CRDState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CRD_STATE_UNSPECIFIED, 0
  field :NOT_INSTALLED, 1
  field :INSTALLED, 2
  field :TERMINATING, 3
  field :INSTALLING, 4
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncState.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CONFIG_SYNC_NOT_INSTALLED, 1
  field :CONFIG_SYNC_INSTALLED, 2
  field :CONFIG_SYNC_ERROR, 3
  field :CONFIG_SYNC_PENDING, 4
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncState.StopSyncingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STOP_SYNCING_STATE_UNSPECIFIED, 0
  field :NOT_STOPPED, 1
  field :PENDING, 2
  field :STOPPED, 3
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.SyncState.SyncCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SYNC_CODE_UNSPECIFIED, 0
  field :SYNCED, 1
  field :PENDING, 2
  field :ERROR, 3
  field :NOT_CONFIGURED, 4
  field :NOT_INSTALLED, 5
  field :UNAUTHORIZED, 6
  field :UNREACHABLE, 7
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerMigration.Stage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STAGE_UNSPECIFIED, 0
  field :ACM_MANAGED, 1
  field :POCO_MANAGED, 2
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.MembershipState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cluster_name, 1, type: :string, json_name: "clusterName", deprecated: false

  field :membership_spec, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.MembershipSpec,
    json_name: "membershipSpec",
    deprecated: false

  field :operator_state, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.OperatorState,
    json_name: "operatorState",
    deprecated: false

  field :config_sync_state, 4,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncState,
    json_name: "configSyncState",
    deprecated: false

  field :policy_controller_state, 5,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerState,
    json_name: "policyControllerState",
    deprecated: false

  field :binauthz_state, 6,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.BinauthzState,
    json_name: "binauthzState",
    deprecated: false

  field :hierarchy_controller_state, 7,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.HierarchyControllerState,
    json_name: "hierarchyControllerState",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.MembershipSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :config_sync, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSync,
    json_name: "configSync",
    deprecated: false

  field :policy_controller, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyController,
    json_name: "policyController",
    deprecated: true

  field :binauthz, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.BinauthzConfig,
    deprecated: true

  field :hierarchy_controller, 4,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.HierarchyControllerConfig,
    json_name: "hierarchyController",
    deprecated: true

  field :version, 10, type: :string, deprecated: false
  field :cluster, 11, type: :string, deprecated: false

  field :management, 12,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.MembershipSpec.Management,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSync do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :git, 7, type: Google.Cloud.Gkehub.Configmanagement.V1beta.GitConfig, deprecated: false
  field :source_format, 8, type: :string, json_name: "sourceFormat", deprecated: false
  field :enabled, 10, proto3_optional: true, type: :bool, deprecated: false
  field :prevent_drift, 11, type: :bool, json_name: "preventDrift", deprecated: false
  field :oci, 12, type: Google.Cloud.Gkehub.Configmanagement.V1beta.OciConfig, deprecated: false
  field :stop_syncing, 16, type: :bool, json_name: "stopSyncing", deprecated: false
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.GitConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sync_repo, 1, type: :string, json_name: "syncRepo", deprecated: false
  field :sync_branch, 2, type: :string, json_name: "syncBranch", deprecated: false
  field :policy_dir, 3, type: :string, json_name: "policyDir", deprecated: false
  field :sync_wait_secs, 4, type: :int64, json_name: "syncWaitSecs", deprecated: false
  field :sync_rev, 5, type: :string, json_name: "syncRev", deprecated: false
  field :secret_type, 6, type: :string, json_name: "secretType", deprecated: false
  field :https_proxy, 7, type: :string, json_name: "httpsProxy", deprecated: false

  field :gcp_service_account_email, 8,
    type: :string,
    json_name: "gcpServiceAccountEmail",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.OciConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sync_repo, 1, type: :string, json_name: "syncRepo", deprecated: false
  field :policy_dir, 2, type: :string, json_name: "policyDir", deprecated: false
  field :sync_wait_secs, 3, type: :int64, json_name: "syncWaitSecs", deprecated: false
  field :secret_type, 4, type: :string, json_name: "secretType", deprecated: false

  field :gcp_service_account_email, 5,
    type: :string,
    json_name: "gcpServiceAccountEmail",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyController do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool

  field :template_library_installed, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "templateLibraryInstalled"

  field :audit_interval_seconds, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "auditIntervalSeconds"

  field :exemptable_namespaces, 4,
    repeated: true,
    type: :string,
    json_name: "exemptableNamespaces"

  field :referential_rules_enabled, 5, type: :bool, json_name: "referentialRulesEnabled"
  field :log_denies_enabled, 6, type: :bool, json_name: "logDeniesEnabled"
  field :mutation_enabled, 7, type: :bool, json_name: "mutationEnabled"

  field :monitoring, 8,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerMonitoring

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerMonitoring do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backends, 1,
    repeated: true,
    type:
      Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerMonitoring.MonitoringBackend,
    enum: true
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.BinauthzConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.HierarchyControllerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool
  field :enable_pod_tree_labels, 2, type: :bool, json_name: "enablePodTreeLabels"

  field :enable_hierarchical_resource_quota, 3,
    type: :bool,
    json_name: "enableHierarchicalResourceQuota"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.HierarchyControllerDeploymentState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :hnc, 1, type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState, enum: true

  field :extension, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    enum: true
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.HierarchyControllerVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :hnc, 1, type: :string
  field :extension, 2, type: :string
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.HierarchyControllerState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :version, 1, type: Google.Cloud.Gkehub.Configmanagement.V1beta.HierarchyControllerVersion

  field :state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.HierarchyControllerDeploymentState
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.OperatorState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :version, 1, type: :string

  field :deployment_state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    json_name: "deploymentState",
    enum: true

  field :errors, 3, repeated: true, type: Google.Cloud.Gkehub.Configmanagement.V1beta.InstallError
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.InstallError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :version, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncVersion,
    deprecated: false

  field :deployment_state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncDeploymentState,
    json_name: "deploymentState",
    deprecated: false

  field :sync_state, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.SyncState,
    json_name: "syncState",
    deprecated: false

  field :errors, 4,
    repeated: true,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncError,
    deprecated: false

  field :rootsync_crd, 5,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncState.CRDState,
    json_name: "rootsyncCrd",
    enum: true,
    deprecated: false

  field :reposync_crd, 6,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncState.CRDState,
    json_name: "reposyncCrd",
    enum: true,
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncState.State,
    enum: true,
    deprecated: false

  field :cluster_level_stop_syncing_state, 8,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncState.StopSyncingState,
    json_name: "clusterLevelStopSyncingState",
    enum: true,
    deprecated: false

  field :cr_count, 9, type: :int32, json_name: "crCount", deprecated: false
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :importer, 1, type: :string
  field :syncer, 2, type: :string
  field :git_sync, 3, type: :string, json_name: "gitSync"
  field :monitor, 4, type: :string
  field :reconciler_manager, 5, type: :string, json_name: "reconcilerManager"
  field :root_reconciler, 6, type: :string, json_name: "rootReconciler"
  field :admission_webhook, 7, type: :string, json_name: "admissionWebhook"

  field :resource_group_controller_manager, 8,
    type: :string,
    json_name: "resourceGroupControllerManager"

  field :otel_collector, 9, type: :string, json_name: "otelCollector"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.ConfigSyncDeploymentState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :importer, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    enum: true

  field :syncer, 2, type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState, enum: true

  field :git_sync, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    json_name: "gitSync",
    enum: true

  field :monitor, 4, type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState, enum: true

  field :reconciler_manager, 5,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    json_name: "reconcilerManager",
    enum: true

  field :root_reconciler, 6,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    json_name: "rootReconciler",
    enum: true

  field :admission_webhook, 7,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    json_name: "admissionWebhook",
    enum: true

  field :resource_group_controller_manager, 8,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    json_name: "resourceGroupControllerManager",
    enum: true

  field :otel_collector, 9,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    json_name: "otelCollector",
    enum: true
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.SyncState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_token, 1, type: :string, json_name: "sourceToken"
  field :import_token, 2, type: :string, json_name: "importToken"
  field :sync_token, 3, type: :string, json_name: "syncToken"
  field :last_sync, 4, type: :string, json_name: "lastSync", deprecated: true
  field :last_sync_time, 7, type: Google.Protobuf.Timestamp, json_name: "lastSyncTime"
  field :code, 5, type: Google.Cloud.Gkehub.Configmanagement.V1beta.SyncState.SyncCode, enum: true
  field :errors, 6, repeated: true, type: Google.Cloud.Gkehub.Configmanagement.V1beta.SyncError
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.SyncError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 1, type: :string
  field :error_message, 2, type: :string, json_name: "errorMessage"

  field :error_resources, 3,
    repeated: true,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.ErrorResource,
    json_name: "errorResources"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.ErrorResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_path, 1, type: :string, json_name: "sourcePath"
  field :resource_name, 2, type: :string, json_name: "resourceName"
  field :resource_namespace, 3, type: :string, json_name: "resourceNamespace"

  field :resource_gvk, 4,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.GroupVersionKind,
    json_name: "resourceGvk"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.GroupVersionKind do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :group, 1, type: :string
  field :version, 2, type: :string
  field :kind, 3, type: :string
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :version, 1, type: Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerVersion

  field :deployment_state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.GatekeeperDeploymentState,
    json_name: "deploymentState"

  field :migration, 4, type: Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerMigration
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :version, 1, type: :string
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerMigration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :stage, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.PolicyControllerMigration.Stage,
    enum: true

  field :copy_time, 2, type: Google.Protobuf.Timestamp, json_name: "copyTime"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.BinauthzState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :webhook, 1, type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState, enum: true
  field :version, 2, type: Google.Cloud.Gkehub.Configmanagement.V1beta.BinauthzVersion
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.BinauthzVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :webhook_version, 1, type: :string, json_name: "webhookVersion"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1beta.GatekeeperDeploymentState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :gatekeeper_controller_manager_state, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    json_name: "gatekeeperControllerManagerState",
    enum: true

  field :gatekeeper_audit, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    json_name: "gatekeeperAudit",
    enum: true

  field :gatekeeper_mutation, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1beta.DeploymentState,
    json_name: "gatekeeperMutation",
    enum: true
end
