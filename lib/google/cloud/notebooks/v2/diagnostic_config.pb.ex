defmodule Google.Cloud.Notebooks.V2.DiagnosticConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcs_bucket, 1, type: :string, json_name: "gcsBucket", deprecated: false
  field :relative_path, 2, type: :string, json_name: "relativePath", deprecated: false
  field :enable_repair_flag, 3, type: :bool, json_name: "enableRepairFlag", deprecated: false

  field :enable_packet_capture_flag, 4,
    type: :bool,
    json_name: "enablePacketCaptureFlag",
    deprecated: false

  field :enable_copy_home_files_flag, 5,
    type: :bool,
    json_name: "enableCopyHomeFilesFlag",
    deprecated: false
end