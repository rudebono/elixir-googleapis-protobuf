defmodule Google.Devtools.Resultstore.V2.DownloadMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          upload_status: Google.Devtools.Resultstore.V2.UploadStatus.t()
        }

  defstruct [:name, :upload_status]

  field :name, 1, type: :string
  field :upload_status, 2, type: Google.Devtools.Resultstore.V2.UploadStatus, enum: true
end
