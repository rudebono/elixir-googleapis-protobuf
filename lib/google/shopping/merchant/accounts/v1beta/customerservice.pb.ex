defmodule Google.Shopping.Merchant.Accounts.V1beta.CustomerService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :uri, 1, proto3_optional: true, type: :string, deprecated: false
  field :email, 2, proto3_optional: true, type: :string, deprecated: false
  field :phone, 3, proto3_optional: true, type: Google.Type.PhoneNumber, deprecated: false
end
