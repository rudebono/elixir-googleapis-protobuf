defmodule Google.Api.Servicecontrol.V1.MetricValue.LabelsEntry do
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

defmodule Google.Api.Servicecontrol.V1.MetricValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any},
          labels: %{String.t() => String.t()},
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:value, :labels, :start_time, :end_time]

  oneof :value, 0

  field :labels, 1,
    repeated: true,
    type: Google.Api.Servicecontrol.V1.MetricValue.LabelsEntry,
    map: true

  field :start_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
  field :bool_value, 4, type: :bool, oneof: 0
  field :int64_value, 5, type: :int64, oneof: 0
  field :double_value, 6, type: :double, oneof: 0
  field :string_value, 7, type: :string, oneof: 0
  field :distribution_value, 8, type: Google.Api.Servicecontrol.V1.Distribution, oneof: 0
end

defmodule Google.Api.Servicecontrol.V1.MetricValueSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_name: String.t(),
          metric_values: [Google.Api.Servicecontrol.V1.MetricValue.t()]
        }

  defstruct [:metric_name, :metric_values]

  field :metric_name, 1, type: :string
  field :metric_values, 2, repeated: true, type: Google.Api.Servicecontrol.V1.MetricValue
end
