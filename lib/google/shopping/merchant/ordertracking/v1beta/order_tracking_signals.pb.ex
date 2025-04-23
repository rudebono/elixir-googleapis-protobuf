defmodule Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal.ShippingInfo.ShippingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SHIPPING_STATE_UNSPECIFIED, 0
  field :SHIPPED, 1
  field :DELIVERED, 2
end

defmodule Google.Shopping.Merchant.Ordertracking.V1beta.CreateOrderTrackingSignalRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :order_tracking_signal_id, 2,
    type: :string,
    json_name: "orderTrackingSignalId",
    deprecated: false

  field :order_tracking_signal, 3,
    type: Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal,
    json_name: "orderTrackingSignal",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal.ShippingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :shipment_id, 1, type: :string, json_name: "shipmentId", deprecated: false
  field :tracking_id, 2, type: :string, json_name: "trackingId", deprecated: false
  field :carrier, 3, type: :string, deprecated: false
  field :carrier_service, 4, type: :string, json_name: "carrierService", deprecated: false
  field :shipped_time, 5, type: Google.Type.DateTime, json_name: "shippedTime", deprecated: false

  field :earliest_delivery_promise_time, 6,
    type: Google.Type.DateTime,
    json_name: "earliestDeliveryPromiseTime",
    deprecated: false

  field :latest_delivery_promise_time, 7,
    type: Google.Type.DateTime,
    json_name: "latestDeliveryPromiseTime",
    deprecated: false

  field :actual_delivery_time, 8,
    type: Google.Type.DateTime,
    json_name: "actualDeliveryTime",
    deprecated: false

  field :shipping_status, 9,
    type:
      Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal.ShippingInfo.ShippingState,
    json_name: "shippingStatus",
    enum: true,
    deprecated: false

  field :origin_postal_code, 10, type: :string, json_name: "originPostalCode", deprecated: false
  field :origin_region_code, 11, type: :string, json_name: "originRegionCode", deprecated: false
end

defmodule Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal.LineItemDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :line_item_id, 1, type: :string, json_name: "lineItemId", deprecated: false
  field :product_id, 2, type: :string, json_name: "productId", deprecated: false
  field :gtin, 3, type: :string, deprecated: false
  field :mpn, 4, type: :string, deprecated: false

  field :product_title, 5,
    proto3_optional: true,
    type: :string,
    json_name: "productTitle",
    deprecated: false

  field :brand, 6, proto3_optional: true, type: :string, deprecated: false
  field :quantity, 7, type: :int64, deprecated: false
end

defmodule Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal.ShipmentLineItemMapping do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :shipment_id, 1, type: :string, json_name: "shipmentId", deprecated: false
  field :line_item_id, 2, type: :string, json_name: "lineItemId", deprecated: false
  field :quantity, 3, type: :int64, deprecated: false
end

defmodule Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :order_tracking_signal_id, 11,
    type: :int64,
    json_name: "orderTrackingSignalId",
    deprecated: false

  field :merchant_id, 12, type: :int64, json_name: "merchantId", deprecated: false

  field :order_created_time, 1,
    type: Google.Type.DateTime,
    json_name: "orderCreatedTime",
    deprecated: false

  field :order_id, 2, type: :string, json_name: "orderId", deprecated: false

  field :shipping_info, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal.ShippingInfo,
    json_name: "shippingInfo",
    deprecated: false

  field :line_items, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal.LineItemDetails,
    json_name: "lineItems",
    deprecated: false

  field :shipment_line_item_mapping, 5,
    repeated: true,
    type:
      Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal.ShipmentLineItemMapping,
    json_name: "shipmentLineItemMapping",
    deprecated: false

  field :customer_shipping_fee, 6,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "customerShippingFee",
    deprecated: false

  field :delivery_postal_code, 9,
    type: :string,
    json_name: "deliveryPostalCode",
    deprecated: false

  field :delivery_region_code, 10,
    type: :string,
    json_name: "deliveryRegionCode",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignalsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.ordertracking.v1beta.OrderTrackingSignalsService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateOrderTrackingSignal,
      Google.Shopping.Merchant.Ordertracking.V1beta.CreateOrderTrackingSignalRequest,
      Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignal
end

defmodule Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignalsService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Ordertracking.V1beta.OrderTrackingSignalsService.Service
end
