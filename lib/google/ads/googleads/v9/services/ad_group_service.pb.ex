defmodule Google.Ads.Googleads.V9.Services.GetAdGroupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.AdGroupOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V9.Services.AdGroupOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.AdGroup, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.AdGroup, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V9.Services.MutateAdGroupResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :ad_group, 2, type: Google.Ads.Googleads.V9.Resources.AdGroup, json_name: "adGroup"
end
defmodule Google.Ads.Googleads.V9.Services.AdGroupService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.AdGroupService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetAdGroup,
      Google.Ads.Googleads.V9.Services.GetAdGroupRequest,
      Google.Ads.Googleads.V9.Resources.AdGroup

  rpc :MutateAdGroups,
      Google.Ads.Googleads.V9.Services.MutateAdGroupsRequest,
      Google.Ads.Googleads.V9.Services.MutateAdGroupsResponse
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AdGroupService.Service
end
