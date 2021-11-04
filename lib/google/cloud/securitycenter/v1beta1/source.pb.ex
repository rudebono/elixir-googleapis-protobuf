defmodule Google.Cloud.Securitycenter.V1beta1.Source do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t()
        }

  defstruct [:name, :display_name, :description]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  def transform_module(), do: nil
end
