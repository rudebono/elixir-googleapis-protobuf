defmodule Google.Ads.Googleads.V8.Errors.InvoiceErrorEnum.InvoiceError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :YEAR_MONTH_TOO_OLD
          | :NOT_INVOICED_CUSTOMER
          | :BILLING_SETUP_NOT_APPROVED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :YEAR_MONTH_TOO_OLD, 2

  field :NOT_INVOICED_CUSTOMER, 3

  field :BILLING_SETUP_NOT_APPROVED, 4
end

defmodule Google.Ads.Googleads.V8.Errors.InvoiceErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
