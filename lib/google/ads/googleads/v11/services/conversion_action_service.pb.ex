defmodule Google.Ads.Googleads.V11.Services.MutateConversionActionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ConversionActionOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V11.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V11.Services.ConversionActionOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V11.Resources.ConversionAction, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V11.Resources.ConversionAction, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.MutateConversionActionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.MutateConversionActionResult
end
defmodule Google.Ads.Googleads.V11.Services.MutateConversionActionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :conversion_action, 2,
    type: Google.Ads.Googleads.V11.Resources.ConversionAction,
    json_name: "conversionAction"
end
defmodule Google.Ads.Googleads.V11.Services.ConversionActionService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v11.services.ConversionActionService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :MutateConversionActions,
      Google.Ads.Googleads.V11.Services.MutateConversionActionsRequest,
      Google.Ads.Googleads.V11.Services.MutateConversionActionsResponse
end

defmodule Google.Ads.Googleads.V11.Services.ConversionActionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.ConversionActionService.Service
end
