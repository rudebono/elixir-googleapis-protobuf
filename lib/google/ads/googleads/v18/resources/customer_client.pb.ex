defmodule Google.Ads.Googleads.V18.Resources.CustomerClient do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :client_customer, 12,
    proto3_optional: true,
    type: :string,
    json_name: "clientCustomer",
    deprecated: false

  field :hidden, 13, proto3_optional: true, type: :bool, deprecated: false
  field :level, 14, proto3_optional: true, type: :int64, deprecated: false

  field :time_zone, 15,
    proto3_optional: true,
    type: :string,
    json_name: "timeZone",
    deprecated: false

  field :test_account, 16,
    proto3_optional: true,
    type: :bool,
    json_name: "testAccount",
    deprecated: false

  field :manager, 17, proto3_optional: true, type: :bool, deprecated: false

  field :descriptive_name, 18,
    proto3_optional: true,
    type: :string,
    json_name: "descriptiveName",
    deprecated: false

  field :currency_code, 19,
    proto3_optional: true,
    type: :string,
    json_name: "currencyCode",
    deprecated: false

  field :id, 20, proto3_optional: true, type: :int64, deprecated: false

  field :applied_labels, 21,
    repeated: true,
    type: :string,
    json_name: "appliedLabels",
    deprecated: false

  field :status, 22,
    type: Google.Ads.Googleads.V18.Enums.CustomerStatusEnum.CustomerStatus,
    enum: true,
    deprecated: false
end
