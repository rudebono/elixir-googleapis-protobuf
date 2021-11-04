defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.Type do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sub_type:
            {:synonym, Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.t() | nil}
            | {:regular_expression,
               Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.t() | nil}
            | {:free_text, Google.Actions.Sdk.V2.Interactionmodel.Type.FreeTextType.t() | nil},
          exclusions: [String.t()]
        }

  defstruct [:sub_type, :exclusions]

  oneof :sub_type, 0

  field :synonym, 1, type: Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType, oneof: 0

  field :regular_expression, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType,
    json_name: "regularExpression",
    oneof: 0

  field :free_text, 3,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.FreeTextType,
    json_name: "freeText",
    oneof: 0

  field :exclusions, 4, repeated: true, type: :string

  def transform_module(), do: nil
end
