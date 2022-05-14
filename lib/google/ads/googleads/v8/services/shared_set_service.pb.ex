defmodule Google.Ads.Googleads.V8.Services.GetSharedSetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateSharedSetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.SharedSetOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V8.Services.SharedSetOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.SharedSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.SharedSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V8.Services.MutateSharedSetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateSharedSetResult
end
defmodule Google.Ads.Googleads.V8.Services.MutateSharedSetResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :shared_set, 2, type: Google.Ads.Googleads.V8.Resources.SharedSet, json_name: "sharedSet"
end
defmodule Google.Ads.Googleads.V8.Services.SharedSetService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.SharedSetService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetSharedSet,
      Google.Ads.Googleads.V8.Services.GetSharedSetRequest,
      Google.Ads.Googleads.V8.Resources.SharedSet

  rpc :MutateSharedSets,
      Google.Ads.Googleads.V8.Services.MutateSharedSetsRequest,
      Google.Ads.Googleads.V8.Services.MutateSharedSetsResponse
end

defmodule Google.Ads.Googleads.V8.Services.SharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.SharedSetService.Service
end
