defmodule Google.Ads.Googleads.V9.Resources.HotelReconciliation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :commission_id, 2, type: :string, json_name: "commissionId", deprecated: false
  field :order_id, 3, type: :string, json_name: "orderId", deprecated: false
  field :hotel_center_id, 4, type: :int64, json_name: "hotelCenterId", deprecated: false
  field :hotel_id, 5, type: :string, json_name: "hotelId", deprecated: false
  field :check_in_date, 6, type: :string, json_name: "checkInDate", deprecated: false
  field :check_out_date, 7, type: :string, json_name: "checkOutDate", deprecated: false

  field :reconciled_value_micros, 8,
    type: :int64,
    json_name: "reconciledValueMicros",
    deprecated: false

  field :billed, 9, type: :bool, deprecated: false

  field :status, 10,
    type: Google.Ads.Googleads.V9.Enums.HotelReconciliationStatusEnum.HotelReconciliationStatus,
    enum: true,
    deprecated: false
end
