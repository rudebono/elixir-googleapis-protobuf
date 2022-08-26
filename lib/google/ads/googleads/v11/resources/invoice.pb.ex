defmodule Google.Ads.Googleads.V11.Resources.Invoice.AccountBudgetSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer, 10, proto3_optional: true, type: :string, deprecated: false

  field :customer_descriptive_name, 11,
    proto3_optional: true,
    type: :string,
    json_name: "customerDescriptiveName",
    deprecated: false

  field :account_budget, 12,
    proto3_optional: true,
    type: :string,
    json_name: "accountBudget",
    deprecated: false

  field :account_budget_name, 13,
    proto3_optional: true,
    type: :string,
    json_name: "accountBudgetName",
    deprecated: false

  field :purchase_order_number, 14,
    proto3_optional: true,
    type: :string,
    json_name: "purchaseOrderNumber",
    deprecated: false

  field :subtotal_amount_micros, 15,
    proto3_optional: true,
    type: :int64,
    json_name: "subtotalAmountMicros",
    deprecated: false

  field :tax_amount_micros, 16,
    proto3_optional: true,
    type: :int64,
    json_name: "taxAmountMicros",
    deprecated: false

  field :total_amount_micros, 17,
    proto3_optional: true,
    type: :int64,
    json_name: "totalAmountMicros",
    deprecated: false

  field :billable_activity_date_range, 9,
    type: Google.Ads.Googleads.V11.Common.DateRange,
    json_name: "billableActivityDateRange",
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Resources.Invoice do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 25, proto3_optional: true, type: :string, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V11.Enums.InvoiceTypeEnum.InvoiceType,
    enum: true,
    deprecated: false

  field :billing_setup, 26,
    proto3_optional: true,
    type: :string,
    json_name: "billingSetup",
    deprecated: false

  field :payments_account_id, 27,
    proto3_optional: true,
    type: :string,
    json_name: "paymentsAccountId",
    deprecated: false

  field :payments_profile_id, 28,
    proto3_optional: true,
    type: :string,
    json_name: "paymentsProfileId",
    deprecated: false

  field :issue_date, 29,
    proto3_optional: true,
    type: :string,
    json_name: "issueDate",
    deprecated: false

  field :due_date, 30,
    proto3_optional: true,
    type: :string,
    json_name: "dueDate",
    deprecated: false

  field :service_date_range, 9,
    type: Google.Ads.Googleads.V11.Common.DateRange,
    json_name: "serviceDateRange",
    deprecated: false

  field :currency_code, 31,
    proto3_optional: true,
    type: :string,
    json_name: "currencyCode",
    deprecated: false

  field :adjustments_subtotal_amount_micros, 19,
    type: :int64,
    json_name: "adjustmentsSubtotalAmountMicros",
    deprecated: false

  field :adjustments_tax_amount_micros, 20,
    type: :int64,
    json_name: "adjustmentsTaxAmountMicros",
    deprecated: false

  field :adjustments_total_amount_micros, 21,
    type: :int64,
    json_name: "adjustmentsTotalAmountMicros",
    deprecated: false

  field :regulatory_costs_subtotal_amount_micros, 22,
    type: :int64,
    json_name: "regulatoryCostsSubtotalAmountMicros",
    deprecated: false

  field :regulatory_costs_tax_amount_micros, 23,
    type: :int64,
    json_name: "regulatoryCostsTaxAmountMicros",
    deprecated: false

  field :regulatory_costs_total_amount_micros, 24,
    type: :int64,
    json_name: "regulatoryCostsTotalAmountMicros",
    deprecated: false

  field :subtotal_amount_micros, 33,
    proto3_optional: true,
    type: :int64,
    json_name: "subtotalAmountMicros",
    deprecated: false

  field :tax_amount_micros, 34,
    proto3_optional: true,
    type: :int64,
    json_name: "taxAmountMicros",
    deprecated: false

  field :total_amount_micros, 35,
    proto3_optional: true,
    type: :int64,
    json_name: "totalAmountMicros",
    deprecated: false

  field :corrected_invoice, 36,
    proto3_optional: true,
    type: :string,
    json_name: "correctedInvoice",
    deprecated: false

  field :replaced_invoices, 37,
    repeated: true,
    type: :string,
    json_name: "replacedInvoices",
    deprecated: false

  field :pdf_url, 38, proto3_optional: true, type: :string, json_name: "pdfUrl", deprecated: false

  field :account_budget_summaries, 18,
    repeated: true,
    type: Google.Ads.Googleads.V11.Resources.Invoice.AccountBudgetSummary,
    json_name: "accountBudgetSummaries",
    deprecated: false
end