defmodule Google.Ads.Googleads.V11.Services.MutateAdGroupCriterionCustomizersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.AdGroupCriterionCustomizerOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Services.AdGroupCriterionCustomizerOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V11.Resources.AdGroupCriterionCustomizer, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.MutateAdGroupCriterionCustomizersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.MutateAdGroupCriterionCustomizerResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end
defmodule Google.Ads.Googleads.V11.Services.MutateAdGroupCriterionCustomizerResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_criterion_customizer, 2,
    type: Google.Ads.Googleads.V11.Resources.AdGroupCriterionCustomizer,
    json_name: "adGroupCriterionCustomizer"
end
defmodule Google.Ads.Googleads.V11.Services.AdGroupCriterionCustomizerService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v11.services.AdGroupCriterionCustomizerService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :MutateAdGroupCriterionCustomizers,
      Google.Ads.Googleads.V11.Services.MutateAdGroupCriterionCustomizersRequest,
      Google.Ads.Googleads.V11.Services.MutateAdGroupCriterionCustomizersResponse
end

defmodule Google.Ads.Googleads.V11.Services.AdGroupCriterionCustomizerService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V11.Services.AdGroupCriterionCustomizerService.Service
end
