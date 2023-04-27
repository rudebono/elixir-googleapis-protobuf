defmodule Google.Devtools.Resultstore.V2.DownloadMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :upload_status, 2,
    type: Google.Devtools.Resultstore.V2.UploadStatus,
    json_name: "uploadStatus",
    enum: true
end