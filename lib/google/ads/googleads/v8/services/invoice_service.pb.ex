defmodule Google.Ads.Googleads.V8.Services.ListInvoicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          billing_setup: String.t(),
          issue_year: String.t(),
          issue_month: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear.t()
        }

  defstruct customer_id: "",
            billing_setup: "",
            issue_year: "",
            issue_month: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :billing_setup, 2, type: :string, json_name: "billingSetup", deprecated: false
  field :issue_year, 3, type: :string, json_name: "issueYear", deprecated: false

  field :issue_month, 4,
    type: Google.Ads.Googleads.V8.Enums.MonthOfYearEnum.MonthOfYear,
    json_name: "issueMonth",
    enum: true,
    deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.ListInvoicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          invoices: [Google.Ads.Googleads.V8.Resources.Invoice.t()]
        }

  defstruct invoices: []

  field :invoices, 1, repeated: true, type: Google.Ads.Googleads.V8.Resources.Invoice
end
defmodule Google.Ads.Googleads.V8.Services.InvoiceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.InvoiceService"

  rpc :ListInvoices,
      Google.Ads.Googleads.V8.Services.ListInvoicesRequest,
      Google.Ads.Googleads.V8.Services.ListInvoicesResponse
end

defmodule Google.Ads.Googleads.V8.Services.InvoiceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.InvoiceService.Service
end
