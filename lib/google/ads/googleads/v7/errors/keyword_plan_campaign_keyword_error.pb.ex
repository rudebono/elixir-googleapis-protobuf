defmodule Google.Ads.Googleads.V7.Errors.KeywordPlanCampaignKeywordErrorEnum.KeywordPlanCampaignKeywordError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CAMPAIGN_KEYWORD_IS_POSITIVE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CAMPAIGN_KEYWORD_IS_POSITIVE, 8
end

defmodule Google.Ads.Googleads.V7.Errors.KeywordPlanCampaignKeywordErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
