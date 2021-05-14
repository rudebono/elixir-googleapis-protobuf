defmodule Google.Appengine.Legacy.AuditData.EventDataEntry do
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

defmodule Google.Appengine.Legacy.AuditData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_message: String.t(),
          event_data: %{String.t() => String.t()}
        }

  defstruct [:event_message, :event_data]

  field :event_message, 1, type: :string

  field :event_data, 2,
    repeated: true,
    type: Google.Appengine.Legacy.AuditData.EventDataEntry,
    map: true
end
