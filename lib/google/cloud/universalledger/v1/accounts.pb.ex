defmodule Google.Cloud.Universalledger.V1.AccountStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACCOUNT_STATUS_UNSPECIFIED, 0
  field :ACCOUNT_STATUS_ACTIVE, 1
  field :ACCOUNT_STATUS_INACTIVE, 2
end

defmodule Google.Cloud.Universalledger.V1.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :ROLE_PAYER, 5
  field :ROLE_RECEIVER, 6
  field :ROLE_CONTRACT_CREATOR, 7
  field :ROLE_CONTRACT_PARTICIPANT, 8
end

defmodule Google.Cloud.Universalledger.V1.ContractPermission do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONTRACT_PERMISSION_UNSPECIFIED, 0
  field :CONTRACT_PERMISSION_STORAGE, 1
end
