defmodule Google.Cloud.Bigquery.V2.EncryptionConfiguration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kms_key_name, 1,
    type: Google.Protobuf.StringValue,
    json_name: "kmsKeyName",
    deprecated: false
end
