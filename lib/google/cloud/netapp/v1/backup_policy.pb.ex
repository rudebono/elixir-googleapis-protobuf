defmodule Google.Cloud.Netapp.V1.BackupPolicy.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :DELETING, 3
  field :ERROR, 4
  field :UPDATING, 5
end

defmodule Google.Cloud.Netapp.V1.BackupPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Netapp.V1.BackupPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :daily_backup_limit, 2, proto3_optional: true, type: :int32, json_name: "dailyBackupLimit"

  field :weekly_backup_limit, 3,
    proto3_optional: true,
    type: :int32,
    json_name: "weeklyBackupLimit"

  field :monthly_backup_limit, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "monthlyBackupLimit"

  field :description, 5, proto3_optional: true, type: :string
  field :enabled, 6, proto3_optional: true, type: :bool

  field :assigned_volume_count, 7,
    proto3_optional: true,
    type: :int32,
    json_name: "assignedVolumeCount",
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Netapp.V1.BackupPolicy.LabelsEntry,
    map: true

  field :state, 10, type: Google.Cloud.Netapp.V1.BackupPolicy.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.CreateBackupPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :backup_policy, 2,
    type: Google.Cloud.Netapp.V1.BackupPolicy,
    json_name: "backupPolicy",
    deprecated: false

  field :backup_policy_id, 3, type: :string, json_name: "backupPolicyId", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.GetBackupPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ListBackupPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Netapp.V1.ListBackupPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backup_policies, 1,
    repeated: true,
    type: Google.Cloud.Netapp.V1.BackupPolicy,
    json_name: "backupPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Netapp.V1.UpdateBackupPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :backup_policy, 2,
    type: Google.Cloud.Netapp.V1.BackupPolicy,
    json_name: "backupPolicy",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.DeleteBackupPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
