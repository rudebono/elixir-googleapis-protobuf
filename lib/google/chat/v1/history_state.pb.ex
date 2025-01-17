defmodule Google.Chat.V1.HistoryState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :HISTORY_STATE_UNSPECIFIED, 0
  field :HISTORY_OFF, 1
  field :HISTORY_ON, 2
end
