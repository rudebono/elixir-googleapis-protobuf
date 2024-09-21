defmodule Google.Ads.Googleads.V16.Services.MutateCustomerNegativeCriteriaRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V16.Services.CustomerNegativeCriterionOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V16.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V16.Services.CustomerNegativeCriterionOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V16.Resources.CustomerNegativeCriterion, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V16.Services.MutateCustomerNegativeCriteriaResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V16.Services.MutateCustomerNegativeCriteriaResult
end

defmodule Google.Ads.Googleads.V16.Services.MutateCustomerNegativeCriteriaResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :customer_negative_criterion, 2,
    type: Google.Ads.Googleads.V16.Resources.CustomerNegativeCriterion,
    json_name: "customerNegativeCriterion"
end

defmodule Google.Ads.Googleads.V16.Services.CustomerNegativeCriterionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v16.services.CustomerNegativeCriterionService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :MutateCustomerNegativeCriteria,
      Google.Ads.Googleads.V16.Services.MutateCustomerNegativeCriteriaRequest,
      Google.Ads.Googleads.V16.Services.MutateCustomerNegativeCriteriaResponse
end

defmodule Google.Ads.Googleads.V16.Services.CustomerNegativeCriterionService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Ads.Googleads.V16.Services.CustomerNegativeCriterionService.Service
end