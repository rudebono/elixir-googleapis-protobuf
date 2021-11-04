defmodule Google.Cloud.Bigquery.V2.EncryptionConfiguration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:kms_key_name]

  field :kms_key_name, 1, type: Google.Protobuf.StringValue, json_name: "kmsKeyName"

  def transform_module(), do: nil
end
