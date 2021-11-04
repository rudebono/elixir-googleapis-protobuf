defmodule Google.Type.LocalizedText do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          language_code: String.t()
        }

  defstruct [:text, :language_code]

  field :text, 1, type: :string
  field :language_code, 2, type: :string, json_name: "languageCode"

  def transform_module(), do: nil
end
