defmodule Google.Ads.Admanager.V1.Order.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :DRAFT, 2
  field :PENDING_APPROVAL, 3
  field :APPROVED, 4
  field :DISAPPROVED, 5
  field :PAUSED, 6
  field :CANCELED, 7
  field :DELETED, 8
end

defmodule Google.Ads.Admanager.V1.Order do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
  field :status, 20, type: Google.Ads.Admanager.V1.Order.Status, enum: true, deprecated: false
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
end

defmodule Google.Ads.Admanager.V1.GetOrderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListOrdersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListOrdersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :orders, 1, repeated: true, type: Google.Ads.Admanager.V1.Order
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.OrderService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.OrderService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetOrder, Google.Ads.Admanager.V1.GetOrderRequest, Google.Ads.Admanager.V1.Order

  rpc :ListOrders,
      Google.Ads.Admanager.V1.ListOrdersRequest,
      Google.Ads.Admanager.V1.ListOrdersResponse
end

defmodule Google.Ads.Admanager.V1.OrderService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.OrderService.Service
end