defmodule Google.Ads.Googleads.V19.Services.MutateAdGroupCustomizersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.AdGroupCustomizerOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V19.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V19.Services.AdGroupCustomizerOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V19.Resources.AdGroupCustomizer, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.MutateAdGroupCustomizersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.MutateAdGroupCustomizerResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V19.Services.MutateAdGroupCustomizerResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_customizer, 2,
    type: Google.Ads.Googleads.V19.Resources.AdGroupCustomizer,
    json_name: "adGroupCustomizer"
end

defmodule Google.Ads.Googleads.V19.Services.AdGroupCustomizerService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v19.services.AdGroupCustomizerService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :MutateAdGroupCustomizers,
      Google.Ads.Googleads.V19.Services.MutateAdGroupCustomizersRequest,
      Google.Ads.Googleads.V19.Services.MutateAdGroupCustomizersResponse
end

defmodule Google.Ads.Googleads.V19.Services.AdGroupCustomizerService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V19.Services.AdGroupCustomizerService.Service
end
