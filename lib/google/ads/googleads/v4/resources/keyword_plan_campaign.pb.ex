defmodule Google.Ads.Googleads.V4.Resources.KeywordPlanCampaign do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan: Google.Protobuf.StringValue.t() | nil,
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          language_constants: [Google.Protobuf.StringValue.t()],
          keyword_plan_network:
            Google.Ads.Googleads.V4.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork.t(),
          cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          geo_targets: [Google.Ads.Googleads.V4.Resources.KeywordPlanGeoTarget.t()]
        }

  defstruct [
    :resource_name,
    :keyword_plan,
    :id,
    :name,
    :language_constants,
    :keyword_plan_network,
    :cpc_bid_micros,
    :geo_targets
  ]

  field :resource_name, 1, type: :string
  field :keyword_plan, 2, type: Google.Protobuf.StringValue
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue
  field :language_constants, 5, repeated: true, type: Google.Protobuf.StringValue

  field :keyword_plan_network, 6,
    type: Google.Ads.Googleads.V4.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    enum: true

  field :cpc_bid_micros, 7, type: Google.Protobuf.Int64Value

  field :geo_targets, 8,
    repeated: true,
    type: Google.Ads.Googleads.V4.Resources.KeywordPlanGeoTarget
end

defmodule Google.Ads.Googleads.V4.Resources.KeywordPlanGeoTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          geo_target_constant: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:geo_target_constant]

  field :geo_target_constant, 1, type: Google.Protobuf.StringValue
end
