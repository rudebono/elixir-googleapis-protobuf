defmodule Google.Actions.Sdk.V2.Interactionmodel.EntitySet.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }

  defstruct [:id]

  field :id, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.EntitySet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entities: [Google.Actions.Sdk.V2.Interactionmodel.EntitySet.Entity.t()]
        }

  defstruct [:entities]

  field :entities, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.EntitySet.Entity

  def transform_module(), do: nil
end
