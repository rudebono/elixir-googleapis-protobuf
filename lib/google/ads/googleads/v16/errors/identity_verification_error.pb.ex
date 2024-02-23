defmodule Google.Ads.Googleads.V16.Errors.IdentityVerificationErrorEnum.IdentityVerificationError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NO_EFFECTIVE_BILLING, 2
  field :BILLING_NOT_ON_MONTHLY_INVOICING, 3
  field :VERIFICATION_ALREADY_STARTED, 4
end

defmodule Google.Ads.Googleads.V16.Errors.IdentityVerificationErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end