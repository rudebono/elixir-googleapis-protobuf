defmodule Google.Appengine.V1.AuthorizedDomain do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t()
        }

  defstruct name: "",
            id: ""

  field :name, 1, type: :string
  field :id, 2, type: :string
end
