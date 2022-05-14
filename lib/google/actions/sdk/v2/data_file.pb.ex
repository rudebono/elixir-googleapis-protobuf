defmodule Google.Actions.Sdk.V2.DataFiles do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :data_files, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.DataFile,
    json_name: "dataFiles"
end
defmodule Google.Actions.Sdk.V2.DataFile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :file_path, 1, type: :string, json_name: "filePath"
  field :content_type, 2, type: :string, json_name: "contentType"
  field :payload, 3, type: :bytes
end
