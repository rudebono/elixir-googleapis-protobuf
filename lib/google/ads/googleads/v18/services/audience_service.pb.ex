defmodule Google.Ads.Googleads.V18.Services.MutateAudiencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.AudienceOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V18.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V18.Services.MutateAudiencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V18.Services.MutateAudienceResult
  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V18.Services.AudienceOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V18.Resources.Audience, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V18.Resources.Audience, oneof: 0
end

defmodule Google.Ads.Googleads.V18.Services.MutateAudienceResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :audience, 2, type: Google.Ads.Googleads.V18.Resources.Audience
end

defmodule Google.Ads.Googleads.V18.Services.AudienceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.AudienceService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :MutateAudiences,
      Google.Ads.Googleads.V18.Services.MutateAudiencesRequest,
      Google.Ads.Googleads.V18.Services.MutateAudiencesResponse
end

defmodule Google.Ads.Googleads.V18.Services.AudienceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.AudienceService.Service
end
