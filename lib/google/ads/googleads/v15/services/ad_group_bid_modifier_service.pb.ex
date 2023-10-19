defmodule Google.Ads.Googleads.V15.Services.MutateAdGroupBidModifiersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V15.Services.AdGroupBidModifierOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V15.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V15.Services.AdGroupBidModifierOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V15.Resources.AdGroupBidModifier, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V15.Resources.AdGroupBidModifier, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V15.Services.MutateAdGroupBidModifiersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V15.Services.MutateAdGroupBidModifierResult
end

defmodule Google.Ads.Googleads.V15.Services.MutateAdGroupBidModifierResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :ad_group_bid_modifier, 2,
    type: Google.Ads.Googleads.V15.Resources.AdGroupBidModifier,
    json_name: "adGroupBidModifier"
end

defmodule Google.Ads.Googleads.V15.Services.AdGroupBidModifierService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v15.services.AdGroupBidModifierService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateAdGroupBidModifiers,
      Google.Ads.Googleads.V15.Services.MutateAdGroupBidModifiersRequest,
      Google.Ads.Googleads.V15.Services.MutateAdGroupBidModifiersResponse
end

defmodule Google.Ads.Googleads.V15.Services.AdGroupBidModifierService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V15.Services.AdGroupBidModifierService.Service
end