defmodule Google.Ads.Googleads.V12.Resources.CustomerClientLink do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :client_customer, 7,
    proto3_optional: true,
    type: :string,
    json_name: "clientCustomer",
    deprecated: false

  field :manager_link_id, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "managerLinkId",
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V12.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true

  field :hidden, 9, proto3_optional: true, type: :bool
end