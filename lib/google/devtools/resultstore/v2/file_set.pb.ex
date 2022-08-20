defmodule Google.Devtools.Resultstore.V2.FileSet.Id do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :invocation_id, 1, type: :string, json_name: "invocationId"
  field :file_set_id, 2, type: :string, json_name: "fileSetId"
end

defmodule Google.Devtools.Resultstore.V2.FileSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.FileSet.Id
  field :file_sets, 3, repeated: true, type: :string, json_name: "fileSets"
  field :files, 4, repeated: true, type: Google.Devtools.Resultstore.V2.File
end