defmodule Google.Cloud.Aiplatform.V1beta1.Schema.AnnotationSpecColor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          color: Google.Type.Color.t() | nil,
          display_name: String.t(),
          id: String.t()
        }

  defstruct color: nil,
            display_name: "",
            id: ""

  field :color, 1, type: Google.Type.Color
  field :display_name, 2, type: :string, json_name: "displayName"
  field :id, 3, type: :string
end
