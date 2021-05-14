defmodule Google.Apps.Drive.Activity.V2.QueryDriveActivityResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          activities: [Google.Apps.Drive.Activity.V2.DriveActivity.t()],
          next_page_token: String.t()
        }

  defstruct [:activities, :next_page_token]

  field :activities, 1, repeated: true, type: Google.Apps.Drive.Activity.V2.DriveActivity
  field :next_page_token, 2, type: :string
end

defmodule Google.Apps.Drive.Activity.V2.DriveActivity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: {atom, any},
          primary_action_detail: Google.Apps.Drive.Activity.V2.ActionDetail.t() | nil,
          actors: [Google.Apps.Drive.Activity.V2.Actor.t()],
          actions: [Google.Apps.Drive.Activity.V2.Action.t()],
          targets: [Google.Apps.Drive.Activity.V2.Target.t()]
        }

  defstruct [:time, :primary_action_detail, :actors, :actions, :targets]

  oneof :time, 0
  field :primary_action_detail, 2, type: Google.Apps.Drive.Activity.V2.ActionDetail
  field :actors, 3, repeated: true, type: Google.Apps.Drive.Activity.V2.Actor
  field :actions, 4, repeated: true, type: Google.Apps.Drive.Activity.V2.Action
  field :targets, 5, repeated: true, type: Google.Apps.Drive.Activity.V2.Target
  field :timestamp, 6, type: Google.Protobuf.Timestamp, oneof: 0
  field :time_range, 7, type: Google.Apps.Drive.Activity.V2.TimeRange, oneof: 0
end
