defmodule Google.Ads.Googleads.V4.Resources.CustomerNegativeCriterion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          criterion: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          type: Google.Ads.Googleads.V4.Enums.CriterionTypeEnum.CriterionType.t()
        }

  defstruct [:criterion, :resource_name, :id, :type]

  oneof :criterion, 0
  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :type, 3, type: Google.Ads.Googleads.V4.Enums.CriterionTypeEnum.CriterionType, enum: true
  field :content_label, 4, type: Google.Ads.Googleads.V4.Common.ContentLabelInfo, oneof: 0

  field :mobile_application, 5,
    type: Google.Ads.Googleads.V4.Common.MobileApplicationInfo,
    oneof: 0

  field :mobile_app_category, 6,
    type: Google.Ads.Googleads.V4.Common.MobileAppCategoryInfo,
    oneof: 0

  field :placement, 7, type: Google.Ads.Googleads.V4.Common.PlacementInfo, oneof: 0
  field :youtube_video, 8, type: Google.Ads.Googleads.V4.Common.YouTubeVideoInfo, oneof: 0
  field :youtube_channel, 9, type: Google.Ads.Googleads.V4.Common.YouTubeChannelInfo, oneof: 0
end
