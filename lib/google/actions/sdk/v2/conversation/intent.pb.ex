defmodule Google.Actions.Sdk.V2.Conversation.Intent.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Actions.Sdk.V2.Conversation.IntentParameterValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Conversation.IntentParameterValue

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Conversation.Intent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          params: %{
            String.t() => Google.Actions.Sdk.V2.Conversation.IntentParameterValue.t() | nil
          },
          query: String.t()
        }

  defstruct [:name, :params, :query]

  field :name, 1, type: :string

  field :params, 2,
    repeated: true,
    type: Google.Actions.Sdk.V2.Conversation.Intent.ParamsEntry,
    map: true

  field :query, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Actions.Sdk.V2.Conversation.IntentParameterValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          original: String.t(),
          resolved: Google.Protobuf.Value.t() | nil
        }

  defstruct [:original, :resolved]

  field :original, 1, type: :string
  field :resolved, 2, type: Google.Protobuf.Value

  def transform_module(), do: nil
end
