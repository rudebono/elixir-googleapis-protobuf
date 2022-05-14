defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedRestore.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :IN_PROGRESS, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :DELETING, 5
end
defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedRestore.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedRestore do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :backup, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedRestore.LabelsEntry,
    map: true

  field :description, 3, type: :string
  field :state, 4, type: Google.Cloud.Gkebackup.Logging.V1.LoggedRestore.State, enum: true
  field :state_reason, 5, type: :string, json_name: "stateReason"
end
