defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.EntityDisplay do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          icon_title: String.t(),
          icon_url: String.t()
        }

  defstruct icon_title: "",
            icon_url: ""

  field :icon_title, 1, type: :string, json_name: "iconTitle", deprecated: false
  field :icon_url, 2, type: :string, json_name: "iconUrl", deprecated: false
end
