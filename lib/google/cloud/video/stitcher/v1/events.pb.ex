defmodule Google.Cloud.Video.Stitcher.V1.Event.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :CREATIVE_VIEW, 1
  field :START, 2
  field :BREAK_START, 3
  field :BREAK_END, 4
  field :IMPRESSION, 5
  field :FIRST_QUARTILE, 6
  field :MIDPOINT, 7
  field :THIRD_QUARTILE, 8
  field :COMPLETE, 9
  field :PROGRESS, 10
  field :MUTE, 11
  field :UNMUTE, 12
  field :PAUSE, 13
  field :CLICK, 14
  field :CLICK_THROUGH, 15
  field :REWIND, 16
  field :RESUME, 17
  field :ERROR, 18
  field :EXPAND, 21
  field :COLLAPSE, 22
  field :CLOSE, 24
  field :CLOSE_LINEAR, 25
  field :SKIP, 26
  field :ACCEPT_INVITATION, 27
end

defmodule Google.Cloud.Video.Stitcher.V1.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Google.Cloud.Video.Stitcher.V1.Event.EventType, enum: true
  field :uri, 2, type: :string
  field :id, 3, type: :string
  field :offset, 4, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Video.Stitcher.V1.ProgressEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time_offset, 1, type: Google.Protobuf.Duration, json_name: "timeOffset"
  field :events, 2, repeated: true, type: Google.Cloud.Video.Stitcher.V1.Event
end
