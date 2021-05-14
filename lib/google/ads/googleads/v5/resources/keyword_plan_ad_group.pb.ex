defmodule Google.Ads.Googleads.V5.Resources.KeywordPlanAdGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_campaign: Google.Protobuf.StringValue.t() | nil,
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:resource_name, :keyword_plan_campaign, :id, :name, :cpc_bid_micros]

  field :resource_name, 1, type: :string
  field :keyword_plan_campaign, 2, type: Google.Protobuf.StringValue
  field :id, 3, type: Google.Protobuf.Int64Value
  field :name, 4, type: Google.Protobuf.StringValue
  field :cpc_bid_micros, 5, type: Google.Protobuf.Int64Value
end
