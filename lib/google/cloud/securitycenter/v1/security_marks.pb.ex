defmodule Google.Cloud.Securitycenter.V1.SecurityMarks.MarksEntry do
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

defmodule Google.Cloud.Securitycenter.V1.SecurityMarks do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          marks: %{String.t() => String.t()},
          canonical_name: String.t()
        }

  defstruct [:name, :marks, :canonical_name]

  field :name, 1, type: :string

  field :marks, 2,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1.SecurityMarks.MarksEntry,
    map: true

  field :canonical_name, 3, type: :string, json_name: "canonicalName"

  def transform_module(), do: nil
end
