defmodule Google.Actions.Sdk.V2.Version.VersionState.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATION_IN_PROGRESS
          | :CREATION_FAILED
          | :CREATED
          | :REVIEW_IN_PROGRESS
          | :APPROVED
          | :CONDITIONALLY_APPROVED
          | :DENIED
          | :UNDER_TAKEDOWN
          | :DELETED

  field :STATE_UNSPECIFIED, 0
  field :CREATION_IN_PROGRESS, 1
  field :CREATION_FAILED, 2
  field :CREATED, 3
  field :REVIEW_IN_PROGRESS, 4
  field :APPROVED, 5
  field :CONDITIONALLY_APPROVED, 6
  field :DENIED, 7
  field :UNDER_TAKEDOWN, 8
  field :DELETED, 9
end

defmodule Google.Actions.Sdk.V2.Version.VersionState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Actions.Sdk.V2.Version.VersionState.State.t(),
          message: String.t()
        }

  defstruct [:state, :message]

  field :state, 1, type: Google.Actions.Sdk.V2.Version.VersionState.State, enum: true
  field :message, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version_state: Google.Actions.Sdk.V2.Version.VersionState.t() | nil,
          creator: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :version_state, :creator, :update_time]

  field :name, 1, type: :string

  field :version_state, 2,
    type: Google.Actions.Sdk.V2.Version.VersionState,
    json_name: "versionState"

  field :creator, 3, type: :string
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end
