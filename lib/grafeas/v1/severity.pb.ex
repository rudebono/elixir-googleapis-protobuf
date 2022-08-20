defmodule Grafeas.V1.Severity do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :MINIMAL, 1
  field :LOW, 2
  field :MEDIUM, 3
  field :HIGH, 4
  field :CRITICAL, 5
end