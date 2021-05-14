defmodule Google.Ads.Googleads.V6.Services.ListInvoicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          billing_setup: String.t(),
          issue_year: String.t(),
          issue_month: Google.Ads.Googleads.V6.Enums.MonthOfYearEnum.MonthOfYear.t()
        }

  defstruct [:customer_id, :billing_setup, :issue_year, :issue_month]

  field :customer_id, 1, type: :string
  field :billing_setup, 2, type: :string
  field :issue_year, 3, type: :string

  field :issue_month, 4,
    type: Google.Ads.Googleads.V6.Enums.MonthOfYearEnum.MonthOfYear,
    enum: true
end

defmodule Google.Ads.Googleads.V6.Services.ListInvoicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invoices: [Google.Ads.Googleads.V6.Resources.Invoice.t()]
        }

  defstruct [:invoices]

  field :invoices, 1, repeated: true, type: Google.Ads.Googleads.V6.Resources.Invoice
end
