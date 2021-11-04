defmodule Google.Ads.Googleads.V9.Resources.HotelReconciliation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          commission_id: String.t(),
          order_id: String.t(),
          hotel_center_id: integer,
          hotel_id: String.t(),
          check_in_date: String.t(),
          check_out_date: String.t(),
          reconciled_value_micros: integer,
          billed: boolean,
          status:
            Google.Ads.Googleads.V9.Enums.HotelReconciliationStatusEnum.HotelReconciliationStatus.t()
        }

  defstruct [
    :resource_name,
    :commission_id,
    :order_id,
    :hotel_center_id,
    :hotel_id,
    :check_in_date,
    :check_out_date,
    :reconciled_value_micros,
    :billed,
    :status
  ]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :commission_id, 2, type: :string, json_name: "commissionId"
  field :order_id, 3, type: :string, json_name: "orderId"
  field :hotel_center_id, 4, type: :int64, json_name: "hotelCenterId"
  field :hotel_id, 5, type: :string, json_name: "hotelId"
  field :check_in_date, 6, type: :string, json_name: "checkInDate"
  field :check_out_date, 7, type: :string, json_name: "checkOutDate"
  field :reconciled_value_micros, 8, type: :int64, json_name: "reconciledValueMicros"
  field :billed, 9, type: :bool

  field :status, 10,
    type: Google.Ads.Googleads.V9.Enums.HotelReconciliationStatusEnum.HotelReconciliationStatus,
    enum: true

  def transform_module(), do: nil
end
