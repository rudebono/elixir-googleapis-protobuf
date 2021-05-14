defmodule Google.Cloud.Channel.V1.PromotionalOrderType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :PROMOTIONAL_TYPE_UNSPECIFIED | :NEW_UPGRADE | :TRANSFER | :PROMOTION_SWITCH

  field :PROMOTIONAL_TYPE_UNSPECIFIED, 0

  field :NEW_UPGRADE, 1

  field :TRANSFER, 2

  field :PROMOTION_SWITCH, 3
end

defmodule Google.Cloud.Channel.V1.PaymentPlan do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PAYMENT_PLAN_UNSPECIFIED
          | :COMMITMENT
          | :FLEXIBLE
          | :FREE
          | :TRIAL
          | :OFFLINE

  field :PAYMENT_PLAN_UNSPECIFIED, 0

  field :COMMITMENT, 1

  field :FLEXIBLE, 2

  field :FREE, 3

  field :TRIAL, 4

  field :OFFLINE, 5
end

defmodule Google.Cloud.Channel.V1.PaymentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PAYMENT_TYPE_UNSPECIFIED | :PREPAY | :POSTPAY

  field :PAYMENT_TYPE_UNSPECIFIED, 0

  field :PREPAY, 1

  field :POSTPAY, 2
end

defmodule Google.Cloud.Channel.V1.ResourceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :RESOURCE_TYPE_UNSPECIFIED
          | :SEAT
          | :MAU
          | :GB
          | :LICENSED_USER
          | :MINUTES
          | :IAAS_USAGE
          | :SUBSCRIPTION

  field :RESOURCE_TYPE_UNSPECIFIED, 0

  field :SEAT, 1

  field :MAU, 2

  field :GB, 3

  field :LICENSED_USER, 4

  field :MINUTES, 5

  field :IAAS_USAGE, 6

  field :SUBSCRIPTION, 7
end

defmodule Google.Cloud.Channel.V1.PeriodType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PERIOD_TYPE_UNSPECIFIED | :DAY | :MONTH | :YEAR

  field :PERIOD_TYPE_UNSPECIFIED, 0

  field :DAY, 1

  field :MONTH, 2

  field :YEAR, 3
end

defmodule Google.Cloud.Channel.V1.ParameterDefinition.ParameterType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PARAMETER_TYPE_UNSPECIFIED | :INT64 | :STRING | :DOUBLE

  field :PARAMETER_TYPE_UNSPECIFIED, 0

  field :INT64, 1

  field :STRING, 2

  field :DOUBLE, 3
end

defmodule Google.Cloud.Channel.V1.Offer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          marketing_info: Google.Cloud.Channel.V1.MarketingInfo.t() | nil,
          sku: Google.Cloud.Channel.V1.Sku.t() | nil,
          plan: Google.Cloud.Channel.V1.Plan.t() | nil,
          constraints: Google.Cloud.Channel.V1.Constraints.t() | nil,
          price_by_resources: [Google.Cloud.Channel.V1.PriceByResource.t()],
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          parameter_definitions: [Google.Cloud.Channel.V1.ParameterDefinition.t()]
        }

  defstruct [
    :name,
    :marketing_info,
    :sku,
    :plan,
    :constraints,
    :price_by_resources,
    :start_time,
    :end_time,
    :parameter_definitions
  ]

  field :name, 1, type: :string
  field :marketing_info, 2, type: Google.Cloud.Channel.V1.MarketingInfo
  field :sku, 3, type: Google.Cloud.Channel.V1.Sku
  field :plan, 4, type: Google.Cloud.Channel.V1.Plan
  field :constraints, 5, type: Google.Cloud.Channel.V1.Constraints
  field :price_by_resources, 6, repeated: true, type: Google.Cloud.Channel.V1.PriceByResource
  field :start_time, 7, type: Google.Protobuf.Timestamp
  field :end_time, 8, type: Google.Protobuf.Timestamp

  field :parameter_definitions, 9,
    repeated: true,
    type: Google.Cloud.Channel.V1.ParameterDefinition
end

defmodule Google.Cloud.Channel.V1.ParameterDefinition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parameter_type: Google.Cloud.Channel.V1.ParameterDefinition.ParameterType.t(),
          min_value: Google.Cloud.Channel.V1.Value.t() | nil,
          max_value: Google.Cloud.Channel.V1.Value.t() | nil,
          allowed_values: [Google.Cloud.Channel.V1.Value.t()],
          optional: boolean
        }

  defstruct [:name, :parameter_type, :min_value, :max_value, :allowed_values, :optional]

  field :name, 1, type: :string

  field :parameter_type, 2,
    type: Google.Cloud.Channel.V1.ParameterDefinition.ParameterType,
    enum: true

  field :min_value, 3, type: Google.Cloud.Channel.V1.Value
  field :max_value, 4, type: Google.Cloud.Channel.V1.Value
  field :allowed_values, 5, repeated: true, type: Google.Cloud.Channel.V1.Value
  field :optional, 6, type: :bool
end

defmodule Google.Cloud.Channel.V1.Constraints do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_constraints: Google.Cloud.Channel.V1.CustomerConstraints.t() | nil
        }

  defstruct [:customer_constraints]

  field :customer_constraints, 1, type: Google.Cloud.Channel.V1.CustomerConstraints
end

defmodule Google.Cloud.Channel.V1.CustomerConstraints do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_regions: [String.t()],
          allowed_customer_types: [[Google.Cloud.Channel.V1.CloudIdentityInfo.CustomerType.t()]],
          promotional_order_types: [[Google.Cloud.Channel.V1.PromotionalOrderType.t()]]
        }

  defstruct [:allowed_regions, :allowed_customer_types, :promotional_order_types]

  field :allowed_regions, 1, repeated: true, type: :string

  field :allowed_customer_types, 2,
    repeated: true,
    type: Google.Cloud.Channel.V1.CloudIdentityInfo.CustomerType,
    enum: true

  field :promotional_order_types, 3,
    repeated: true,
    type: Google.Cloud.Channel.V1.PromotionalOrderType,
    enum: true
end

defmodule Google.Cloud.Channel.V1.Plan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payment_plan: Google.Cloud.Channel.V1.PaymentPlan.t(),
          payment_type: Google.Cloud.Channel.V1.PaymentType.t(),
          payment_cycle: Google.Cloud.Channel.V1.Period.t() | nil,
          trial_period: Google.Cloud.Channel.V1.Period.t() | nil,
          billing_account: String.t()
        }

  defstruct [:payment_plan, :payment_type, :payment_cycle, :trial_period, :billing_account]

  field :payment_plan, 1, type: Google.Cloud.Channel.V1.PaymentPlan, enum: true
  field :payment_type, 2, type: Google.Cloud.Channel.V1.PaymentType, enum: true
  field :payment_cycle, 3, type: Google.Cloud.Channel.V1.Period
  field :trial_period, 4, type: Google.Cloud.Channel.V1.Period
  field :billing_account, 5, type: :string
end

defmodule Google.Cloud.Channel.V1.PriceByResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_type: Google.Cloud.Channel.V1.ResourceType.t(),
          price: Google.Cloud.Channel.V1.Price.t() | nil,
          price_phases: [Google.Cloud.Channel.V1.PricePhase.t()]
        }

  defstruct [:resource_type, :price, :price_phases]

  field :resource_type, 1, type: Google.Cloud.Channel.V1.ResourceType, enum: true
  field :price, 2, type: Google.Cloud.Channel.V1.Price
  field :price_phases, 3, repeated: true, type: Google.Cloud.Channel.V1.PricePhase
end

defmodule Google.Cloud.Channel.V1.Price do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_price: Google.Type.Money.t() | nil,
          discount: float | :infinity | :negative_infinity | :nan,
          effective_price: Google.Type.Money.t() | nil,
          external_price_uri: String.t()
        }

  defstruct [:base_price, :discount, :effective_price, :external_price_uri]

  field :base_price, 1, type: Google.Type.Money
  field :discount, 2, type: :double
  field :effective_price, 3, type: Google.Type.Money
  field :external_price_uri, 4, type: :string
end

defmodule Google.Cloud.Channel.V1.PricePhase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          period_type: Google.Cloud.Channel.V1.PeriodType.t(),
          first_period: integer,
          last_period: integer,
          price: Google.Cloud.Channel.V1.Price.t() | nil,
          price_tiers: [Google.Cloud.Channel.V1.PriceTier.t()]
        }

  defstruct [:period_type, :first_period, :last_period, :price, :price_tiers]

  field :period_type, 1, type: Google.Cloud.Channel.V1.PeriodType, enum: true
  field :first_period, 2, type: :int32
  field :last_period, 3, type: :int32
  field :price, 4, type: Google.Cloud.Channel.V1.Price
  field :price_tiers, 5, repeated: true, type: Google.Cloud.Channel.V1.PriceTier
end

defmodule Google.Cloud.Channel.V1.PriceTier do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          first_resource: integer,
          last_resource: integer,
          price: Google.Cloud.Channel.V1.Price.t() | nil
        }

  defstruct [:first_resource, :last_resource, :price]

  field :first_resource, 1, type: :int32
  field :last_resource, 2, type: :int32
  field :price, 3, type: Google.Cloud.Channel.V1.Price
end

defmodule Google.Cloud.Channel.V1.Period do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          duration: integer,
          period_type: Google.Cloud.Channel.V1.PeriodType.t()
        }

  defstruct [:duration, :period_type]

  field :duration, 1, type: :int32
  field :period_type, 2, type: Google.Cloud.Channel.V1.PeriodType, enum: true
end
