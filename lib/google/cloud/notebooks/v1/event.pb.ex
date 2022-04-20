defmodule Google.Cloud.Notebooks.V1.Event.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EVENT_TYPE_UNSPECIFIED | :IDLE | :HEARTBEAT | :HEALTH | :MAINTENANCE

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :IDLE, 1
  field :HEARTBEAT, 2
  field :HEALTH, 3
  field :MAINTENANCE, 4
end
defmodule Google.Cloud.Notebooks.V1.Event.DetailsEntry do
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
defmodule Google.Cloud.Notebooks.V1.Event do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          report_time: Google.Protobuf.Timestamp.t() | nil,
          type: Google.Cloud.Notebooks.V1.Event.EventType.t(),
          details: %{String.t() => String.t()}
        }

  defstruct report_time: nil,
            type: :EVENT_TYPE_UNSPECIFIED,
            details: %{}

  field :report_time, 1, type: Google.Protobuf.Timestamp, json_name: "reportTime"
  field :type, 2, type: Google.Cloud.Notebooks.V1.Event.EventType, enum: true

  field :details, 3,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Event.DetailsEntry,
    map: true,
    deprecated: false
end
