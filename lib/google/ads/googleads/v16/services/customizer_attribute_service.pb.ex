defmodule Google.Ads.Googleads.V16.Services.MutateCustomizerAttributesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V16.Services.CustomizerAttributeOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V16.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V16.Services.CustomizerAttributeOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V16.Resources.CustomizerAttribute, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V16.Services.MutateCustomizerAttributesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V16.Services.MutateCustomizerAttributeResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V16.Services.MutateCustomizerAttributeResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :customizer_attribute, 2,
    type: Google.Ads.Googleads.V16.Resources.CustomizerAttribute,
    json_name: "customizerAttribute"
end

defmodule Google.Ads.Googleads.V16.Services.CustomizerAttributeService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v16.services.CustomizerAttributeService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateCustomizerAttributes,
      Google.Ads.Googleads.V16.Services.MutateCustomizerAttributesRequest,
      Google.Ads.Googleads.V16.Services.MutateCustomizerAttributesResponse
end

defmodule Google.Ads.Googleads.V16.Services.CustomizerAttributeService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V16.Services.CustomizerAttributeService.Service
end