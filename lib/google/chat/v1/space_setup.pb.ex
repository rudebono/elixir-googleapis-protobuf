defmodule Google.Chat.V1.SetUpSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :space, 1, type: Google.Chat.V1.Space, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :memberships, 4, repeated: true, type: Google.Chat.V1.Membership, deprecated: false
end
