defmodule Google.Ads.Searchads360.V0.Resources.CustomerManagerLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :manager_customer, 6,
    proto3_optional: true,
    type: :string,
    json_name: "managerCustomer",
    deprecated: false

  field :manager_link_id, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "managerLinkId",
    deprecated: false

  field :status, 5,
    type: Google.Ads.Searchads360.V0.Enums.ManagerLinkStatusEnum.ManagerLinkStatus,
    enum: true

  field :start_time, 8,
    proto3_optional: true,
    type: :string,
    json_name: "startTime",
    deprecated: false
end