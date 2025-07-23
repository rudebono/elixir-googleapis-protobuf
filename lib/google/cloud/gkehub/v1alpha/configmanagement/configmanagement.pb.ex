defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DEPLOYMENT_STATE_UNSPECIFIED, 0
  field :NOT_INSTALLED, 1
  field :INSTALLED, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.SyncState.SyncCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SYNC_CODE_UNSPECIFIED, 0
  field :SYNCED, 1
  field :PENDING, 2
  field :ERROR, 3
  field :NOT_CONFIGURED, 4
  field :NOT_INSTALLED, 5
  field :UNAUTHORIZED, 6
  field :UNREACHABLE, 7
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.MembershipState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cluster_name, 1, type: :string, json_name: "clusterName"

  field :membership_spec, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.MembershipSpec,
    json_name: "membershipSpec"

  field :operator_state, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.OperatorState,
    json_name: "operatorState"

  field :config_sync_state, 4,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.ConfigSyncState,
    json_name: "configSyncState"

  field :policy_controller_state, 5,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.PolicyControllerState,
    json_name: "policyControllerState"

  field :binauthz_state, 6,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.BinauthzState,
    json_name: "binauthzState"

  field :hierarchy_controller_state, 7,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.HierarchyControllerState,
    json_name: "hierarchyControllerState"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.MembershipSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :config_sync, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.ConfigSync,
    json_name: "configSync"

  field :policy_controller, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.PolicyController,
    json_name: "policyController"

  field :binauthz, 3, type: Google.Cloud.Gkehub.Configmanagement.V1alpha.BinauthzConfig

  field :hierarchy_controller, 4,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.HierarchyControllerConfig,
    json_name: "hierarchyController"

  field :version, 10, type: :string
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.ConfigSync do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :git, 7, type: Google.Cloud.Gkehub.Configmanagement.V1alpha.GitConfig
  field :source_format, 8, type: :string, json_name: "sourceFormat"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.GitConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sync_repo, 1, type: :string, json_name: "syncRepo"
  field :sync_branch, 2, type: :string, json_name: "syncBranch"
  field :policy_dir, 3, type: :string, json_name: "policyDir"
  field :sync_wait_secs, 4, type: :int64, json_name: "syncWaitSecs"
  field :sync_rev, 5, type: :string, json_name: "syncRev"
  field :secret_type, 6, type: :string, json_name: "secretType"
  field :https_proxy, 7, type: :string, json_name: "httpsProxy"
  field :gcp_service_account_email, 8, type: :string, json_name: "gcpServiceAccountEmail"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.PolicyController do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.BinauthzConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.HierarchyControllerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :enable_pod_tree_labels, 2, type: :bool, json_name: "enablePodTreeLabels"

  field :enable_hierarchical_resource_quota, 3,
    type: :bool,
    json_name: "enableHierarchicalResourceQuota"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.HierarchyControllerDeploymentState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hnc, 1, type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState, enum: true

  field :extension, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    enum: true
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.HierarchyControllerVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hnc, 1, type: :string
  field :extension, 2, type: :string
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.HierarchyControllerState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: Google.Cloud.Gkehub.Configmanagement.V1alpha.HierarchyControllerVersion

  field :state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.HierarchyControllerDeploymentState
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.OperatorState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: :string

  field :deployment_state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    json_name: "deploymentState",
    enum: true

  field :errors, 3,
    repeated: true,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.InstallError
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.InstallError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_message, 1, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.ConfigSyncState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: Google.Cloud.Gkehub.Configmanagement.V1alpha.ConfigSyncVersion

  field :deployment_state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.ConfigSyncDeploymentState,
    json_name: "deploymentState"

  field :sync_state, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.SyncState,
    json_name: "syncState"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.ConfigSyncVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :importer, 1, type: :string
  field :syncer, 2, type: :string
  field :git_sync, 3, type: :string, json_name: "gitSync"
  field :monitor, 4, type: :string
  field :reconciler_manager, 5, type: :string, json_name: "reconcilerManager"
  field :root_reconciler, 6, type: :string, json_name: "rootReconciler"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.ConfigSyncDeploymentState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :importer, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    enum: true

  field :syncer, 2, type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState, enum: true

  field :git_sync, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    json_name: "gitSync",
    enum: true

  field :monitor, 4,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    enum: true

  field :reconciler_manager, 5,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    json_name: "reconcilerManager",
    enum: true

  field :root_reconciler, 6,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    json_name: "rootReconciler",
    enum: true
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.SyncState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source_token, 1, type: :string, json_name: "sourceToken"
  field :import_token, 2, type: :string, json_name: "importToken"
  field :sync_token, 3, type: :string, json_name: "syncToken"
  field :last_sync, 4, type: :string, json_name: "lastSync", deprecated: true
  field :last_sync_time, 7, type: Google.Protobuf.Timestamp, json_name: "lastSyncTime"

  field :code, 5,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.SyncState.SyncCode,
    enum: true

  field :errors, 6, repeated: true, type: Google.Cloud.Gkehub.Configmanagement.V1alpha.SyncError
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.SyncError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1, type: :string
  field :error_message, 2, type: :string, json_name: "errorMessage"

  field :error_resources, 3,
    repeated: true,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.ErrorResource,
    json_name: "errorResources"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.ErrorResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source_path, 1, type: :string, json_name: "sourcePath"
  field :resource_name, 2, type: :string, json_name: "resourceName"
  field :resource_namespace, 3, type: :string, json_name: "resourceNamespace"

  field :resource_gvk, 4,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.GroupVersionKind,
    json_name: "resourceGvk"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.GroupVersionKind do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :group, 1, type: :string
  field :version, 2, type: :string
  field :kind, 3, type: :string
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.PolicyControllerState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: Google.Cloud.Gkehub.Configmanagement.V1alpha.PolicyControllerVersion

  field :deployment_state, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.GatekeeperDeploymentState,
    json_name: "deploymentState"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.PolicyControllerVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: :string
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.BinauthzState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :webhook, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    enum: true

  field :version, 2, type: Google.Cloud.Gkehub.Configmanagement.V1alpha.BinauthzVersion
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.BinauthzVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :webhook_version, 1, type: :string, json_name: "webhookVersion"
end

defmodule Google.Cloud.Gkehub.Configmanagement.V1alpha.GatekeeperDeploymentState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gatekeeper_controller_manager_state, 1,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    json_name: "gatekeeperControllerManagerState",
    enum: true

  field :gatekeeper_audit, 2,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    json_name: "gatekeeperAudit",
    enum: true

  field :gatekeeper_mutation, 3,
    type: Google.Cloud.Gkehub.Configmanagement.V1alpha.DeploymentState,
    json_name: "gatekeeperMutation",
    enum: true
end
