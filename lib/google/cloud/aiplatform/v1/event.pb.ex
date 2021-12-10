defmodule Google.Cloud.Aiplatform.V1.Event.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TYPE_UNSPECIFIED | :INPUT | :OUTPUT

  field :TYPE_UNSPECIFIED, 0
  field :INPUT, 1
  field :OUTPUT, 2
end
defmodule Google.Cloud.Aiplatform.V1.Event.LabelsEntry do
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
defmodule Google.Cloud.Aiplatform.V1.Event do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact: String.t(),
          execution: String.t(),
          event_time: Google.Protobuf.Timestamp.t() | nil,
          type: Google.Cloud.Aiplatform.V1.Event.Type.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct artifact: "",
            execution: "",
            event_time: nil,
            type: :TYPE_UNSPECIFIED,
            labels: %{}

  field :artifact, 1, type: :string, deprecated: false
  field :execution, 2, type: :string, deprecated: false
  field :event_time, 3, type: Google.Protobuf.Timestamp, json_name: "eventTime", deprecated: false
  field :type, 4, type: Google.Cloud.Aiplatform.V1.Event.Type, enum: true, deprecated: false
  field :labels, 5, repeated: true, type: Google.Cloud.Aiplatform.V1.Event.LabelsEntry, map: true
end
