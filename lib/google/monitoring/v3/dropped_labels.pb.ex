defmodule Google.Monitoring.V3.DroppedLabels.LabelEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.DroppedLabels do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          label: %{String.t() => String.t()}
        }

  defstruct [:label]

  field :label, 1, repeated: true, type: Google.Monitoring.V3.DroppedLabels.LabelEntry, map: true

  def transform_module(), do: nil
end
