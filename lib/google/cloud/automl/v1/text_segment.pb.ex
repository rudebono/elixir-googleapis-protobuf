defmodule Google.Cloud.Automl.V1.TextSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :content, 3, type: :string
  field :start_offset, 1, type: :int64, json_name: "startOffset"
  field :end_offset, 2, type: :int64, json_name: "endOffset"
end
