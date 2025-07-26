defmodule Google.Ads.Admanager.V1.ProgrammaticBuyer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :buyer_account_id, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "buyerAccountId",
    deprecated: false

  field :display_name, 5,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :parent_account_id, 6,
    proto3_optional: true,
    type: :int64,
    json_name: "parentAccountId",
    deprecated: false

  field :partner_client_id, 7,
    proto3_optional: true,
    type: :string,
    json_name: "partnerClientId",
    deprecated: false

  field :agency, 9, proto3_optional: true, type: :bool, deprecated: false

  field :preferred_deals_enabled, 12,
    proto3_optional: true,
    type: :bool,
    json_name: "preferredDealsEnabled",
    deprecated: false

  field :programmatic_guaranteed_enabled, 13,
    proto3_optional: true,
    type: :bool,
    json_name: "programmaticGuaranteedEnabled",
    deprecated: false
end
