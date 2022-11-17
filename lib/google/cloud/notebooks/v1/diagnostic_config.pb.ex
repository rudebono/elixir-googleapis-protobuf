defmodule Google.Cloud.Notebooks.V1.DiagnosticConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcs_bucket, 1, type: :string, json_name: "gcsBucket", deprecated: false
  field :relative_path, 2, type: :string, json_name: "relativePath", deprecated: false
  field :repair_flag_enabled, 3, type: :bool, json_name: "repairFlagEnabled", deprecated: false

  field :packet_capture_flag_enabled, 4,
    type: :bool,
    json_name: "packetCaptureFlagEnabled",
    deprecated: false

  field :copy_home_files_flag_enabled, 5,
    type: :bool,
    json_name: "copyHomeFilesFlagEnabled",
    deprecated: false
end