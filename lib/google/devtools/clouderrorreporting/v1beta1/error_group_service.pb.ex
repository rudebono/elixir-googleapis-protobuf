defmodule Google.Devtools.Clouderrorreporting.V1beta1.GetGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_name: String.t()
        }

  defstruct [:group_name]

  field :group_name, 1, type: :string
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.UpdateGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup.t() | nil
        }

  defstruct [:group]

  field :group, 1, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup
end
