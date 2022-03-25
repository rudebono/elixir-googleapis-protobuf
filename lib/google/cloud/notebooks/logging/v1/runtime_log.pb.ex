defmodule Google.Cloud.Notebooks.Logging.V1.RuntimeEvent.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EVENT_TYPE_UNSPECIFIED | :RUNTIME_STATE_CHANGE_EVENT

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :RUNTIME_STATE_CHANGE_EVENT, 1
end
defmodule Google.Cloud.Notebooks.Logging.V1.RuntimeEvent.DetailsEntry do
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
defmodule Google.Cloud.Notebooks.Logging.V1.RuntimeEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Notebooks.Logging.V1.RuntimeEvent.EventType.t(),
          details: %{String.t() => String.t()}
        }

  defstruct type: :EVENT_TYPE_UNSPECIFIED,
            details: %{}

  field :type, 1,
    type: Google.Cloud.Notebooks.Logging.V1.RuntimeEvent.EventType,
    enum: true,
    deprecated: false

  field :details, 2,
    repeated: true,
    type: Google.Cloud.Notebooks.Logging.V1.RuntimeEvent.DetailsEntry,
    map: true,
    deprecated: false
end
