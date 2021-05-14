defmodule Google.Cloud.Talent.V4beta1.CreateClientEventRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          client_event: Google.Cloud.Talent.V4beta1.ClientEvent.t() | nil
        }

  defstruct [:parent, :client_event]

  field :parent, 1, type: :string
  field :client_event, 2, type: Google.Cloud.Talent.V4beta1.ClientEvent
end
