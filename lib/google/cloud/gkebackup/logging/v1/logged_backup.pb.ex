defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :IN_PROGRESS, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :DELETING, 5
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackup.LabelsEntry,
    map: true

  field :delete_lock_days, 2, type: :int32, json_name: "deleteLockDays"
  field :retain_days, 3, type: :int32, json_name: "retainDays"
  field :description, 4, type: :string
  field :state, 5, type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackup.State, enum: true
  field :state_reason, 6, type: :string, json_name: "stateReason"
end
