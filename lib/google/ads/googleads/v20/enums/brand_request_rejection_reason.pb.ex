defmodule Google.Ads.Googleads.V20.Enums.BrandRequestRejectionReasonEnum.BrandRequestRejectionReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :EXISTING_BRAND, 2
  field :EXISTING_BRAND_VARIANT, 3
  field :INCORRECT_INFORMATION, 4
  field :NOT_A_BRAND, 5
end

defmodule Google.Ads.Googleads.V20.Enums.BrandRequestRejectionReasonEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
