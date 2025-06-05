defmodule Google.Ads.Googleads.V20.Services.MutateRecommendationSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.RecommendationSubscriptionOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V20.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V20.Services.RecommendationSubscriptionOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :create, 1, type: Google.Ads.Googleads.V20.Resources.RecommendationSubscription, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V20.Resources.RecommendationSubscription, oneof: 0
end

defmodule Google.Ads.Googleads.V20.Services.MutateRecommendationSubscriptionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Services.MutateRecommendationSubscriptionResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V20.Services.MutateRecommendationSubscriptionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :recommendation_subscription, 2,
    type: Google.Ads.Googleads.V20.Resources.RecommendationSubscription,
    json_name: "recommendationSubscription"
end

defmodule Google.Ads.Googleads.V20.Services.RecommendationSubscriptionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.RecommendationSubscriptionService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateRecommendationSubscription,
      Google.Ads.Googleads.V20.Services.MutateRecommendationSubscriptionRequest,
      Google.Ads.Googleads.V20.Services.MutateRecommendationSubscriptionResponse
end

defmodule Google.Ads.Googleads.V20.Services.RecommendationSubscriptionService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Ads.Googleads.V20.Services.RecommendationSubscriptionService.Service
end
