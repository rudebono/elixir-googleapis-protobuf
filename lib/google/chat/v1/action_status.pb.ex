defmodule Google.Chat.V1.ActionStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :status_code, 1, type: Google.Rpc.Code, json_name: "statusCode", enum: true
  field :user_facing_message, 2, type: :string, json_name: "userFacingMessage"
end
