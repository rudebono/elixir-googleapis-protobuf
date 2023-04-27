defmodule Google.Ads.Searchads360.V0.Resources.CampaignBudget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :amount_micros, 21, proto3_optional: true, type: :int64, json_name: "amountMicros"

  field :delivery_method, 7,
    type: Google.Ads.Searchads360.V0.Enums.BudgetDeliveryMethodEnum.BudgetDeliveryMethod,
    json_name: "deliveryMethod",
    enum: true

  field :period, 13,
    type: Google.Ads.Searchads360.V0.Enums.BudgetPeriodEnum.BudgetPeriod,
    enum: true,
    deprecated: false
end