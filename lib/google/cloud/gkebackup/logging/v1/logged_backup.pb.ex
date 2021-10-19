defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackup.State do
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

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackup.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedBackup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          labels: %{String.t() => String.t()},
          delete_lock_days: integer,
          retain_days: integer,
          description: String.t(),
          state: Google.Cloud.Gkebackup.Logging.V1.LoggedBackup.State.t(),
          state_reason: String.t()
        }

  defstruct [:labels, :delete_lock_days, :retain_days, :description, :state, :state_reason]

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackup.LabelsEntry,
    map: true

  field :delete_lock_days, 2, type: :int32
  field :retain_days, 3, type: :int32
  field :description, 4, type: :string
  field :state, 5, type: Google.Cloud.Gkebackup.Logging.V1.LoggedBackup.State, enum: true
  field :state_reason, 6, type: :string
end
