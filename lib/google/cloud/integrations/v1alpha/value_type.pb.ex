defmodule Google.Cloud.Integrations.V1alpha.ValueType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value:
            {:string_value, String.t()}
            | {:int_value, integer}
            | {:double_value, float | :infinity | :negative_infinity | :nan}
            | {:boolean_value, boolean}
            | {:string_array, Google.Cloud.Integrations.V1alpha.StringParameterArray.t() | nil}
            | {:int_array, Google.Cloud.Integrations.V1alpha.IntParameterArray.t() | nil}
            | {:double_array, Google.Cloud.Integrations.V1alpha.DoubleParameterArray.t() | nil}
            | {:boolean_array, Google.Cloud.Integrations.V1alpha.BooleanParameterArray.t() | nil}
            | {:json_value, String.t()}
        }

  defstruct [:value]

  oneof :value, 0

  field :string_value, 1, type: :string, json_name: "stringValue", oneof: 0
  field :int_value, 2, type: :int64, json_name: "intValue", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0
  field :boolean_value, 4, type: :bool, json_name: "booleanValue", oneof: 0

  field :string_array, 5,
    type: Google.Cloud.Integrations.V1alpha.StringParameterArray,
    json_name: "stringArray",
    oneof: 0

  field :int_array, 6,
    type: Google.Cloud.Integrations.V1alpha.IntParameterArray,
    json_name: "intArray",
    oneof: 0

  field :double_array, 7,
    type: Google.Cloud.Integrations.V1alpha.DoubleParameterArray,
    json_name: "doubleArray",
    oneof: 0

  field :boolean_array, 8,
    type: Google.Cloud.Integrations.V1alpha.BooleanParameterArray,
    json_name: "booleanArray",
    oneof: 0

  field :json_value, 9, type: :string, json_name: "jsonValue", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Integrations.V1alpha.StringParameterArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          string_values: [String.t()]
        }

  defstruct [:string_values]

  field :string_values, 1, repeated: true, type: :string, json_name: "stringValues"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Integrations.V1alpha.IntParameterArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          int_values: [integer]
        }

  defstruct [:int_values]

  field :int_values, 1, repeated: true, type: :int64, json_name: "intValues"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Integrations.V1alpha.DoubleParameterArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          double_values: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:double_values]

  field :double_values, 1, repeated: true, type: :double, json_name: "doubleValues"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Integrations.V1alpha.BooleanParameterArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          boolean_values: [boolean]
        }

  defstruct [:boolean_values]

  field :boolean_values, 1, repeated: true, type: :bool, json_name: "booleanValues"

  def transform_module(), do: nil
end
