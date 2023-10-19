defmodule Google.Ads.Googleads.V15.Services.MutateCampaignGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V15.Services.CampaignGroupOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V15.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V15.Services.CampaignGroupOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V15.Resources.CampaignGroup, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V15.Resources.CampaignGroup, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V15.Services.MutateCampaignGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V15.Services.MutateCampaignGroupResult

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
end

defmodule Google.Ads.Googleads.V15.Services.MutateCampaignGroupResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_group, 2,
    type: Google.Ads.Googleads.V15.Resources.CampaignGroup,
    json_name: "campaignGroup"
end

defmodule Google.Ads.Googleads.V15.Services.CampaignGroupService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v15.services.CampaignGroupService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateCampaignGroups,
      Google.Ads.Googleads.V15.Services.MutateCampaignGroupsRequest,
      Google.Ads.Googleads.V15.Services.MutateCampaignGroupsResponse
end

defmodule Google.Ads.Googleads.V15.Services.CampaignGroupService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V15.Services.CampaignGroupService.Service
end