defmodule Google.Ads.Googleads.V14.Resources.Invoice.AccountSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer, 1, proto3_optional: true, type: :string, deprecated: false

  field :billing_correction_subtotal_amount_micros, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "billingCorrectionSubtotalAmountMicros",
    deprecated: false

  field :billing_correction_tax_amount_micros, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "billingCorrectionTaxAmountMicros",
    deprecated: false

  field :billing_correction_total_amount_micros, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "billingCorrectionTotalAmountMicros",
    deprecated: false

  field :coupon_adjustment_subtotal_amount_micros, 5,
    proto3_optional: true,
    type: :int64,
    json_name: "couponAdjustmentSubtotalAmountMicros",
    deprecated: false

  field :coupon_adjustment_tax_amount_micros, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "couponAdjustmentTaxAmountMicros",
    deprecated: false

  field :coupon_adjustment_total_amount_micros, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "couponAdjustmentTotalAmountMicros",
    deprecated: false

  field :excess_credit_adjustment_subtotal_amount_micros, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "excessCreditAdjustmentSubtotalAmountMicros",
    deprecated: false

  field :excess_credit_adjustment_tax_amount_micros, 9,
    proto3_optional: true,
    type: :int64,
    json_name: "excessCreditAdjustmentTaxAmountMicros",
    deprecated: false

  field :excess_credit_adjustment_total_amount_micros, 10,
    proto3_optional: true,
    type: :int64,
    json_name: "excessCreditAdjustmentTotalAmountMicros",
    deprecated: false

  field :regulatory_costs_subtotal_amount_micros, 11,
    proto3_optional: true,
    type: :int64,
    json_name: "regulatoryCostsSubtotalAmountMicros",
    deprecated: false

  field :regulatory_costs_tax_amount_micros, 12,
    proto3_optional: true,
    type: :int64,
    json_name: "regulatoryCostsTaxAmountMicros",
    deprecated: false

  field :regulatory_costs_total_amount_micros, 13,
    proto3_optional: true,
    type: :int64,
    json_name: "regulatoryCostsTotalAmountMicros",
    deprecated: false

  field :export_charge_subtotal_amount_micros, 17,
    proto3_optional: true,
    type: :int64,
    json_name: "exportChargeSubtotalAmountMicros",
    deprecated: false

  field :export_charge_tax_amount_micros, 18,
    proto3_optional: true,
    type: :int64,
    json_name: "exportChargeTaxAmountMicros",
    deprecated: false

  field :export_charge_total_amount_micros, 19,
    proto3_optional: true,
    type: :int64,
    json_name: "exportChargeTotalAmountMicros",
    deprecated: false

  field :subtotal_amount_micros, 14,
    proto3_optional: true,
    type: :int64,
    json_name: "subtotalAmountMicros",
    deprecated: false

  field :tax_amount_micros, 15,
    proto3_optional: true,
    type: :int64,
    json_name: "taxAmountMicros",
    deprecated: false

  field :total_amount_micros, 16,
    proto3_optional: true,
    type: :int64,
    json_name: "totalAmountMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Invoice.AccountBudgetSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Ads.Googleads.V14.Common.DateRange,
    json_name: "billableActivityDateRange",
    deprecated: false

  field :served_amount_micros, 18,
    proto3_optional: true,
    type: :int64,
    json_name: "servedAmountMicros",
    deprecated: false

  field :billed_amount_micros, 19,
    proto3_optional: true,
    type: :int64,
    json_name: "billedAmountMicros",
    deprecated: false

  field :overdelivery_amount_micros, 20,
    proto3_optional: true,
    type: :int64,
    json_name: "overdeliveryAmountMicros",
    deprecated: false

  field :invalid_activity_amount_micros, 21,
    proto3_optional: true,
    type: :int64,
    json_name: "invalidActivityAmountMicros",
    deprecated: false

  field :invalid_activity_summaries, 22,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.Invoice.InvalidActivitySummary,
    json_name: "invalidActivitySummaries",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Invoice.InvalidActivitySummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :original_month_of_service, 1,
    proto3_optional: true,
    type: Google.Ads.Googleads.V14.Enums.MonthOfYearEnum.MonthOfYear,
    json_name: "originalMonthOfService",
    enum: true,
    deprecated: false

  field :original_year_of_service, 2,
    proto3_optional: true,
    type: :string,
    json_name: "originalYearOfService",
    deprecated: false

  field :original_invoice_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "originalInvoiceId",
    deprecated: false

  field :original_account_budget_name, 4,
    proto3_optional: true,
    type: :string,
    json_name: "originalAccountBudgetName",
    deprecated: false

  field :original_purchase_order_number, 5,
    proto3_optional: true,
    type: :string,
    json_name: "originalPurchaseOrderNumber",
    deprecated: false

  field :amount_micros, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "amountMicros",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Resources.Invoice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 25, proto3_optional: true, type: :string, deprecated: false

  field :type, 3,
    type: Google.Ads.Googleads.V14.Enums.InvoiceTypeEnum.InvoiceType,
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
    type: Google.Ads.Googleads.V14.Common.DateRange,
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

  field :export_charge_subtotal_amount_micros, 40,
    proto3_optional: true,
    type: :int64,
    json_name: "exportChargeSubtotalAmountMicros",
    deprecated: false

  field :export_charge_tax_amount_micros, 41,
    proto3_optional: true,
    type: :int64,
    json_name: "exportChargeTaxAmountMicros",
    deprecated: false

  field :export_charge_total_amount_micros, 42,
    proto3_optional: true,
    type: :int64,
    json_name: "exportChargeTotalAmountMicros",
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
    type: Google.Ads.Googleads.V14.Resources.Invoice.AccountBudgetSummary,
    json_name: "accountBudgetSummaries",
    deprecated: false

  field :account_summaries, 39,
    repeated: true,
    type: Google.Ads.Googleads.V14.Resources.Invoice.AccountSummary,
    json_name: "accountSummaries",
    deprecated: false
end