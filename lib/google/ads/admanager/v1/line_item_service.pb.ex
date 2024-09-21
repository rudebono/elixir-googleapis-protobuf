defmodule Google.Ads.Admanager.V1.LineItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :archived, 14, type: :bool, deprecated: false

  field :contracted_units_bought, 18,
    type: :int64,
    json_name: "contractedUnitsBought",
    deprecated: false

  field :cost_per_unit, 15, type: Google.Type.Money, json_name: "costPerUnit", deprecated: false

  field :cost_type, 19,
    type: Google.Ads.Admanager.V1.LineItemCostTypeEnum.LineItemCostType,
    json_name: "costType",
    enum: true,
    deprecated: false

  field :create_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 31,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :creative_rotation_type, 22,
    type: Google.Ads.Admanager.V1.CreativeRotationTypeEnum.CreativeRotationType,
    json_name: "creativeRotationType",
    enum: true,
    deprecated: false

  field :delivery_rate_type, 23,
    type: Google.Ads.Admanager.V1.DeliveryRateTypeEnum.DeliveryRateType,
    json_name: "deliveryRateType",
    enum: true,
    deprecated: false

  field :discount, 13, type: :double, deprecated: false

  field :discount_type, 24,
    type: Google.Ads.Admanager.V1.LineItemDiscountTypeEnum.LineItemDiscountType,
    json_name: "discountType",
    enum: true,
    deprecated: false

  field :environment_type, 25,
    type: Google.Ads.Admanager.V1.EnvironmentTypeEnum.EnvironmentType,
    json_name: "environmentType",
    enum: true,
    deprecated: false

  field :external_id, 5, type: :string, json_name: "externalId", deprecated: false
  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :auto_extension_days, 8, type: :int32, json_name: "autoExtensionDays", deprecated: false
  field :unlimited_end_time, 9, type: :bool, json_name: "unlimitedEndTime", deprecated: false

  field :last_modified_by_app, 17,
    type: :string,
    json_name: "lastModifiedByApp",
    deprecated: false

  field :line_item_type, 10,
    type: Google.Ads.Admanager.V1.LineItemTypeEnum.LineItemType,
    json_name: "lineItemType",
    enum: true,
    deprecated: false

  field :missing_creatives, 16, type: :bool, json_name: "missingCreatives", deprecated: false
  field :notes, 20, type: :string, deprecated: false
  field :priority, 11, type: :int64, deprecated: false

  field :reservation_status, 26,
    type: Google.Ads.Admanager.V1.ReservationStatusEnum.ReservationStatus,
    json_name: "reservationStatus",
    enum: true,
    deprecated: false

  field :web_property_code, 21, type: :string, json_name: "webPropertyCode", deprecated: false

  field :creative_placeholders, 27,
    repeated: true,
    type: Google.Ads.Admanager.V1.CreativePlaceholder,
    json_name: "creativePlaceholders",
    deprecated: false

  field :status, 28,
    type: Google.Ads.Admanager.V1.ComputedStatusEnum.ComputedStatus,
    enum: true,
    deprecated: false

  field :primary_goal, 29,
    type: Google.Ads.Admanager.V1.Goal,
    json_name: "primaryGoal",
    deprecated: false

  field :impression_limit, 30,
    type: Google.Ads.Admanager.V1.Goal,
    json_name: "impressionLimit",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.GetLineItemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListLineItemsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListLineItemsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :line_items, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.LineItem,
    json_name: "lineItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.LineItemService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.LineItemService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetLineItem, Google.Ads.Admanager.V1.GetLineItemRequest, Google.Ads.Admanager.V1.LineItem

  rpc :ListLineItems,
      Google.Ads.Admanager.V1.ListLineItemsRequest,
      Google.Ads.Admanager.V1.ListLineItemsResponse
end

defmodule Google.Ads.Admanager.V1.LineItemService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.LineItemService.Service
end