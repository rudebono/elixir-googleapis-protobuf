defmodule Google.Cloud.Video.Stitcher.V1.Slate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uri: String.t()
        }

  defstruct name: "",
            uri: ""

  field :name, 1, type: :string, deprecated: false
  field :uri, 2, type: :string
end
