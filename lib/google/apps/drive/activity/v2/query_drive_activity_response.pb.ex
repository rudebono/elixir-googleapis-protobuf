defmodule Google.Apps.Drive.Activity.V2.QueryDriveActivityResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :activities, 1, repeated: true, type: Google.Apps.Drive.Activity.V2.DriveActivity
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Drive.Activity.V2.DriveActivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :time, 0

  field :primary_action_detail, 2,
    type: Google.Apps.Drive.Activity.V2.ActionDetail,
    json_name: "primaryActionDetail"

  field :actors, 3, repeated: true, type: Google.Apps.Drive.Activity.V2.Actor
  field :actions, 4, repeated: true, type: Google.Apps.Drive.Activity.V2.Action
  field :targets, 5, repeated: true, type: Google.Apps.Drive.Activity.V2.Target
  field :timestamp, 6, type: Google.Protobuf.Timestamp, oneof: 0

  field :time_range, 7,
    type: Google.Apps.Drive.Activity.V2.TimeRange,
    json_name: "timeRange",
    oneof: 0
end
