defmodule Google.Api.SourceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :source_files, 1, repeated: true, type: Google.Protobuf.Any, json_name: "sourceFiles"
end
