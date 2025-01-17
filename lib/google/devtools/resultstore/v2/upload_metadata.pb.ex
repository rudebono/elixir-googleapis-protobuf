defmodule Google.Devtools.Resultstore.V2.UploadMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :resume_token, 2, type: :string, json_name: "resumeToken"
  field :uploader_state, 3, type: :bytes, json_name: "uploaderState"
end
