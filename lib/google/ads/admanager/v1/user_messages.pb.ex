defmodule Google.Ads.Admanager.V1.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :user_id, 10, type: :int64, json_name: "userId", deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :email, 3, type: :string, deprecated: false
  field :role, 4, type: :string, deprecated: false
  field :active, 6, type: :bool, deprecated: false
  field :external_id, 7, type: :string, json_name: "externalId", deprecated: false
  field :service_account, 8, type: :bool, json_name: "serviceAccount", deprecated: false

  field :orders_ui_local_time_zone, 9,
    type: :string,
    json_name: "ordersUiLocalTimeZone",
    deprecated: false
end