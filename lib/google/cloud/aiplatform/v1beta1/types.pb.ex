defmodule Google.Cloud.Aiplatform.V1beta1.BoolArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [boolean]
        }

  defstruct values: []

  field :values, 1, repeated: true, type: :bool
end
defmodule Google.Cloud.Aiplatform.V1beta1.DoubleArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct values: []

  field :values, 1, repeated: true, type: :double
end
defmodule Google.Cloud.Aiplatform.V1beta1.Int64Array do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [integer]
        }

  defstruct values: []

  field :values, 1, repeated: true, type: :int64
end
defmodule Google.Cloud.Aiplatform.V1beta1.StringArray do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()]
        }

  defstruct values: []

  field :values, 1, repeated: true, type: :string
end
