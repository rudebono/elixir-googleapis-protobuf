defmodule Google.Cloud.Aiplatform.V1.BoolArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [boolean]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.DoubleArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :double

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.Int64Array do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [integer]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.StringArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :string

  def transform_module(), do: nil
end
