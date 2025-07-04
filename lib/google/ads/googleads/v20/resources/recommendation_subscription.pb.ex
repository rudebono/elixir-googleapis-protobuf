defmodule Google.Ads.Googleads.V20.Resources.RecommendationSubscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :type, 2,
    type: Google.Ads.Googleads.V20.Enums.RecommendationTypeEnum.RecommendationType,
    enum: true,
    deprecated: false

  field :create_date_time, 3,
    proto3_optional: true,
    type: :string,
    json_name: "createDateTime",
    deprecated: false

  field :modify_date_time, 4,
    proto3_optional: true,
    type: :string,
    json_name: "modifyDateTime",
    deprecated: false

  field :status, 5,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V20.Enums.RecommendationSubscriptionStatusEnum.RecommendationSubscriptionStatus,
    enum: true,
    deprecated: false
end
