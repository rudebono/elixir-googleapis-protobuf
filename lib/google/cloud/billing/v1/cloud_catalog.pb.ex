defmodule Google.Cloud.Billing.V1.AggregationInfo.AggregationLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AGGREGATION_LEVEL_UNSPECIFIED | :ACCOUNT | :PROJECT

  field :AGGREGATION_LEVEL_UNSPECIFIED, 0
  field :ACCOUNT, 1
  field :PROJECT, 2
end

defmodule Google.Cloud.Billing.V1.AggregationInfo.AggregationInterval do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AGGREGATION_INTERVAL_UNSPECIFIED | :DAILY | :MONTHLY

  field :AGGREGATION_INTERVAL_UNSPECIFIED, 0
  field :DAILY, 1
  field :MONTHLY, 2
end

defmodule Google.Cloud.Billing.V1.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          service_id: String.t(),
          display_name: String.t(),
          business_entity_name: String.t()
        }

  defstruct [:name, :service_id, :display_name, :business_entity_name]

  field :name, 1, type: :string
  field :service_id, 2, type: :string, json_name: "serviceId"
  field :display_name, 3, type: :string, json_name: "displayName"
  field :business_entity_name, 4, type: :string, json_name: "businessEntityName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.Sku do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          sku_id: String.t(),
          description: String.t(),
          category: Google.Cloud.Billing.V1.Category.t() | nil,
          service_regions: [String.t()],
          pricing_info: [Google.Cloud.Billing.V1.PricingInfo.t()],
          service_provider_name: String.t()
        }

  defstruct [
    :name,
    :sku_id,
    :description,
    :category,
    :service_regions,
    :pricing_info,
    :service_provider_name
  ]

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.Category do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_display_name: String.t(),
          resource_family: String.t(),
          resource_group: String.t(),
          usage_type: String.t()
        }

  defstruct [:service_display_name, :resource_family, :resource_group, :usage_type]

  field :service_display_name, 1, type: :string, json_name: "serviceDisplayName"
  field :resource_family, 2, type: :string, json_name: "resourceFamily"
  field :resource_group, 3, type: :string, json_name: "resourceGroup"
  field :usage_type, 4, type: :string, json_name: "usageType"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.PricingInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          effective_time: Google.Protobuf.Timestamp.t() | nil,
          summary: String.t(),
          pricing_expression: Google.Cloud.Billing.V1.PricingExpression.t() | nil,
          aggregation_info: Google.Cloud.Billing.V1.AggregationInfo.t() | nil,
          currency_conversion_rate: float | :infinity | :negative_infinity | :nan
        }

  defstruct [
    :effective_time,
    :summary,
    :pricing_expression,
    :aggregation_info,
    :currency_conversion_rate
  ]

  field :effective_time, 1, type: Google.Protobuf.Timestamp, json_name: "effectiveTime"
  field :summary, 2, type: :string

  field :pricing_expression, 3,
    type: Google.Cloud.Billing.V1.PricingExpression,
    json_name: "pricingExpression"

  field :aggregation_info, 4,
    type: Google.Cloud.Billing.V1.AggregationInfo,
    json_name: "aggregationInfo"

  field :currency_conversion_rate, 5, type: :double, json_name: "currencyConversionRate"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.PricingExpression.TierRate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_usage_amount: float | :infinity | :negative_infinity | :nan,
          unit_price: Google.Type.Money.t() | nil
        }

  defstruct [:start_usage_amount, :unit_price]

  field :start_usage_amount, 1, type: :double, json_name: "startUsageAmount"
  field :unit_price, 2, type: Google.Type.Money, json_name: "unitPrice"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.PricingExpression do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          usage_unit: String.t(),
          usage_unit_description: String.t(),
          base_unit: String.t(),
          base_unit_description: String.t(),
          base_unit_conversion_factor: float | :infinity | :negative_infinity | :nan,
          display_quantity: float | :infinity | :negative_infinity | :nan,
          tiered_rates: [Google.Cloud.Billing.V1.PricingExpression.TierRate.t()]
        }

  defstruct [
    :usage_unit,
    :usage_unit_description,
    :base_unit,
    :base_unit_description,
    :base_unit_conversion_factor,
    :display_quantity,
    :tiered_rates
  ]

  field :usage_unit, 1, type: :string, json_name: "usageUnit"
  field :usage_unit_description, 4, type: :string, json_name: "usageUnitDescription"
  field :base_unit, 5, type: :string, json_name: "baseUnit"
  field :base_unit_description, 6, type: :string, json_name: "baseUnitDescription"
  field :base_unit_conversion_factor, 7, type: :double, json_name: "baseUnitConversionFactor"
  field :display_quantity, 2, type: :double, json_name: "displayQuantity"

  field :tiered_rates, 3,
    repeated: true,
    type: Google.Cloud.Billing.V1.PricingExpression.TierRate,
    json_name: "tieredRates"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.AggregationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aggregation_level: Google.Cloud.Billing.V1.AggregationInfo.AggregationLevel.t(),
          aggregation_interval: Google.Cloud.Billing.V1.AggregationInfo.AggregationInterval.t(),
          aggregation_count: integer
        }

  defstruct [:aggregation_level, :aggregation_interval, :aggregation_count]

  field :aggregation_level, 1,
    type: Google.Cloud.Billing.V1.AggregationInfo.AggregationLevel,
    enum: true,
    json_name: "aggregationLevel"

  field :aggregation_interval, 2,
    type: Google.Cloud.Billing.V1.AggregationInfo.AggregationInterval,
    enum: true,
    json_name: "aggregationInterval"

  field :aggregation_count, 3, type: :int32, json_name: "aggregationCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.ListServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Cloud.Billing.V1.Service.t()],
          next_page_token: String.t()
        }

  defstruct [:services, :next_page_token]

  field :services, 1, repeated: true, type: Google.Cloud.Billing.V1.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.ListSkusRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          currency_code: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :start_time, :end_time, :currency_code, :page_size, :page_token]

  field :parent, 1, type: :string
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :currency_code, 4, type: :string, json_name: "currencyCode"
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.ListSkusResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          skus: [Google.Cloud.Billing.V1.Sku.t()],
          next_page_token: String.t()
        }

  defstruct [:skus, :next_page_token]

  field :skus, 1, repeated: true, type: Google.Cloud.Billing.V1.Sku
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Billing.V1.CloudCatalog.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.billing.v1.CloudCatalog"

  rpc :ListServices,
      Google.Cloud.Billing.V1.ListServicesRequest,
      Google.Cloud.Billing.V1.ListServicesResponse

  rpc :ListSkus, Google.Cloud.Billing.V1.ListSkusRequest, Google.Cloud.Billing.V1.ListSkusResponse
end

defmodule Google.Cloud.Billing.V1.CloudCatalog.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Billing.V1.CloudCatalog.Service
end
