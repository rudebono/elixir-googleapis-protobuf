defmodule Google.Cloud.Securitycenter.V1beta1.SecurityMarks.MarksEntry do
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

defmodule Google.Cloud.Securitycenter.V1beta1.SecurityMarks do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          marks: %{String.t() => String.t()}
        }

  defstruct [:name, :marks]

  field :name, 1, type: :string

  field :marks, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.SecurityMarks.MarksEntry,
    map: true

  def transform_module(), do: nil
end
