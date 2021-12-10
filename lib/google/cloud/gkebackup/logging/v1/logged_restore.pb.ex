defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedRestore.State do
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
defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedRestore.LabelsEntry do
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
defmodule Google.Cloud.Gkebackup.Logging.V1.LoggedRestore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backup: String.t(),
          labels: %{String.t() => String.t()},
          description: String.t(),
          state: Google.Cloud.Gkebackup.Logging.V1.LoggedRestore.State.t(),
          state_reason: String.t()
        }

  defstruct backup: "",
            labels: %{},
            description: "",
            state: :STATE_UNSPECIFIED,
            state_reason: ""

  field :backup, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.LoggedRestore.LabelsEntry,
    map: true

  field :description, 3, type: :string
  field :state, 4, type: Google.Cloud.Gkebackup.Logging.V1.LoggedRestore.State, enum: true
  field :state_reason, 5, type: :string, json_name: "stateReason"
end
