defmodule Google.Actions.Sdk.V2.Files do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :file_type, 0

  field :config_files, 1,
    type: Google.Actions.Sdk.V2.ConfigFiles,
    json_name: "configFiles",
    oneof: 0

  field :data_files, 2, type: Google.Actions.Sdk.V2.DataFiles, json_name: "dataFiles", oneof: 0
end
