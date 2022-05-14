defmodule Google.Cloud.Gkebackup.V1.Backup.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :IN_PROGRESS, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :DELETING, 5
end
defmodule Google.Cloud.Gkebackup.V1.Backup.ClusterMetadata.BackupCrdVersionsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Gkebackup.V1.Backup.ClusterMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :platform_version, 0

  field :cluster, 1, type: :string
  field :k8s_version, 2, type: :string, json_name: "k8sVersion"

  field :backup_crd_versions, 3,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.Backup.ClusterMetadata.BackupCrdVersionsEntry,
    json_name: "backupCrdVersions",
    map: true

  field :gke_version, 4, type: :string, json_name: "gkeVersion", oneof: 0
  field :anthos_version, 5, type: :string, json_name: "anthosVersion", oneof: 0
end
defmodule Google.Cloud.Gkebackup.V1.Backup.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Gkebackup.V1.Backup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :backup_scope, 0

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

  field :manual, 5, type: :bool, deprecated: false
  field :labels, 6, repeated: true, type: Google.Cloud.Gkebackup.V1.Backup.LabelsEntry, map: true
  field :delete_lock_days, 7, type: :int32, json_name: "deleteLockDays"

  field :delete_lock_expire_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteLockExpireTime",
    deprecated: false

  field :retain_days, 9, type: :int32, json_name: "retainDays"

  field :retain_expire_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "retainExpireTime",
    deprecated: false

  field :encryption_key, 11,
    type: Google.Cloud.Gkebackup.V1.EncryptionKey,
    json_name: "encryptionKey",
    deprecated: false

  field :all_namespaces, 12, type: :bool, json_name: "allNamespaces", oneof: 0, deprecated: false

  field :selected_namespaces, 13,
    type: Google.Cloud.Gkebackup.V1.Namespaces,
    json_name: "selectedNamespaces",
    oneof: 0,
    deprecated: false

  field :selected_applications, 14,
    type: Google.Cloud.Gkebackup.V1.NamespacedNames,
    json_name: "selectedApplications",
    oneof: 0,
    deprecated: false

  field :contains_volume_data, 15, type: :bool, json_name: "containsVolumeData", deprecated: false
  field :contains_secrets, 16, type: :bool, json_name: "containsSecrets", deprecated: false

  field :cluster_metadata, 17,
    type: Google.Cloud.Gkebackup.V1.Backup.ClusterMetadata,
    json_name: "clusterMetadata",
    deprecated: false

  field :state, 18, type: Google.Cloud.Gkebackup.V1.Backup.State, enum: true, deprecated: false
  field :state_reason, 19, type: :string, json_name: "stateReason", deprecated: false

  field :complete_time, 20,
    type: Google.Protobuf.Timestamp,
    json_name: "completeTime",
    deprecated: false

  field :resource_count, 21, type: :int32, json_name: "resourceCount", deprecated: false
  field :volume_count, 22, type: :int32, json_name: "volumeCount", deprecated: false
  field :size_bytes, 23, type: :int64, json_name: "sizeBytes", deprecated: false
  field :etag, 24, type: :string, deprecated: false
  field :description, 25, type: :string
  field :pod_count, 26, type: :int32, json_name: "podCount", deprecated: false

  field :config_backup_size_bytes, 27,
    type: :int64,
    json_name: "configBackupSizeBytes",
    deprecated: false
end
