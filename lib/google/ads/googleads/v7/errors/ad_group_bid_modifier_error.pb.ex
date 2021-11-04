defmodule Google.Ads.Googleads.V7.Errors.AdGroupBidModifierErrorEnum.AdGroupBidModifierError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CRITERION_ID_NOT_SUPPORTED
          | :CANNOT_OVERRIDE_OPTED_OUT_CAMPAIGN_CRITERION_BID_MODIFIER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CRITERION_ID_NOT_SUPPORTED, 2
  field :CANNOT_OVERRIDE_OPTED_OUT_CAMPAIGN_CRITERION_BID_MODIFIER, 3
end

defmodule Google.Ads.Googleads.V7.Errors.AdGroupBidModifierErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
