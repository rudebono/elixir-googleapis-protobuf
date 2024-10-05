defmodule Google.Ads.Admanager.V1.Order do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :order_id, 4, type: :int64, json_name: "orderId", deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :programmatic, 3, type: :bool, deprecated: false
  field :trafficker, 23, type: :string, deprecated: false

  field :advertiser_contacts, 5,
    repeated: true,
    type: :string,
    json_name: "advertiserContacts",
    deprecated: false

  field :advertiser, 6, type: :string, deprecated: false

  field :agency_contacts, 7,
    repeated: true,
    type: :string,
    json_name: "agencyContacts",
    deprecated: false

  field :agency, 8, type: :string, deprecated: false

  field :applied_teams, 9,
    repeated: true,
    type: :string,
    json_name: "appliedTeams",
    deprecated: false

  field :effective_teams, 28,
    repeated: true,
    type: :string,
    json_name: "effectiveTeams",
    deprecated: false

  field :creator, 10, type: :string, deprecated: false
  field :currency_code, 11, type: :string, json_name: "currencyCode", deprecated: false

  field :start_time, 19,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :end_time, 12, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :unlimited_end_time, 45, type: :bool, json_name: "unlimitedEndTime", deprecated: false
  field :external_order_id, 13, type: :int64, json_name: "externalOrderId", deprecated: false
  field :archived, 14, type: :bool, deprecated: false

  field :last_modified_by_app, 15,
    type: :string,
    json_name: "lastModifiedByApp",
    deprecated: false

  field :update_time, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :notes, 17, type: :string, deprecated: false
  field :po_number, 18, type: :string, json_name: "poNumber", deprecated: false

  field :status, 20,
    type: Google.Ads.Admanager.V1.OrderStatusEnum.OrderStatus,
    enum: true,
    deprecated: false

  field :salesperson, 21, type: :string, deprecated: false

  field :secondary_salespeople, 22,
    repeated: true,
    type: :string,
    json_name: "secondarySalespeople",
    deprecated: false

  field :secondary_traffickers, 24,
    repeated: true,
    type: :string,
    json_name: "secondaryTraffickers",
    deprecated: false

  field :applied_labels, 25,
    repeated: true,
    type: Google.Ads.Admanager.V1.AppliedLabel,
    json_name: "appliedLabels",
    deprecated: false

  field :effective_applied_labels, 26,
    repeated: true,
    type: Google.Ads.Admanager.V1.AppliedLabel,
    json_name: "effectiveAppliedLabels",
    deprecated: false

  field :custom_field_values, 38,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomFieldValue,
    json_name: "customFieldValues",
    deprecated: false
end