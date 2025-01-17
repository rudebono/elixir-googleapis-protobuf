defmodule Google.Shopping.Merchant.Accounts.V1beta.Service.ShipmentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SHIPMENT_TYPE_UNSPECIFIED, 0
  field :DELIVERY, 1
  field :LOCAL_DELIVERY, 2
  field :COLLECTION_POINT, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Service.StoreConfig.StoreServiceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STORE_SERVICE_TYPE_UNSPECIFIED, 0
  field :ALL_STORES, 1
  field :SELECTED_STORES, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Distance.Unit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNIT_UNSPECIFIED, 0
  field :MILES, 1
  field :KILOMETERS, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessDayConfig.Weekday do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :WEEKDAY_UNSPECIFIED, 0
  field :MONDAY, 1
  field :TUESDAY, 2
  field :WEDNESDAY, 3
  field :THURSDAY, 4
  field :FRIDAY, 5
  field :SATURDAY, 6
  field :SUNDAY, 7
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ShippingSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :services, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Service,
    deprecated: false

  field :warehouses, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Warehouse,
    deprecated: false

  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Service.StoreConfig.CutoffConfig.LocalCutoffTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :hour, 1, proto3_optional: true, type: :int64
  field :minute, 2, proto3_optional: true, type: :int64
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Service.StoreConfig.CutoffConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :local_cutoff_time, 1,
    proto3_optional: true,
    type:
      Google.Shopping.Merchant.Accounts.V1beta.Service.StoreConfig.CutoffConfig.LocalCutoffTime,
    json_name: "localCutoffTime"

  field :store_close_offset_hours, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "storeCloseOffsetHours"

  field :no_delivery_post_cutoff, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "noDeliveryPostCutoff"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Service.StoreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :store_service_type, 1,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Service.StoreConfig.StoreServiceType,
    json_name: "storeServiceType",
    enum: true

  field :store_codes, 2, repeated: true, type: :string, json_name: "storeCodes", deprecated: false

  field :cutoff_config, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Service.StoreConfig.CutoffConfig,
    json_name: "cutoffConfig"

  field :service_radius, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Distance,
    json_name: "serviceRadius"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Service.LoyaltyProgram.LoyaltyProgramTiers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tier_label, 1, proto3_optional: true, type: :string, json_name: "tierLabel"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Service.LoyaltyProgram do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :program_label, 1, proto3_optional: true, type: :string, json_name: "programLabel"

  field :loyalty_program_tiers, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Service.LoyaltyProgram.LoyaltyProgramTiers,
    json_name: "loyaltyProgramTiers",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Service do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "serviceName",
    deprecated: false

  field :active, 2, proto3_optional: true, type: :bool, deprecated: false

  field :delivery_countries, 3,
    repeated: true,
    type: :string,
    json_name: "deliveryCountries",
    deprecated: false

  field :currency_code, 4, proto3_optional: true, type: :string, json_name: "currencyCode"

  field :delivery_time, 5,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.DeliveryTime,
    json_name: "deliveryTime",
    deprecated: false

  field :rate_groups, 6,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.RateGroup,
    json_name: "rateGroups",
    deprecated: false

  field :shipment_type, 7,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Service.ShipmentType,
    json_name: "shipmentType",
    enum: true

  field :minimum_order_value, 8,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "minimumOrderValue"

  field :minimum_order_value_table, 9,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.MinimumOrderValueTable,
    json_name: "minimumOrderValueTable"

  field :store_config, 10,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Service.StoreConfig,
    json_name: "storeConfig"

  field :loyalty_programs, 11,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Service.LoyaltyProgram,
    json_name: "loyaltyPrograms",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Distance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :int64

  field :unit, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Distance.Unit,
    enum: true
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Warehouse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string, deprecated: false

  field :shipping_address, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Address,
    json_name: "shippingAddress",
    deprecated: false

  field :cutoff_time, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.WarehouseCutoffTime,
    json_name: "cutoffTime",
    deprecated: false

  field :handling_days, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "handlingDays",
    deprecated: false

  field :business_day_config, 5,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessDayConfig,
    json_name: "businessDayConfig"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.WarehouseCutoffTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :hour, 1, proto3_optional: true, type: :int32, deprecated: false
  field :minute, 2, proto3_optional: true, type: :int32, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Address do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :street_address, 1, proto3_optional: true, type: :string, json_name: "streetAddress"
  field :city, 2, proto3_optional: true, type: :string, deprecated: false

  field :administrative_area, 3,
    proto3_optional: true,
    type: :string,
    json_name: "administrativeArea",
    deprecated: false

  field :postal_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "postalCode",
    deprecated: false

  field :region_code, 5,
    proto3_optional: true,
    type: :string,
    json_name: "regionCode",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.DeliveryTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :min_transit_days, 1, proto3_optional: true, type: :int32, json_name: "minTransitDays"
  field :max_transit_days, 2, proto3_optional: true, type: :int32, json_name: "maxTransitDays"

  field :cutoff_time, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.CutoffTime,
    json_name: "cutoffTime"

  field :min_handling_days, 4, proto3_optional: true, type: :int32, json_name: "minHandlingDays"
  field :max_handling_days, 5, proto3_optional: true, type: :int32, json_name: "maxHandlingDays"

  field :transit_time_table, 6,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.TransitTable,
    json_name: "transitTimeTable"

  field :handling_business_day_config, 7,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessDayConfig,
    json_name: "handlingBusinessDayConfig"

  field :transit_business_day_config, 8,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessDayConfig,
    json_name: "transitBusinessDayConfig"

  field :warehouse_based_delivery_times, 9,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.WarehouseBasedDeliveryTime,
    json_name: "warehouseBasedDeliveryTimes",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CutoffTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :hour, 1, proto3_optional: true, type: :int32, deprecated: false
  field :minute, 2, proto3_optional: true, type: :int32, deprecated: false

  field :time_zone, 3,
    proto3_optional: true,
    type: :string,
    json_name: "timeZone",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessDayConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :business_days, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessDayConfig.Weekday,
    json_name: "businessDays",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.WarehouseBasedDeliveryTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :carrier, 1, proto3_optional: true, type: :string, deprecated: false

  field :carrier_service, 2,
    proto3_optional: true,
    type: :string,
    json_name: "carrierService",
    deprecated: false

  field :warehouse, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.RateGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :applicable_shipping_labels, 1,
    repeated: true,
    type: :string,
    json_name: "applicableShippingLabels",
    deprecated: false

  field :single_value, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Value,
    json_name: "singleValue"

  field :main_table, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Table,
    json_name: "mainTable"

  field :subtables, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Table,
    deprecated: false

  field :carrier_rates, 5,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.CarrierRate,
    json_name: "carrierRates",
    deprecated: false

  field :name, 6, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Table do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string

  field :row_headers, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Headers,
    json_name: "rowHeaders",
    deprecated: false

  field :column_headers, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Headers,
    json_name: "columnHeaders"

  field :rows, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Row,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.TransitTable.TransitTimeRow.TransitTimeValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :min_transit_days, 1, proto3_optional: true, type: :int32, json_name: "minTransitDays"
  field :max_transit_days, 2, proto3_optional: true, type: :int32, json_name: "maxTransitDays"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.TransitTable.TransitTimeRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.TransitTable.TransitTimeRow.TransitTimeValue,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.TransitTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :postal_code_group_names, 1,
    repeated: true,
    type: :string,
    json_name: "postalCodeGroupNames",
    deprecated: false

  field :transit_time_labels, 2,
    repeated: true,
    type: :string,
    json_name: "transitTimeLabels",
    deprecated: false

  field :rows, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.TransitTable.TransitTimeRow,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.MinimumOrderValueTable.StoreCodeSetWithMov do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :store_codes, 1, repeated: true, type: :string, json_name: "storeCodes", deprecated: false
  field :value, 2, proto3_optional: true, type: Google.Shopping.Type.Price
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.MinimumOrderValueTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :store_code_set_with_movs, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.MinimumOrderValueTable.StoreCodeSetWithMov,
    json_name: "storeCodeSetWithMovs",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Headers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prices, 1, repeated: true, type: Google.Shopping.Type.Price, deprecated: false
  field :weights, 2, repeated: true, type: Google.Shopping.Type.Weight, deprecated: false

  field :number_of_items, 3,
    repeated: true,
    type: :string,
    json_name: "numberOfItems",
    deprecated: false

  field :postal_code_group_names, 4,
    repeated: true,
    type: :string,
    json_name: "postalCodeGroupNames",
    deprecated: false

  field :locations, 5,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.LocationIdSet,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.LocationIdSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :location_ids, 1,
    repeated: true,
    type: :string,
    json_name: "locationIds",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cells, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Value,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :no_shipping, 1, proto3_optional: true, type: :bool, json_name: "noShipping"

  field :flat_rate, 2,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "flatRate"

  field :price_percentage, 3, proto3_optional: true, type: :string, json_name: "pricePercentage"
  field :carrier_rate, 4, proto3_optional: true, type: :string, json_name: "carrierRate"
  field :subtable, 5, proto3_optional: true, type: :string
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CarrierRate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string, deprecated: false
  field :carrier, 2, proto3_optional: true, type: :string, deprecated: false

  field :carrier_service, 3,
    proto3_optional: true,
    type: :string,
    json_name: "carrierService",
    deprecated: false

  field :origin_postal_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "originPostalCode",
    deprecated: false

  field :percentage_adjustment, 5,
    proto3_optional: true,
    type: :string,
    json_name: "percentageAdjustment",
    deprecated: false

  field :flat_adjustment, 6,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "flatAdjustment",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetShippingSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.InsertShippingSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :shipping_setting, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.ShippingSettings,
    json_name: "shippingSetting",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ShippingSettingsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.ShippingSettingsService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetShippingSettings,
      Google.Shopping.Merchant.Accounts.V1beta.GetShippingSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ShippingSettings

  rpc :InsertShippingSettings,
      Google.Shopping.Merchant.Accounts.V1beta.InsertShippingSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ShippingSettings
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ShippingSettingsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.ShippingSettingsService.Service
end
