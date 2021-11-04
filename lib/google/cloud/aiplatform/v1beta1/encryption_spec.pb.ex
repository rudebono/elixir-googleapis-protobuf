defmodule Google.Cloud.Aiplatform.V1beta1.EncryptionSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct [:kms_key_name]

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"

  def transform_module(), do: nil
end
