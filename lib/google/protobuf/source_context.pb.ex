defmodule Google.Protobuf.SourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_name, 1, type: :string, json_name: "fileName"
end
