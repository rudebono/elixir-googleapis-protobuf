defmodule Google.Shopping.Merchant.Accounts.V1.AccessRight do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACCESS_RIGHT_UNSPECIFIED, 0
  field :STANDARD, 1
  field :READ_ONLY, 4
  field :ADMIN, 2
  field :PERFORMANCE_REPORTING, 3
  field :API_DEVELOPER, 5
end
