defmodule Google.Logging.Type.LogSeverity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DEFAULT, 0
  field :DEBUG, 100
  field :INFO, 200
  field :NOTICE, 300
  field :WARNING, 400
  field :ERROR, 500
  field :CRITICAL, 600
  field :ALERT, 700
  field :EMERGENCY, 800
end