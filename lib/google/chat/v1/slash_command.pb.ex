defmodule Google.Chat.V1.SlashCommand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :command_id, 1, type: :int64, json_name: "commandId"
end