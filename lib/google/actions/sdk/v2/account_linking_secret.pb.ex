defmodule Google.Actions.Sdk.V2.AccountLinkingSecret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :encrypted_client_secret, 1, type: :bytes, json_name: "encryptedClientSecret"
  field :encryption_key_version, 2, type: :string, json_name: "encryptionKeyVersion"
end
