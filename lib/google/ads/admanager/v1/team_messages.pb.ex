defmodule Google.Ads.Admanager.V1.Team do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :display_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :description, 4, proto3_optional: true, type: :string, deprecated: false

  field :status, 5,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.TeamStatusEnum.TeamStatus,
    enum: true,
    deprecated: false

  field :all_companies_access, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "allCompaniesAccess",
    deprecated: false

  field :all_inventory_access, 7,
    proto3_optional: true,
    type: :bool,
    json_name: "allInventoryAccess",
    deprecated: false

  field :access_type, 8,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.TeamAccessTypeEnum.TeamAccessType,
    json_name: "accessType",
    enum: true,
    deprecated: false
end
