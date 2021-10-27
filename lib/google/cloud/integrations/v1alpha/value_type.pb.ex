defmodule Google.Cloud.Integrations.V1alpha.ValueType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any}
        }

  defstruct [:value]

  oneof :value, 0
  field :string_value, 1, type: :string, oneof: 0
  field :int_value, 2, type: :int64, oneof: 0
  field :double_value, 3, type: :double, oneof: 0
  field :boolean_value, 4, type: :bool, oneof: 0
  field :string_array, 5, type: Google.Cloud.Integrations.V1alpha.StringParameterArray, oneof: 0
  field :int_array, 6, type: Google.Cloud.Integrations.V1alpha.IntParameterArray, oneof: 0
  field :double_array, 7, type: Google.Cloud.Integrations.V1alpha.DoubleParameterArray, oneof: 0
  field :boolean_array, 8, type: Google.Cloud.Integrations.V1alpha.BooleanParameterArray, oneof: 0
  field :json_value, 9, type: :string, oneof: 0
end

defmodule Google.Cloud.Integrations.V1alpha.StringParameterArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          string_values: [String.t()]
        }

  defstruct [:string_values]

  field :string_values, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Integrations.V1alpha.IntParameterArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          int_values: [integer]
        }

  defstruct [:int_values]

  field :int_values, 1, repeated: true, type: :int64
end

defmodule Google.Cloud.Integrations.V1alpha.DoubleParameterArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          double_values: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:double_values]

  field :double_values, 1, repeated: true, type: :double
end

defmodule Google.Cloud.Integrations.V1alpha.BooleanParameterArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          boolean_values: [boolean]
        }

  defstruct [:boolean_values]

  field :boolean_values, 1, repeated: true, type: :bool
end
