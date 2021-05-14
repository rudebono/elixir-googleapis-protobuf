defmodule Google.Devtools.Resultstore.V2.UploadMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          resume_token: String.t(),
          uploader_state: binary
        }

  defstruct [:name, :resume_token, :uploader_state]

  field :name, 1, type: :string
  field :resume_token, 2, type: :string
  field :uploader_state, 3, type: :bytes
end
