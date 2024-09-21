defmodule Google.Ads.Googleads.V17.Resources.RecommendationSubscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :type, 2,
    type: Google.Ads.Googleads.V17.Enums.RecommendationTypeEnum.RecommendationType,
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
      Google.Ads.Googleads.V17.Enums.RecommendationSubscriptionStatusEnum.RecommendationSubscriptionStatus,
    enum: true,
    deprecated: false
end