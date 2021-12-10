defmodule Google.Cloud.Securitycenter.V1p1beta1.Source do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          canonical_name: String.t()
        }

  defstruct name: "",
            display_name: "",
            description: "",
            canonical_name: ""

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :canonical_name, 14, type: :string, json_name: "canonicalName"
end
