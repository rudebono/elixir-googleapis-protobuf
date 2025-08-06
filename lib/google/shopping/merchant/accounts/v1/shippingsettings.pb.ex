defmodule Google.Shopping.Merchant.Accounts.V1.Service.ShipmentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SHIPMENT_TYPE_UNSPECIFIED, 0
  field :DELIVERY, 1
  field :LOCAL_DELIVERY, 2
  field :COLLECTION_POINT, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1.Service.StoreConfig.StoreServiceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STORE_SERVICE_TYPE_UNSPECIFIED, 0
  field :ALL_STORES, 1
  field :SELECTED_STORES, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1.Distance.Unit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNIT_UNSPECIFIED, 0
  field :MILES, 1
  field :KILOMETERS, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1.BusinessDayConfig.Weekday do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WEEKDAY_UNSPECIFIED, 0
  field :MONDAY, 1
  field :TUESDAY, 2
  field :WEDNESDAY, 3
  field :THURSDAY, 4
  field :FRIDAY, 5
  field :SATURDAY, 6
  field :SUNDAY, 7
end

defmodule Google.Shopping.Merchant.Accounts.V1.ShippingSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :services, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.Service,
    deprecated: false

  field :warehouses, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.Warehouse,
    deprecated: false

  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Service.StoreConfig.CutoffConfig.LocalCutoffTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hour, 1, proto3_optional: true, type: :int64
  field :minute, 2, proto3_optional: true, type: :int64
end

defmodule Google.Shopping.Merchant.Accounts.V1.Service.StoreConfig.CutoffConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :local_cutoff_time, 1,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Service.StoreConfig.CutoffConfig.LocalCutoffTime,
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

defmodule Google.Shopping.Merchant.Accounts.V1.Service.StoreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :store_service_type, 1,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Service.StoreConfig.StoreServiceType,
    json_name: "storeServiceType",
    enum: true

  field :store_codes, 2, repeated: true, type: :string, json_name: "storeCodes", deprecated: false

  field :cutoff_config, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Service.StoreConfig.CutoffConfig,
    json_name: "cutoffConfig"

  field :service_radius, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Distance,
    json_name: "serviceRadius"
end

defmodule Google.Shopping.Merchant.Accounts.V1.Service.LoyaltyProgram.LoyaltyProgramTiers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tier_label, 1, proto3_optional: true, type: :string, json_name: "tierLabel"
end

defmodule Google.Shopping.Merchant.Accounts.V1.Service.LoyaltyProgram do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :program_label, 1, proto3_optional: true, type: :string, json_name: "programLabel"

  field :loyalty_program_tiers, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.Service.LoyaltyProgram.LoyaltyProgramTiers,
    json_name: "loyaltyProgramTiers",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Service do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  field :currency_code, 4,
    proto3_optional: true,
    type: :string,
    json_name: "currencyCode",
    deprecated: false

  field :delivery_time, 5,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.DeliveryTime,
    json_name: "deliveryTime",
    deprecated: false

  field :rate_groups, 6,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.RateGroup,
    json_name: "rateGroups",
    deprecated: false

  field :shipment_type, 7,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Service.ShipmentType,
    json_name: "shipmentType",
    enum: true,
    deprecated: false

  field :minimum_order_value, 8,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "minimumOrderValue",
    deprecated: false

  field :minimum_order_value_table, 9,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.MinimumOrderValueTable,
    json_name: "minimumOrderValueTable",
    deprecated: false

  field :store_config, 10,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Service.StoreConfig,
    json_name: "storeConfig"

  field :loyalty_programs, 11,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.Service.LoyaltyProgram,
    json_name: "loyaltyPrograms",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Distance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, proto3_optional: true, type: :int64

  field :unit, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Distance.Unit,
    enum: true
end

defmodule Google.Shopping.Merchant.Accounts.V1.Warehouse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string, deprecated: false

  field :shipping_address, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Address,
    json_name: "shippingAddress",
    deprecated: false

  field :cutoff_time, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.WarehouseCutoffTime,
    json_name: "cutoffTime",
    deprecated: false

  field :handling_days, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "handlingDays",
    deprecated: false

  field :business_day_config, 5,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.BusinessDayConfig,
    json_name: "businessDayConfig"
end

defmodule Google.Shopping.Merchant.Accounts.V1.WarehouseCutoffTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hour, 1, proto3_optional: true, type: :int32, deprecated: false
  field :minute, 2, proto3_optional: true, type: :int32, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Address do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Shopping.Merchant.Accounts.V1.DeliveryTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_transit_days, 1, proto3_optional: true, type: :int32, json_name: "minTransitDays"
  field :max_transit_days, 2, proto3_optional: true, type: :int32, json_name: "maxTransitDays"

  field :cutoff_time, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.CutoffTime,
    json_name: "cutoffTime"

  field :min_handling_days, 4, proto3_optional: true, type: :int32, json_name: "minHandlingDays"
  field :max_handling_days, 5, proto3_optional: true, type: :int32, json_name: "maxHandlingDays"

  field :transit_time_table, 6,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.TransitTable,
    json_name: "transitTimeTable"

  field :handling_business_day_config, 7,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.BusinessDayConfig,
    json_name: "handlingBusinessDayConfig"

  field :transit_business_day_config, 8,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.BusinessDayConfig,
    json_name: "transitBusinessDayConfig"

  field :warehouse_based_delivery_times, 9,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.WarehouseBasedDeliveryTime,
    json_name: "warehouseBasedDeliveryTimes",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.CutoffTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hour, 1, proto3_optional: true, type: :int32, deprecated: false
  field :minute, 2, proto3_optional: true, type: :int32, deprecated: false

  field :time_zone, 3,
    proto3_optional: true,
    type: :string,
    json_name: "timeZone",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.BusinessDayConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :business_days, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.BusinessDayConfig.Weekday,
    json_name: "businessDays",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.WarehouseBasedDeliveryTime do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :carrier, 1, proto3_optional: true, type: :string, deprecated: false

  field :carrier_service, 2,
    proto3_optional: true,
    type: :string,
    json_name: "carrierService",
    deprecated: false

  field :warehouse, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.RateGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :applicable_shipping_labels, 1,
    repeated: true,
    type: :string,
    json_name: "applicableShippingLabels",
    deprecated: false

  field :single_value, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Value,
    json_name: "singleValue"

  field :main_table, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Table,
    json_name: "mainTable"

  field :subtables, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.Table,
    deprecated: false

  field :carrier_rates, 5,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.CarrierRate,
    json_name: "carrierRates",
    deprecated: false

  field :name, 6, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Table do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string

  field :row_headers, 2,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Headers,
    json_name: "rowHeaders",
    deprecated: false

  field :column_headers, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Headers,
    json_name: "columnHeaders"

  field :rows, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.Row,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.TransitTable.TransitTimeRow.TransitTimeValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min_transit_days, 1, proto3_optional: true, type: :int32, json_name: "minTransitDays"
  field :max_transit_days, 2, proto3_optional: true, type: :int32, json_name: "maxTransitDays"
end

defmodule Google.Shopping.Merchant.Accounts.V1.TransitTable.TransitTimeRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.TransitTable.TransitTimeRow.TransitTimeValue,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.TransitTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
    type: Google.Shopping.Merchant.Accounts.V1.TransitTable.TransitTimeRow,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.MinimumOrderValueTable.StoreCodeSetWithMov do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :store_codes, 1, repeated: true, type: :string, json_name: "storeCodes", deprecated: false
  field :value, 2, proto3_optional: true, type: Google.Shopping.Type.Price
end

defmodule Google.Shopping.Merchant.Accounts.V1.MinimumOrderValueTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :store_code_set_with_movs, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.MinimumOrderValueTable.StoreCodeSetWithMov,
    json_name: "storeCodeSetWithMovs",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Headers do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
    type: Google.Shopping.Merchant.Accounts.V1.LocationIdSet,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.LocationIdSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location_ids, 1,
    repeated: true,
    type: :string,
    json_name: "locationIds",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cells, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.Value,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :no_shipping, 1, proto3_optional: true, type: :bool, json_name: "noShipping"

  field :flat_rate, 2,
    proto3_optional: true,
    type: Google.Shopping.Type.Price,
    json_name: "flatRate"

  field :price_percentage, 3, proto3_optional: true, type: :string, json_name: "pricePercentage"
  field :carrier_rate, 4, proto3_optional: true, type: :string, json_name: "carrierRate"
  field :subtable, 5, proto3_optional: true, type: :string
end

defmodule Google.Shopping.Merchant.Accounts.V1.CarrierRate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Shopping.Merchant.Accounts.V1.GetShippingSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.InsertShippingSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :shipping_setting, 2,
    type: Google.Shopping.Merchant.Accounts.V1.ShippingSettings,
    json_name: "shippingSetting",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ShippingSettingsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.ShippingSettingsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetShippingSettings,
      Google.Shopping.Merchant.Accounts.V1.GetShippingSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1.ShippingSettings

  rpc :InsertShippingSettings,
      Google.Shopping.Merchant.Accounts.V1.InsertShippingSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1.ShippingSettings
end

defmodule Google.Shopping.Merchant.Accounts.V1.ShippingSettingsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.ShippingSettingsService.Service
end
