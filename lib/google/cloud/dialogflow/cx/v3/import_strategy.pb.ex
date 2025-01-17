defmodule Google.Cloud.Dialogflow.Cx.V3.ImportStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :IMPORT_STRATEGY_UNSPECIFIED, 0
  field :IMPORT_STRATEGY_CREATE_NEW, 1
  field :IMPORT_STRATEGY_REPLACE, 2
  field :IMPORT_STRATEGY_KEEP, 3
  field :IMPORT_STRATEGY_MERGE, 4
  field :IMPORT_STRATEGY_THROW_ERROR, 5
end
