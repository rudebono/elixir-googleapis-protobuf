defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.VolumeDataRestorePolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED, 0
  field :RESTORE_VOLUME_DATA_FROM_BACKUP, 1
  field :REUSE_VOLUME_HANDLE_FROM_BACKUP, 2
  field :NO_VOLUME_DATA_RESTORATION, 3
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.ClusterResourceConflictPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED, 0
  field :USE_EXISTING_VERSION, 1
  field :USE_BACKUP_VERSION, 2
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.NamespacedResourceRestoreMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED, 0
  field :DELETE_AND_RESTORE, 1
  field :FAIL_ON_CONFLICT, 2
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedRestorePlan.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedRestorePlan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.GroupKind do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_group, 1, type: :string, json_name: "resourceGroup"
  field :resource_kind, 2, type: :string, json_name: "resourceKind"
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.ClusterResourceRestoreScope do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :selected_group_kinds, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.GroupKind,
    json_name: "selectedGroupKinds"
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.SubstitutionRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :target_namespaces, 1, repeated: true, type: :string, json_name: "targetNamespaces"

  field :target_group_kinds, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.GroupKind,
    json_name: "targetGroupKinds"

  field :target_json_path, 3, type: :string, json_name: "targetJsonPath"
  field :original_value_pattern, 4, type: :string, json_name: "originalValuePattern"
  field :new_value, 5, type: :string, json_name: "newValue"
end

defmodule Google.Cloud.Gkebackup.Logging.V1.RestoreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :namespaced_resource_restore_scope, 0

  field :volume_data_restore_policy, 1,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.VolumeDataRestorePolicy,
    json_name: "volumeDataRestorePolicy",
    enum: true

  field :cluster_resource_conflict_policy, 2,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.ClusterResourceConflictPolicy,
    json_name: "clusterResourceConflictPolicy",
    enum: true

  field :namespaced_resource_restore_mode, 3,
    type: Google.Cloud.Gkebackup.Logging.V1.RestoreConfig.NamespacedResourceRestoreMode,
    json_name: "namespacedResourceRestoreMode",
    enum: true

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
end
