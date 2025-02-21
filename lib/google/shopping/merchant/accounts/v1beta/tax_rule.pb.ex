defmodule Google.Shopping.Merchant.Accounts.V1beta.TaxRule.TaxPostalCodeRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start, 1, type: :string, deprecated: false
  field :end, 2, type: :string
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.TaxRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :location, 0

  oneof :rate_calculation, 1

  field :location_id, 2, type: :int64, json_name: "locationId", oneof: 0

  field :post_code_range, 3,
    type: Google.Shopping.Merchant.Accounts.V1beta.TaxRule.TaxPostalCodeRange,
    json_name: "postCodeRange",
    oneof: 0

  field :use_google_rate, 4, type: :bool, json_name: "useGoogleRate", oneof: 1

  field :self_specified_rate_micros, 5,
    type: :int64,
    json_name: "selfSpecifiedRateMicros",
    oneof: 1

  field :region_code, 1, type: :string, json_name: "regionCode"
  field :shipping_taxed, 6, type: :bool, json_name: "shippingTaxed"

  field :effective_time_period, 7,
    type: Google.Type.Interval,
    json_name: "effectiveTimePeriod",
    deprecated: false
end
