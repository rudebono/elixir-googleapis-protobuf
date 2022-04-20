defmodule Google.Cloud.Gkebackup.V1.Restore.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :IN_PROGRESS
          | :SUCCEEDED
          | :FAILED
          | :DELETING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :IN_PROGRESS, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :DELETING, 5
end
defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.VolumeDataRestorePolicy do
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
defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.ClusterResourceConflictPolicy do
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
defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.NamespacedResourceRestoreMode do
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
defmodule Google.Cloud.Gkebackup.V1.Restore.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Gkebackup.V1.Restore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          description: String.t(),
          backup: String.t(),
          cluster: String.t(),
          restore_config: Google.Cloud.Gkebackup.V1.RestoreConfig.t() | nil,
          labels: %{String.t() => String.t()},
          state: Google.Cloud.Gkebackup.V1.Restore.State.t(),
          state_reason: String.t(),
          complete_time: Google.Protobuf.Timestamp.t() | nil,
          resources_restored_count: integer,
          resources_excluded_count: integer,
          resources_failed_count: integer,
          volumes_restored_count: integer,
          etag: String.t()
        }

  defstruct name: "",
            uid: "",
            create_time: nil,
            update_time: nil,
            description: "",
            backup: "",
            cluster: "",
            restore_config: nil,
            labels: %{},
            state: :STATE_UNSPECIFIED,
            state_reason: "",
            complete_time: nil,
            resources_restored_count: 0,
            resources_excluded_count: 0,
            resources_failed_count: 0,
            volumes_restored_count: 0,
            etag: ""

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 5, type: :string
  field :backup, 6, type: :string, deprecated: false
  field :cluster, 7, type: :string, deprecated: false

  field :restore_config, 8,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig,
    json_name: "restoreConfig",
    deprecated: false

  field :labels, 9, repeated: true, type: Google.Cloud.Gkebackup.V1.Restore.LabelsEntry, map: true
  field :state, 10, type: Google.Cloud.Gkebackup.V1.Restore.State, enum: true, deprecated: false
  field :state_reason, 11, type: :string, json_name: "stateReason", deprecated: false

  field :complete_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false

  field :resources_restored_count, 13,
    type: :int32,
    json_name: "resourcesRestoredCount",
    deprecated: false

  field :resources_excluded_count, 14,
    type: :int32,
    json_name: "resourcesExcludedCount",
    deprecated: false

  field :resources_failed_count, 15,
    type: :int32,
    json_name: "resourcesFailedCount",
    deprecated: false

  field :volumes_restored_count, 16,
    type: :int32,
    json_name: "volumesRestoredCount",
    deprecated: false

  field :etag, 17, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_group: String.t(),
          resource_kind: String.t()
        }

  defstruct resource_group: "",
            resource_kind: ""

  field :resource_group, 1, type: :string, json_name: "resourceGroup"
  field :resource_kind, 2, type: :string, json_name: "resourceKind"
end
defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.ClusterResourceRestoreScope do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          selected_group_kinds: [Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind.t()]
        }

  defstruct selected_group_kinds: []

  field :selected_group_kinds, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind,
    json_name: "selectedGroupKinds"
end
defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.SubstitutionRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_namespaces: [String.t()],
          target_group_kinds: [Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind.t()],
          target_json_path: String.t(),
          original_value_pattern: String.t(),
          new_value: String.t()
        }

  defstruct target_namespaces: [],
            target_group_kinds: [],
            target_json_path: "",
            original_value_pattern: "",
            new_value: ""

  field :target_namespaces, 1, repeated: true, type: :string, json_name: "targetNamespaces"

  field :target_group_kinds, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind,
    json_name: "targetGroupKinds"

  field :target_json_path, 3, type: :string, json_name: "targetJsonPath", deprecated: false
  field :original_value_pattern, 4, type: :string, json_name: "originalValuePattern"
  field :new_value, 5, type: :string, json_name: "newValue"
end
defmodule Google.Cloud.Gkebackup.V1.RestoreConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespaced_resource_restore_scope:
            {:all_namespaces, boolean}
            | {:selected_namespaces, Google.Cloud.Gkebackup.V1.Namespaces.t() | nil}
            | {:selected_applications, Google.Cloud.Gkebackup.V1.NamespacedNames.t() | nil},
          volume_data_restore_policy:
            Google.Cloud.Gkebackup.V1.RestoreConfig.VolumeDataRestorePolicy.t(),
          cluster_resource_conflict_policy:
            Google.Cloud.Gkebackup.V1.RestoreConfig.ClusterResourceConflictPolicy.t(),
          namespaced_resource_restore_mode:
            Google.Cloud.Gkebackup.V1.RestoreConfig.NamespacedResourceRestoreMode.t(),
          cluster_resource_restore_scope:
            Google.Cloud.Gkebackup.V1.RestoreConfig.ClusterResourceRestoreScope.t() | nil,
          substitution_rules: [Google.Cloud.Gkebackup.V1.RestoreConfig.SubstitutionRule.t()]
        }

  defstruct namespaced_resource_restore_scope: nil,
            volume_data_restore_policy: :VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED,
            cluster_resource_conflict_policy: :CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED,
            namespaced_resource_restore_mode: :NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED,
            cluster_resource_restore_scope: nil,
            substitution_rules: []

  oneof :namespaced_resource_restore_scope, 0

  field :volume_data_restore_policy, 1,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.VolumeDataRestorePolicy,
    json_name: "volumeDataRestorePolicy",
    enum: true

  field :cluster_resource_conflict_policy, 2,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.ClusterResourceConflictPolicy,
    json_name: "clusterResourceConflictPolicy",
    enum: true

  field :namespaced_resource_restore_mode, 3,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.NamespacedResourceRestoreMode,
    json_name: "namespacedResourceRestoreMode",
    enum: true

  field :cluster_resource_restore_scope, 4,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.ClusterResourceRestoreScope,
    json_name: "clusterResourceRestoreScope"

  field :all_namespaces, 5, type: :bool, json_name: "allNamespaces", oneof: 0

  field :selected_namespaces, 6,
    type: Google.Cloud.Gkebackup.V1.Namespaces,
    json_name: "selectedNamespaces",
    oneof: 0

  field :selected_applications, 7,
    type: Google.Cloud.Gkebackup.V1.NamespacedNames,
    json_name: "selectedApplications",
    oneof: 0

  field :substitution_rules, 8,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.SubstitutionRule,
    json_name: "substitutionRules"
end
