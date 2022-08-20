defmodule Google.Monitoring.V3.SpanContext do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :span_name, 1, type: :string, json_name: "spanName"
end