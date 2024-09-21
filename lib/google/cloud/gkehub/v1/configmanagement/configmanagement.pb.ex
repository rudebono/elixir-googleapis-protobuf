defmodule Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DEPLOYMENT_STATE_UNSPECIFIED, 0
  field :NOT_INSTALLED, 1
  field :INSTALLED, 2
  field :ERROR, 3
  field :PENDING, 4
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.MembershipSpec.Management do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MANAGEMENT_UNSPECIFIED, 0
  field :MANAGEMENT_AUTOMATIC, 1
  field :MANAGEMENT_MANUAL, 2
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncState.CRDState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CRD_STATE_UNSPECIFIED, 0
  field :NOT_INSTALLED, 1
  field :INSTALLED, 2
  field :TERMINATING, 3
  field :INSTALLING, 4
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncState.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CONFIG_SYNC_NOT_INSTALLED, 1
  field :CONFIG_SYNC_INSTALLED, 2
  field :CONFIG_SYNC_ERROR, 3
  field :CONFIG_SYNC_PENDING, 4
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.SyncState.SyncCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SYNC_CODE_UNSPECIFIED, 0
  field :SYNCED, 1
  field :PENDING, 2
  field :ERROR, 3
  field :NOT_CONFIGURED, 4
  field :NOT_INSTALLED, 5
  field :UNAUTHORIZED, 6
  field :UNREACHABLE, 7
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.MembershipState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cluster_name, 1, type: :string, json_name: "clusterName"

  field :membership_spec, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1.MembershipSpec,
    json_name: "membershipSpec"

  field :operator_state, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1.OperatorState,
    json_name: "operatorState"

  field :config_sync_state, 4,
    type: Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncState,
    json_name: "configSyncState"

  field :policy_controller_state, 5,
    type: Google.Cloud.Gkehub.Configmanagement.V1.PolicyControllerState,
    json_name: "policyControllerState"

  field :hierarchy_controller_state, 7,
    type: Google.Cloud.Gkehub.Configmanagement.V1.HierarchyControllerState,
    json_name: "hierarchyControllerState"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.MembershipSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :config_sync, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1.ConfigSync,
    json_name: "configSync"

  field :policy_controller, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1.PolicyController,
    json_name: "policyController"

  field :hierarchy_controller, 4,
    type: Google.Cloud.Gkehub.Configmanagement.V1.HierarchyControllerConfig,
    json_name: "hierarchyController"

  field :version, 10, type: :string
  field :cluster, 11, type: :string

  field :management, 12,
    type: Google.Cloud.Gkehub.Configmanagement.V1.MembershipSpec.Management,
    enum: true
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.ConfigSync do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :git, 7, type: Google.Cloud.Gkehub.Configmanagement.V1.GitConfig
  field :source_format, 8, type: :string, json_name: "sourceFormat"
  field :enabled, 10, proto3_optional: true, type: :bool
  field :prevent_drift, 11, type: :bool, json_name: "preventDrift"
  field :oci, 12, type: Google.Cloud.Gkehub.Configmanagement.V1.OciConfig

  field :metrics_gcp_service_account_email, 15,
    type: :string,
    json_name: "metricsGcpServiceAccountEmail"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.GitConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sync_repo, 1, type: :string, json_name: "syncRepo"
  field :sync_branch, 2, type: :string, json_name: "syncBranch"
  field :policy_dir, 3, type: :string, json_name: "policyDir"
  field :sync_wait_secs, 4, type: :int64, json_name: "syncWaitSecs"
  field :sync_rev, 5, type: :string, json_name: "syncRev"
  field :secret_type, 6, type: :string, json_name: "secretType"
  field :https_proxy, 7, type: :string, json_name: "httpsProxy"
  field :gcp_service_account_email, 8, type: :string, json_name: "gcpServiceAccountEmail"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.OciConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sync_repo, 1, type: :string, json_name: "syncRepo"
  field :policy_dir, 2, type: :string, json_name: "policyDir"
  field :sync_wait_secs, 3, type: :int64, json_name: "syncWaitSecs"
  field :secret_type, 4, type: :string, json_name: "secretType"
  field :gcp_service_account_email, 5, type: :string, json_name: "gcpServiceAccountEmail"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.PolicyController do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.HierarchyControllerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :enable_pod_tree_labels, 2, type: :bool, json_name: "enablePodTreeLabels"

  field :enable_hierarchical_resource_quota, 3,
    type: :bool,
    json_name: "enableHierarchicalResourceQuota"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.HierarchyControllerDeploymentState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :hnc, 1, type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState, enum: true
  field :extension, 2, type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState, enum: true
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.HierarchyControllerVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :hnc, 1, type: :string
  field :extension, 2, type: :string
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.HierarchyControllerState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1, type: Google.Cloud.Gkehub.Configmanagement.V1.HierarchyControllerVersion

  field :state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1.HierarchyControllerDeploymentState
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.OperatorState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1, type: :string

  field :deployment_state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState,
    json_name: "deploymentState",
    enum: true

  field :errors, 3, repeated: true, type: Google.Cloud.Gkehub.Configmanagement.V1.InstallError
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.InstallError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1, type: Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncVersion

  field :deployment_state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncDeploymentState,
    json_name: "deploymentState"

  field :sync_state, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1.SyncState,
    json_name: "syncState"

  field :errors, 4, repeated: true, type: Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncError

  field :rootsync_crd, 5,
    type: Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncState.CRDState,
    json_name: "rootsyncCrd",
    enum: true

  field :reposync_crd, 6,
    type: Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncState.CRDState,
    json_name: "reposyncCrd",
    enum: true

  field :state, 7, type: Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncState.State, enum: true
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :importer, 1, type: :string
  field :syncer, 2, type: :string
  field :git_sync, 3, type: :string, json_name: "gitSync"
  field :monitor, 4, type: :string
  field :reconciler_manager, 5, type: :string, json_name: "reconcilerManager"
  field :root_reconciler, 6, type: :string, json_name: "rootReconciler"
  field :admission_webhook, 7, type: :string, json_name: "admissionWebhook"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.ConfigSyncDeploymentState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :importer, 1, type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState, enum: true
  field :syncer, 2, type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState, enum: true

  field :git_sync, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState,
    json_name: "gitSync",
    enum: true

  field :monitor, 4, type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState, enum: true

  field :reconciler_manager, 5,
    type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState,
    json_name: "reconcilerManager",
    enum: true

  field :root_reconciler, 6,
    type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState,
    json_name: "rootReconciler",
    enum: true

  field :admission_webhook, 7,
    type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState,
    json_name: "admissionWebhook",
    enum: true
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.SyncState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_token, 1, type: :string, json_name: "sourceToken"
  field :import_token, 2, type: :string, json_name: "importToken"
  field :sync_token, 3, type: :string, json_name: "syncToken"
  field :last_sync, 4, type: :string, json_name: "lastSync", deprecated: true
  field :last_sync_time, 7, type: Google.Protobuf.Timestamp, json_name: "lastSyncTime"
  field :code, 5, type: Google.Cloud.Gkehub.Configmanagement.V1.SyncState.SyncCode, enum: true
  field :errors, 6, repeated: true, type: Google.Cloud.Gkehub.Configmanagement.V1.SyncError
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.SyncError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :code, 1, type: :string
  field :error_message, 2, type: :string, json_name: "errorMessage"

  field :error_resources, 3,
    repeated: true,
    type: Google.Cloud.Gkehub.Configmanagement.V1.ErrorResource,
    json_name: "errorResources"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.ErrorResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source_path, 1, type: :string, json_name: "sourcePath"
  field :resource_name, 2, type: :string, json_name: "resourceName"
  field :resource_namespace, 3, type: :string, json_name: "resourceNamespace"

  field :resource_gvk, 4,
    type: Google.Cloud.Gkehub.Configmanagement.V1.GroupVersionKind,
    json_name: "resourceGvk"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.GroupVersionKind do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :group, 1, type: :string
  field :version, 2, type: :string
  field :kind, 3, type: :string
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.PolicyControllerState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1, type: Google.Cloud.Gkehub.Configmanagement.V1.PolicyControllerVersion

  field :deployment_state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1.GatekeeperDeploymentState,
    json_name: "deploymentState"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.PolicyControllerVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :version, 1, type: :string
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1.GatekeeperDeploymentState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gatekeeper_controller_manager_state, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState,
    json_name: "gatekeeperControllerManagerState",
    enum: true

  field :gatekeeper_audit, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1.DeploymentState,
    json_name: "gatekeeperAudit",
    enum: true
end