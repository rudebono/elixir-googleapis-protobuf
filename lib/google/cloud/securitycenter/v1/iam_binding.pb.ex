defmodule Google.Cloud.Securitycenter.V1.IamBinding.Action do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ACTION_UNSPECIFIED | :ADD | :REMOVE

  field :ACTION_UNSPECIFIED, 0
  field :ADD, 1
  field :REMOVE, 2
end
defmodule Google.Cloud.Securitycenter.V1.IamBinding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          action: Google.Cloud.Securitycenter.V1.IamBinding.Action.t(),
          role: String.t(),
          member: String.t()
        }

  defstruct action: :ACTION_UNSPECIFIED,
            role: "",
            member: ""

  field :action, 1, type: Google.Cloud.Securitycenter.V1.IamBinding.Action, enum: true
  field :role, 2, type: :string
  field :member, 3, type: :string
end
