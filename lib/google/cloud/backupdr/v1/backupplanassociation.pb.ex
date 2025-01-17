defmodule Google.Cloud.Backupdr.V1.BackupPlanAssociation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :INACTIVE, 4
end

defmodule Google.Cloud.Backupdr.V1.RuleConfigInfo.LastBackupState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :LAST_BACKUP_STATE_UNSPECIFIED, 0
  field :FIRST_BACKUP_PENDING, 1
  field :PERMISSION_DENIED, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Backupdr.V1.BackupPlanAssociation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :resource_type, 2, type: :string, json_name: "resourceType", deprecated: false
  field :resource, 3, type: :string, deprecated: false
  field :backup_plan, 4, type: :string, json_name: "backupPlan", deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Backupdr.V1.BackupPlanAssociation.State,
    enum: true,
    deprecated: false

  field :rules_config_info, 8,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.RuleConfigInfo,
    json_name: "rulesConfigInfo",
    deprecated: false

  field :data_source, 9, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.RuleConfigInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rule_id, 1, type: :string, json_name: "ruleId", deprecated: false

  field :last_backup_state, 3,
    type: Google.Cloud.Backupdr.V1.RuleConfigInfo.LastBackupState,
    json_name: "lastBackupState",
    enum: true,
    deprecated: false

  field :last_backup_error, 4,
    type: Google.Rpc.Status,
    json_name: "lastBackupError",
    deprecated: false

  field :last_successful_backup_consistency_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "lastSuccessfulBackupConsistencyTime",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.CreateBackupPlanAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :backup_plan_association_id, 2,
    type: :string,
    json_name: "backupPlanAssociationId",
    deprecated: false

  field :backup_plan_association, 3,
    type: Google.Cloud.Backupdr.V1.BackupPlanAssociation,
    json_name: "backupPlanAssociation",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListBackupPlanAssociationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListBackupPlanAssociationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :backup_plan_associations, 1,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupPlanAssociation,
    json_name: "backupPlanAssociations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Backupdr.V1.GetBackupPlanAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DeleteBackupPlanAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.TriggerBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :rule_id, 2, type: :string, json_name: "ruleId", deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end
