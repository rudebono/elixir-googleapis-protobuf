defmodule Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_type: {atom, any},
          name: String.t()
        }

  defstruct [:parameter_type, :name]

  oneof :parameter_type, 0
  field :name, 1, type: :string
  field :type, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Type.ClassReference, oneof: 0
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Intent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: [Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.t()],
          training_phrases: [String.t()]
        }

  defstruct [:parameters, :training_phrases]

  field :parameters, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter

  field :training_phrases, 2, repeated: true, type: :string
end
