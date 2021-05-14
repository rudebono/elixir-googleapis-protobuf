defmodule Google.Ads.Googleads.V5.Resources.CampaignFeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed: Google.Protobuf.StringValue.t() | nil,
          campaign: Google.Protobuf.StringValue.t() | nil,
          placeholder_types: [
            [Google.Ads.Googleads.V5.Enums.PlaceholderTypeEnum.PlaceholderType.t()]
          ],
          matching_function: Google.Ads.Googleads.V5.Common.MatchingFunction.t() | nil,
          status: Google.Ads.Googleads.V5.Enums.FeedLinkStatusEnum.FeedLinkStatus.t()
        }

  defstruct [:resource_name, :feed, :campaign, :placeholder_types, :matching_function, :status]

  field :resource_name, 1, type: :string
  field :feed, 2, type: Google.Protobuf.StringValue
  field :campaign, 3, type: Google.Protobuf.StringValue

  field :placeholder_types, 4,
    repeated: true,
    type: Google.Ads.Googleads.V5.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true

  field :matching_function, 5, type: Google.Ads.Googleads.V5.Common.MatchingFunction

  field :status, 6,
    type: Google.Ads.Googleads.V5.Enums.FeedLinkStatusEnum.FeedLinkStatus,
    enum: true
end
