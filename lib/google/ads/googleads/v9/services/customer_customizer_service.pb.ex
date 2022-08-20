defmodule Google.Ads.Googleads.V9.Services.MutateCustomerCustomizersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.CustomerCustomizerOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V9.Services.CustomerCustomizerOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V9.Resources.CustomerCustomizer, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerCustomizersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateCustomerCustomizerResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomerCustomizerResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :customer_customizer, 2,
    type: Google.Ads.Googleads.V9.Resources.CustomerCustomizer,
    json_name: "customerCustomizer"
end

defmodule Google.Ads.Googleads.V9.Services.CustomerCustomizerService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.CustomerCustomizerService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :MutateCustomerCustomizers,
      Google.Ads.Googleads.V9.Services.MutateCustomerCustomizersRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomerCustomizersResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomerCustomizerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomerCustomizerService.Service
end