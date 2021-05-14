defmodule Google.Ads.Googleads.V5.Resources.KeywordPlanAdGroupKeyword do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          keyword_plan_ad_group: Google.Protobuf.StringValue.t() | nil,
          id: Google.Protobuf.Int64Value.t() | nil,
          text: Google.Protobuf.StringValue.t() | nil,
          match_type: Google.Ads.Googleads.V5.Enums.KeywordMatchTypeEnum.KeywordMatchType.t(),
          cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil,
          negative: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :resource_name,
    :keyword_plan_ad_group,
    :id,
    :text,
    :match_type,
    :cpc_bid_micros,
    :negative
  ]

  field :resource_name, 1, type: :string
  field :keyword_plan_ad_group, 2, type: Google.Protobuf.StringValue
  field :id, 3, type: Google.Protobuf.Int64Value
  field :text, 4, type: Google.Protobuf.StringValue

  field :match_type, 5,
    type: Google.Ads.Googleads.V5.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :cpc_bid_micros, 6, type: Google.Protobuf.Int64Value
  field :negative, 7, type: Google.Protobuf.BoolValue
end
