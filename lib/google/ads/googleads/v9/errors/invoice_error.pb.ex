defmodule Google.Ads.Googleads.V9.Errors.InvoiceErrorEnum.InvoiceError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :YEAR_MONTH_TOO_OLD, 2
  field :NOT_INVOICED_CUSTOMER, 3
  field :BILLING_SETUP_NOT_APPROVED, 4
  field :BILLING_SETUP_NOT_ON_MONTHLY_INVOICING, 5
  field :NON_SERVING_CUSTOMER, 6
end

defmodule Google.Ads.Googleads.V9.Errors.InvoiceErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end