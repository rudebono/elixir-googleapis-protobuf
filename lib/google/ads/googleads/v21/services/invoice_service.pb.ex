defmodule Google.Ads.Googleads.V21.Services.ListInvoicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :billing_setup, 2, type: :string, json_name: "billingSetup", deprecated: false
  field :issue_year, 3, type: :string, json_name: "issueYear", deprecated: false

  field :issue_month, 4,
    type: Google.Ads.Googleads.V21.Enums.MonthOfYearEnum.MonthOfYear,
    json_name: "issueMonth",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Googleads.V21.Services.ListInvoicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :invoices, 1, repeated: true, type: Google.Ads.Googleads.V21.Resources.Invoice
end

defmodule Google.Ads.Googleads.V21.Services.InvoiceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v21.services.InvoiceService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListInvoices,
      Google.Ads.Googleads.V21.Services.ListInvoicesRequest,
      Google.Ads.Googleads.V21.Services.ListInvoicesResponse
end

defmodule Google.Ads.Googleads.V21.Services.InvoiceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V21.Services.InvoiceService.Service
end
