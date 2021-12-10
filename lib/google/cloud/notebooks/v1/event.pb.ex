defmodule Google.Cloud.Notebooks.V1.Event.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EVENT_TYPE_UNSPECIFIED | :IDLE

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :IDLE, 1
end
defmodule Google.Cloud.Notebooks.V1.Event do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          report_time: Google.Protobuf.Timestamp.t() | nil,
          type: Google.Cloud.Notebooks.V1.Event.EventType.t()
        }

  defstruct report_time: nil,
            type: :EVENT_TYPE_UNSPECIFIED

  field :report_time, 1, type: Google.Protobuf.Timestamp, json_name: "reportTime"
  field :type, 2, type: Google.Cloud.Notebooks.V1.Event.EventType, enum: true
end
