defmodule Google.Actions.Sdk.V2.AccountLinkingSecret do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          encrypted_client_secret: binary,
          encryption_key_version: String.t()
        }

  defstruct encrypted_client_secret: "",
            encryption_key_version: ""

  field :encrypted_client_secret, 1, type: :bytes, json_name: "encryptedClientSecret"
  field :encryption_key_version, 2, type: :string, json_name: "encryptionKeyVersion"
end
