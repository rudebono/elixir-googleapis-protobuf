defmodule Google.Ads.Googleads.V7.Enums.PolicyTopicEvidenceDestinationMismatchUrlTypeEnum.PolicyTopicEvidenceDestinationMismatchUrlType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DISPLAY_URL
          | :FINAL_URL
          | :FINAL_MOBILE_URL
          | :TRACKING_URL
          | :MOBILE_TRACKING_URL

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DISPLAY_URL, 2
  field :FINAL_URL, 3
  field :FINAL_MOBILE_URL, 4
  field :TRACKING_URL, 5
  field :MOBILE_TRACKING_URL, 6
end

defmodule Google.Ads.Googleads.V7.Enums.PolicyTopicEvidenceDestinationMismatchUrlTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
