defmodule Google.Ads.Googleads.V18.Services.MutateConversionValueRuleSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.ConversionValueRuleSetOperation,
    deprecated: false

  field :partial_failure, 5, type: :bool, json_name: "partialFailure"
  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V18.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V18.Services.ConversionValueRuleSetOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V18.Resources.ConversionValueRuleSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V18.Resources.ConversionValueRuleSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.MutateConversionValueRuleSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.MutateConversionValueRuleSetResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V18.Services.MutateConversionValueRuleSetResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :conversion_value_rule_set, 2,
    type: Google.Ads.Googleads.V18.Resources.ConversionValueRuleSet,
    json_name: "conversionValueRuleSet"
end

defmodule Google.Ads.Googleads.V18.Services.ConversionValueRuleSetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.ConversionValueRuleSetService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateConversionValueRuleSets,
      Google.Ads.Googleads.V18.Services.MutateConversionValueRuleSetsRequest,
      Google.Ads.Googleads.V18.Services.MutateConversionValueRuleSetsResponse
end

defmodule Google.Ads.Googleads.V18.Services.ConversionValueRuleSetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.ConversionValueRuleSetService.Service
end
