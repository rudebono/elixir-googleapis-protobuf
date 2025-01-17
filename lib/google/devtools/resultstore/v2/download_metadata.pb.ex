defmodule Google.Devtools.Resultstore.V2.DownloadMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :upload_status, 2,
    type: Google.Devtools.Resultstore.V2.UploadStatus,
    json_name: "uploadStatus",
    enum: true

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :finalize_time, 4, type: Google.Protobuf.Timestamp, json_name: "finalizeTime"
  field :immutable_time, 5, type: Google.Protobuf.Timestamp, json_name: "immutableTime"
end
