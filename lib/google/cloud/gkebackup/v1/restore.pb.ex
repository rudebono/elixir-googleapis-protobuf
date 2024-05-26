defmodule Google.Cloud.Gkebackup.V1.Restore.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :IN_PROGRESS, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :DELETING, 5
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.VolumeDataRestorePolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED, 0
  field :RESTORE_VOLUME_DATA_FROM_BACKUP, 1
  field :REUSE_VOLUME_HANDLE_FROM_BACKUP, 2
  field :NO_VOLUME_DATA_RESTORATION, 3
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.ClusterResourceConflictPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED, 0
  field :USE_EXISTING_VERSION, 1
  field :USE_BACKUP_VERSION, 2
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.NamespacedResourceRestoreMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED, 0
  field :DELETE_AND_RESTORE, 1
  field :FAIL_ON_CONFLICT, 2
  field :MERGE_SKIP_ON_CONFLICT, 3
  field :MERGE_REPLACE_VOLUME_ON_CONFLICT, 4
  field :MERGE_REPLACE_ON_CONFLICT, 5
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.TransformationRuleAction.Op do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OP_UNSPECIFIED, 0
  field :REMOVE, 1
  field :MOVE, 2
  field :COPY, 3
  field :ADD, 4
  field :TEST, 5
  field :REPLACE, 6
end

defmodule Google.Cloud.Gkebackup.V1.Restore.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :inclusion_filters, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.ResourceSelector,
    json_name: "inclusionFilters",
    deprecated: false

  field :exclusion_filters, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.ResourceSelector,
    json_name: "exclusionFilters",
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.Restore.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.V1.Restore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
  field :filter, 18, type: Google.Cloud.Gkebackup.V1.Restore.Filter, deprecated: false

  field :volume_data_restore_policy_overrides, 19,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.VolumeDataRestorePolicyOverride,
    json_name: "volumeDataRestorePolicyOverrides",
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_group, 1, type: :string, json_name: "resourceGroup", deprecated: false
  field :resource_kind, 2, type: :string, json_name: "resourceKind", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.ClusterResourceRestoreScope do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :selected_group_kinds, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind,
    json_name: "selectedGroupKinds",
    deprecated: false

  field :excluded_group_kinds, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind,
    json_name: "excludedGroupKinds",
    deprecated: false

  field :all_group_kinds, 3, type: :bool, json_name: "allGroupKinds", deprecated: false
  field :no_group_kinds, 4, type: :bool, json_name: "noGroupKinds", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.SubstitutionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_namespaces, 1,
    repeated: true,
    type: :string,
    json_name: "targetNamespaces",
    deprecated: false

  field :target_group_kinds, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind,
    json_name: "targetGroupKinds",
    deprecated: false

  field :target_json_path, 3, type: :string, json_name: "targetJsonPath", deprecated: false

  field :original_value_pattern, 4,
    type: :string,
    json_name: "originalValuePattern",
    deprecated: false

  field :new_value, 5, type: :string, json_name: "newValue", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.TransformationRuleAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :op, 1,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.TransformationRuleAction.Op,
    enum: true,
    deprecated: false

  field :from_path, 2, type: :string, json_name: "fromPath", deprecated: false
  field :path, 3, type: :string, deprecated: false
  field :value, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.ResourceFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :namespaces, 1, repeated: true, type: :string, deprecated: false

  field :group_kinds, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind,
    json_name: "groupKinds",
    deprecated: false

  field :json_path, 3, type: :string, json_name: "jsonPath", deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.TransformationRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :field_actions, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.TransformationRuleAction,
    json_name: "fieldActions",
    deprecated: false

  field :resource_filter, 2,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.ResourceFilter,
    json_name: "resourceFilter",
    deprecated: false

  field :description, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.VolumeDataRestorePolicyBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :scope, 0

  field :policy, 1,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.VolumeDataRestorePolicy,
    enum: true,
    deprecated: false

  field :volume_type, 2,
    type: Google.Cloud.Gkebackup.V1.VolumeTypeEnum.VolumeType,
    json_name: "volumeType",
    enum: true,
    oneof: 0
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.RestoreOrder.GroupKindDependency do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :satisfying, 1, type: Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind, deprecated: false
  field :requiring, 2, type: Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig.RestoreOrder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :group_kind_dependencies, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.RestoreOrder.GroupKindDependency,
    json_name: "groupKindDependencies",
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.RestoreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :namespaced_resource_restore_scope, 0

  field :volume_data_restore_policy, 1,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.VolumeDataRestorePolicy,
    json_name: "volumeDataRestorePolicy",
    enum: true,
    deprecated: false

  field :cluster_resource_conflict_policy, 2,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.ClusterResourceConflictPolicy,
    json_name: "clusterResourceConflictPolicy",
    enum: true,
    deprecated: false

  field :namespaced_resource_restore_mode, 3,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.NamespacedResourceRestoreMode,
    json_name: "namespacedResourceRestoreMode",
    enum: true,
    deprecated: false

  field :cluster_resource_restore_scope, 4,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.ClusterResourceRestoreScope,
    json_name: "clusterResourceRestoreScope",
    deprecated: false

  field :all_namespaces, 5, type: :bool, json_name: "allNamespaces", oneof: 0

  field :selected_namespaces, 6,
    type: Google.Cloud.Gkebackup.V1.Namespaces,
    json_name: "selectedNamespaces",
    oneof: 0

  field :selected_applications, 7,
    type: Google.Cloud.Gkebackup.V1.NamespacedNames,
    json_name: "selectedApplications",
    oneof: 0

  field :no_namespaces, 9, type: :bool, json_name: "noNamespaces", oneof: 0

  field :excluded_namespaces, 10,
    type: Google.Cloud.Gkebackup.V1.Namespaces,
    json_name: "excludedNamespaces",
    oneof: 0

  field :substitution_rules, 8,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.SubstitutionRule,
    json_name: "substitutionRules",
    deprecated: false

  field :transformation_rules, 11,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.TransformationRule,
    json_name: "transformationRules",
    deprecated: false

  field :volume_data_restore_policy_bindings, 12,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.VolumeDataRestorePolicyBinding,
    json_name: "volumeDataRestorePolicyBindings",
    deprecated: false

  field :restore_order, 13,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.RestoreOrder,
    json_name: "restoreOrder",
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.ResourceSelector.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.V1.ResourceSelector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :group_kind, 1,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.GroupKind,
    json_name: "groupKind",
    deprecated: false

  field :name, 2, type: :string, deprecated: false
  field :namespace, 3, type: :string, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.ResourceSelector.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.VolumeDataRestorePolicyOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :scope, 0

  field :policy, 1,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig.VolumeDataRestorePolicy,
    enum: true,
    deprecated: false

  field :selected_pvcs, 2,
    type: Google.Cloud.Gkebackup.V1.NamespacedNames,
    json_name: "selectedPvcs",
    oneof: 0
end