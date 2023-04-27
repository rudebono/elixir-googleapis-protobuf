defmodule Google.Ads.Googleads.V12.Services.MutateCampaignDraftsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.CampaignDraftOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V12.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V12.Services.PromoteCampaignDraftRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :campaign_draft, 1, type: :string, json_name: "campaignDraft", deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V12.Services.CampaignDraftOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V12.Resources.CampaignDraft, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V12.Resources.CampaignDraft, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V12.Services.MutateCampaignDraftsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V12.Services.MutateCampaignDraftResult
end

defmodule Google.Ads.Googleads.V12.Services.MutateCampaignDraftResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :campaign_draft, 2,
    type: Google.Ads.Googleads.V12.Resources.CampaignDraft,
    json_name: "campaignDraft"
end

defmodule Google.Ads.Googleads.V12.Services.ListCampaignDraftAsyncErrorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end

defmodule Google.Ads.Googleads.V12.Services.ListCampaignDraftAsyncErrorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Rpc.Status
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ads.Googleads.V12.Services.CampaignDraftService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v12.services.CampaignDraftService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :MutateCampaignDrafts,
      Google.Ads.Googleads.V12.Services.MutateCampaignDraftsRequest,
      Google.Ads.Googleads.V12.Services.MutateCampaignDraftsResponse

  rpc :PromoteCampaignDraft,
      Google.Ads.Googleads.V12.Services.PromoteCampaignDraftRequest,
      Google.Longrunning.Operation

  rpc :ListCampaignDraftAsyncErrors,
      Google.Ads.Googleads.V12.Services.ListCampaignDraftAsyncErrorsRequest,
      Google.Ads.Googleads.V12.Services.ListCampaignDraftAsyncErrorsResponse
end

defmodule Google.Ads.Googleads.V12.Services.CampaignDraftService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V12.Services.CampaignDraftService.Service
end