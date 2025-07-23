defmodule Google.Cloud.Billing.V1.AggregationInfo.AggregationLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AGGREGATION_LEVEL_UNSPECIFIED, 0
  field :ACCOUNT, 1
  field :PROJECT, 2
end

defmodule Google.Cloud.Billing.V1.AggregationInfo.AggregationInterval do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AGGREGATION_INTERVAL_UNSPECIFIED, 0
  field :DAILY, 1
  field :MONTHLY, 2
end

defmodule Google.Cloud.Billing.V1.GeoTaxonomy.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :GLOBAL, 1
  field :REGIONAL, 2
  field :MULTI_REGIONAL, 3
end

defmodule Google.Cloud.Billing.V1.Service do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :service_id, 2, type: :string, json_name: "serviceId"
  field :display_name, 3, type: :string, json_name: "displayName"
  field :business_entity_name, 4, type: :string, json_name: "businessEntityName"
end

defmodule Google.Cloud.Billing.V1.Sku do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :sku_id, 2, type: :string, json_name: "skuId"
  field :description, 3, type: :string
  field :category, 4, type: Google.Cloud.Billing.V1.Category
  field :service_regions, 5, repeated: true, type: :string, json_name: "serviceRegions"

  field :pricing_info, 6,
    repeated: true,
    type: Google.Cloud.Billing.V1.PricingInfo,
    json_name: "pricingInfo"

  field :service_provider_name, 7, type: :string, json_name: "serviceProviderName"
  field :geo_taxonomy, 8, type: Google.Cloud.Billing.V1.GeoTaxonomy, json_name: "geoTaxonomy"
end

defmodule Google.Cloud.Billing.V1.Category do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_display_name, 1, type: :string, json_name: "serviceDisplayName"
  field :resource_family, 2, type: :string, json_name: "resourceFamily"
  field :resource_group, 3, type: :string, json_name: "resourceGroup"
  field :usage_type, 4, type: :string, json_name: "usageType"
end

defmodule Google.Cloud.Billing.V1.PricingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :effective_time, 1, type: Google.Protobuf.Timestamp, json_name: "effectiveTime"
  field :summary, 2, type: :string

  field :pricing_expression, 3,
    type: Google.Cloud.Billing.V1.PricingExpression,
    json_name: "pricingExpression"

  field :aggregation_info, 4,
    type: Google.Cloud.Billing.V1.AggregationInfo,
    json_name: "aggregationInfo"

  field :currency_conversion_rate, 5, type: :double, json_name: "currencyConversionRate"
end

defmodule Google.Cloud.Billing.V1.PricingExpression.TierRate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_usage_amount, 1, type: :double, json_name: "startUsageAmount"
  field :unit_price, 2, type: Google.Type.Money, json_name: "unitPrice"
end

defmodule Google.Cloud.Billing.V1.PricingExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :usage_unit, 1, type: :string, json_name: "usageUnit"
  field :display_quantity, 2, type: :double, json_name: "displayQuantity"

  field :tiered_rates, 3,
    repeated: true,
    type: Google.Cloud.Billing.V1.PricingExpression.TierRate,
    json_name: "tieredRates"

  field :usage_unit_description, 4, type: :string, json_name: "usageUnitDescription"
  field :base_unit, 5, type: :string, json_name: "baseUnit"
  field :base_unit_description, 6, type: :string, json_name: "baseUnitDescription"
  field :base_unit_conversion_factor, 7, type: :double, json_name: "baseUnitConversionFactor"
end

defmodule Google.Cloud.Billing.V1.AggregationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aggregation_level, 1,
    type: Google.Cloud.Billing.V1.AggregationInfo.AggregationLevel,
    json_name: "aggregationLevel",
    enum: true

  field :aggregation_interval, 2,
    type: Google.Cloud.Billing.V1.AggregationInfo.AggregationInterval,
    json_name: "aggregationInterval",
    enum: true

  field :aggregation_count, 3, type: :int32, json_name: "aggregationCount"
end

defmodule Google.Cloud.Billing.V1.GeoTaxonomy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Billing.V1.GeoTaxonomy.Type, enum: true
  field :regions, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Billing.V1.ListServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Billing.V1.ListServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Cloud.Billing.V1.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Billing.V1.ListSkusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :currency_code, 4, type: :string, json_name: "currencyCode"
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Billing.V1.ListSkusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :skus, 1, repeated: true, type: Google.Cloud.Billing.V1.Sku
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Billing.V1.CloudCatalog.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.billing.v1.CloudCatalog",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListServices,
      Google.Cloud.Billing.V1.ListServicesRequest,
      Google.Cloud.Billing.V1.ListServicesResponse

  rpc :ListSkus, Google.Cloud.Billing.V1.ListSkusRequest, Google.Cloud.Billing.V1.ListSkusResponse
end

defmodule Google.Cloud.Billing.V1.CloudCatalog.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Billing.V1.CloudCatalog.Service
end
