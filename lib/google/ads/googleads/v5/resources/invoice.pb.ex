defmodule Google.Ads.Googleads.V5.Resources.Invoice.AccountBudgetSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer: Google.Protobuf.StringValue.t() | nil,
          customer_descriptive_name: Google.Protobuf.StringValue.t() | nil,
          account_budget: Google.Protobuf.StringValue.t() | nil,
          account_budget_name: Google.Protobuf.StringValue.t() | nil,
          purchase_order_number: Google.Protobuf.StringValue.t() | nil,
          subtotal_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          tax_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          total_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          billable_activity_date_range: Google.Ads.Googleads.V5.Common.DateRange.t() | nil
        }

  defstruct [
    :customer,
    :customer_descriptive_name,
    :account_budget,
    :account_budget_name,
    :purchase_order_number,
    :subtotal_amount_micros,
    :tax_amount_micros,
    :total_amount_micros,
    :billable_activity_date_range
  ]

  field :customer, 1, type: Google.Protobuf.StringValue
  field :customer_descriptive_name, 2, type: Google.Protobuf.StringValue
  field :account_budget, 3, type: Google.Protobuf.StringValue
  field :account_budget_name, 4, type: Google.Protobuf.StringValue
  field :purchase_order_number, 5, type: Google.Protobuf.StringValue
  field :subtotal_amount_micros, 6, type: Google.Protobuf.Int64Value
  field :tax_amount_micros, 7, type: Google.Protobuf.Int64Value
  field :total_amount_micros, 8, type: Google.Protobuf.Int64Value
  field :billable_activity_date_range, 9, type: Google.Ads.Googleads.V5.Common.DateRange
end

defmodule Google.Ads.Googleads.V5.Resources.Invoice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.StringValue.t() | nil,
          type: Google.Ads.Googleads.V5.Enums.InvoiceTypeEnum.InvoiceType.t(),
          billing_setup: Google.Protobuf.StringValue.t() | nil,
          payments_account_id: Google.Protobuf.StringValue.t() | nil,
          payments_profile_id: Google.Protobuf.StringValue.t() | nil,
          issue_date: Google.Protobuf.StringValue.t() | nil,
          due_date: Google.Protobuf.StringValue.t() | nil,
          service_date_range: Google.Ads.Googleads.V5.Common.DateRange.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          invoice_level_adjustments_micros: Google.Protobuf.Int64Value.t() | nil,
          subtotal_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          tax_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          total_amount_micros: Google.Protobuf.Int64Value.t() | nil,
          corrected_invoice: Google.Protobuf.StringValue.t() | nil,
          replaced_invoices: [Google.Protobuf.StringValue.t()],
          pdf_url: Google.Protobuf.StringValue.t() | nil,
          account_budget_summaries: [
            Google.Ads.Googleads.V5.Resources.Invoice.AccountBudgetSummary.t()
          ]
        }

  defstruct [
    :resource_name,
    :id,
    :type,
    :billing_setup,
    :payments_account_id,
    :payments_profile_id,
    :issue_date,
    :due_date,
    :service_date_range,
    :currency_code,
    :invoice_level_adjustments_micros,
    :subtotal_amount_micros,
    :tax_amount_micros,
    :total_amount_micros,
    :corrected_invoice,
    :replaced_invoices,
    :pdf_url,
    :account_budget_summaries
  ]

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.StringValue
  field :type, 3, type: Google.Ads.Googleads.V5.Enums.InvoiceTypeEnum.InvoiceType, enum: true
  field :billing_setup, 4, type: Google.Protobuf.StringValue
  field :payments_account_id, 5, type: Google.Protobuf.StringValue
  field :payments_profile_id, 6, type: Google.Protobuf.StringValue
  field :issue_date, 7, type: Google.Protobuf.StringValue
  field :due_date, 8, type: Google.Protobuf.StringValue
  field :service_date_range, 9, type: Google.Ads.Googleads.V5.Common.DateRange
  field :currency_code, 10, type: Google.Protobuf.StringValue
  field :invoice_level_adjustments_micros, 11, type: Google.Protobuf.Int64Value
  field :subtotal_amount_micros, 12, type: Google.Protobuf.Int64Value
  field :tax_amount_micros, 13, type: Google.Protobuf.Int64Value
  field :total_amount_micros, 14, type: Google.Protobuf.Int64Value
  field :corrected_invoice, 15, type: Google.Protobuf.StringValue
  field :replaced_invoices, 16, repeated: true, type: Google.Protobuf.StringValue
  field :pdf_url, 17, type: Google.Protobuf.StringValue

  field :account_budget_summaries, 18,
    repeated: true,
    type: Google.Ads.Googleads.V5.Resources.Invoice.AccountBudgetSummary
end
