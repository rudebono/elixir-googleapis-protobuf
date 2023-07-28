defmodule Google.Cloud.Netapp.V1.ServiceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SERVICE_LEVEL_UNSPECIFIED, 0
  field :PREMIUM, 1
  field :EXTREME, 2
  field :STANDARD, 3
end

defmodule Google.Cloud.Netapp.V1.EncryptionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ENCRYPTION_TYPE_UNSPECIFIED, 0
  field :SERVICE_MANAGED, 1
  field :CLOUD_KMS, 2
end