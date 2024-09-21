defmodule Google.Ads.Googleads.V16.Services.MutateAdGroupCriteriaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V16.Services.AdGroupCriterionOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V16.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V16.Services.AdGroupCriterionOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :exempt_policy_violation_keys, 5,
    repeated: true,
    type: Google.Ads.Googleads.V16.Common.PolicyViolationKey,
    json_name: "exemptPolicyViolationKeys"

  field :create, 1, type: Google.Ads.Googleads.V16.Resources.AdGroupCriterion, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V16.Resources.AdGroupCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V16.Services.MutateAdGroupCriteriaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V16.Services.MutateAdGroupCriterionResult
end

defmodule Google.Ads.Googleads.V16.Services.MutateAdGroupCriterionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_criterion, 2,
    type: Google.Ads.Googleads.V16.Resources.AdGroupCriterion,
    json_name: "adGroupCriterion"
end

defmodule Google.Ads.Googleads.V16.Services.AdGroupCriterionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v16.services.AdGroupCriterionService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :MutateAdGroupCriteria,
      Google.Ads.Googleads.V16.Services.MutateAdGroupCriteriaRequest,
      Google.Ads.Googleads.V16.Services.MutateAdGroupCriteriaResponse
end

defmodule Google.Ads.Googleads.V16.Services.AdGroupCriterionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V16.Services.AdGroupCriterionService.Service
end