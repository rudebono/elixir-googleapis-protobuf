defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.VolumeDataRestorePolicy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED
          | :RESTORE_VOLUME_DATA_FROM_BACKUP
          | :REUSE_VOLUME_HANDLE_FROM_BACKUP
          | :NO_VOLUME_DATA_RESTORATION

  field :VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED, 0
  field :RESTORE_VOLUME_DATA_FROM_BACKUP, 1
  field :REUSE_VOLUME_HANDLE_FROM_BACKUP, 2
  field :NO_VOLUME_DATA_RESTORATION, 3
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.ClusterResourceConflictPolicy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED
          | :USE_EXISTING_VERSION
          | :USE_BACKUP_VERSION

  field :CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED, 0
  field :USE_EXISTING_VERSION, 1
  field :USE_BACKUP_VERSION, 2
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.NamespacedResourceRestoreMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED
          | :DELETE_AND_RESTORE
          | :FAIL_ON_CONFLICT

  field :NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED, 0
  field :DELETE_AND_RESTORE, 1
  field :FAIL_ON_CONFLICT, 2
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedRestorePlan.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedRestorePlan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          backup_plan: String.t(),
          cluster: String.t(),
          restore_config: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [:description, :backup_plan, :cluster, :restore_config, :labels]

  field :description, 1, type: :string
  field :backup_plan, 2, type: :string, json_name: "backupPlan"
  field :cluster, 3, type: :string

  field :restore_config, 4,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig,
    json_name: "restoreConfig"

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedRestorePlan.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.GroupKind do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_group: String.t(),
          resource_kind: String.t()
        }

  defstruct [:resource_group, :resource_kind]

  field :resource_group, 1, type: :string, json_name: "resourceGroup"
  field :resource_kind, 2, type: :string, json_name: "resourceKind"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.ClusterResourceRestoreScope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selected_group_kinds: [Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.GroupKind.t()]
        }

  defstruct [:selected_group_kinds]

  field :selected_group_kinds, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.GroupKind,
    json_name: "selectedGroupKinds"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.SubstitutionRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_namespaces: [String.t()],
          target_group_kinds: [Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.GroupKind.t()],
          target_json_path: String.t(),
          original_value_pattern: String.t(),
          new_value: String.t()
        }

  defstruct [
    :target_namespaces,
    :target_group_kinds,
    :target_json_path,
    :original_value_pattern,
    :new_value
  ]

  field :target_namespaces, 1, repeated: true, type: :string, json_name: "targetNamespaces"

  field :target_group_kinds, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.GroupKind,
    json_name: "targetGroupKinds"

  field :target_json_path, 3, type: :string, json_name: "targetJsonPath"
  field :original_value_pattern, 4, type: :string, json_name: "originalValuePattern"
  field :new_value, 5, type: :string, json_name: "newValue"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespaced_resource_restore_scope:
            {:all_namespaces, boolean}
            | {:selected_namespaces, Google.Cloud.Gkebackup.Logging.V1.Namespaces.t() | nil}
            | {:selected_applications,
               Google.Cloud.Gkebackup.Logging.V1.NamespacedNames.t() | nil},
          volume_data_restore_policy:
            Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.VolumeDataRestorePolicy.t(),
          cluster_resource_conflict_policy:
            Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.ClusterResourceConflictPolicy.t(),
          namespaced_resource_restore_mode:
            Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.NamespacedResourceRestoreMode.t(),
          cluster_resource_restore_scope:
            Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.ClusterResourceRestoreScope.t() | nil,
          substitution_rules: [
            Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.SubstitutionRule.t()
          ]
        }

  defstruct [
    :namespaced_resource_restore_scope,
    :volume_data_restore_policy,
    :cluster_resource_conflict_policy,
    :namespaced_resource_restore_mode,
    :cluster_resource_restore_scope,
    :substitution_rules
  ]

  oneof :namespaced_resource_restore_scope, 0

  field :volume_data_restore_policy, 1,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.VolumeDataRestorePolicy,
    enum: true,
    json_name: "volumeDataRestorePolicy"

  field :cluster_resource_conflict_policy, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.ClusterResourceConflictPolicy,
    enum: true,
    json_name: "clusterResourceConflictPolicy"

  field :namespaced_resource_restore_mode, 3,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.NamespacedResourceRestoreMode,
    enum: true,
    json_name: "namespacedResourceRestoreMode"

  field :cluster_resource_restore_scope, 4,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.ClusterResourceRestoreScope,
    json_name: "clusterResourceRestoreScope"

  field :all_namespaces, 5, type: :bool, json_name: "allNamespaces", oneof: 0

  field :selected_namespaces, 6,
    type: Google.Cloud.Gkebackup.Logging.V1.Namespaces,
    json_name: "selectedNamespaces",
    oneof: 0

  field :selected_applications, 7,
    type: Google.Cloud.Gkebackup.Logging.V1.NamespacedNames,
    json_name: "selectedApplications",
    oneof: 0

  field :substitution_rules, 8,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.SubstitutionRule,
    json_name: "substitutionRules"

  def transform_module(), do: nil
end
