defmodule Google.Ads.Googleads.V7.Enums.RecommendationTypeEnum.RecommendationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CAMPAIGN_BUDGET
          | :KEYWORD
          | :TEXT_AD
          | :TARGET_CPA_OPT_IN
          | :MAXIMIZE_CONVERSIONS_OPT_IN
          | :ENHANCED_CPC_OPT_IN
          | :SEARCH_PARTNERS_OPT_IN
          | :MAXIMIZE_CLICKS_OPT_IN
          | :OPTIMIZE_AD_ROTATION
          | :CALLOUT_EXTENSION
          | :SITELINK_EXTENSION
          | :CALL_EXTENSION
          | :KEYWORD_MATCH_TYPE
          | :MOVE_UNUSED_BUDGET
          | :FORECASTING_CAMPAIGN_BUDGET
          | :TARGET_ROAS_OPT_IN
          | :RESPONSIVE_SEARCH_AD
          | :MARGINAL_ROI_CAMPAIGN_BUDGET

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CAMPAIGN_BUDGET, 2
  field :KEYWORD, 3
  field :TEXT_AD, 4
  field :TARGET_CPA_OPT_IN, 5
  field :MAXIMIZE_CONVERSIONS_OPT_IN, 6
  field :ENHANCED_CPC_OPT_IN, 7
  field :SEARCH_PARTNERS_OPT_IN, 8
  field :MAXIMIZE_CLICKS_OPT_IN, 9
  field :OPTIMIZE_AD_ROTATION, 10
  field :CALLOUT_EXTENSION, 11
  field :SITELINK_EXTENSION, 12
  field :CALL_EXTENSION, 13
  field :KEYWORD_MATCH_TYPE, 14
  field :MOVE_UNUSED_BUDGET, 15
  field :FORECASTING_CAMPAIGN_BUDGET, 16
  field :TARGET_ROAS_OPT_IN, 17
  field :RESPONSIVE_SEARCH_AD, 18
  field :MARGINAL_ROI_CAMPAIGN_BUDGET, 19
end

defmodule Google.Ads.Googleads.V7.Enums.RecommendationTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
