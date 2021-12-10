defmodule Google.Ads.Googleads.V8.Services.GetCampaignDraftRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateCampaignDraftsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.CampaignDraftOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CampaignDraftOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V8.Services.PromoteCampaignDraftRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          campaign_draft: String.t(),
          validate_only: boolean
        }

  defstruct campaign_draft: "",
            validate_only: false

  field :campaign_draft, 1, type: :string, json_name: "campaignDraft", deprecated: false
  field :validate_only, 2, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V8.Services.CampaignDraftOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V8.Resources.CampaignDraft.t() | nil}
            | {:update, Google.Ads.Googleads.V8.Resources.CampaignDraft.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.CampaignDraft, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.CampaignDraft, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V8.Services.MutateCampaignDraftsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateCampaignDraftResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignDraftResult
end
defmodule Google.Ads.Googleads.V8.Services.MutateCampaignDraftResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign_draft: Google.Ads.Googleads.V8.Resources.CampaignDraft.t() | nil
        }

  defstruct resource_name: "",
            campaign_draft: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :campaign_draft, 2,
    type: Google.Ads.Googleads.V8.Resources.CampaignDraft,
    json_name: "campaignDraft"
end
defmodule Google.Ads.Googleads.V8.Services.ListCampaignDraftAsyncErrorsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct resource_name: "",
            page_token: "",
            page_size: 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end
defmodule Google.Ads.Googleads.V8.Services.ListCampaignDraftAsyncErrorsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          errors: [Google.Rpc.Status.t()],
          next_page_token: String.t()
        }

  defstruct errors: [],
            next_page_token: ""

  field :errors, 1, repeated: true, type: Google.Rpc.Status
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Ads.Googleads.V8.Services.CampaignDraftService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignDraftService"

  rpc :GetCampaignDraft,
      Google.Ads.Googleads.V8.Services.GetCampaignDraftRequest,
      Google.Ads.Googleads.V8.Resources.CampaignDraft

  rpc :MutateCampaignDrafts,
      Google.Ads.Googleads.V8.Services.MutateCampaignDraftsRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignDraftsResponse

  rpc :PromoteCampaignDraft,
      Google.Ads.Googleads.V8.Services.PromoteCampaignDraftRequest,
      Google.Longrunning.Operation

  rpc :ListCampaignDraftAsyncErrors,
      Google.Ads.Googleads.V8.Services.ListCampaignDraftAsyncErrorsRequest,
      Google.Ads.Googleads.V8.Services.ListCampaignDraftAsyncErrorsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignDraftService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignDraftService.Service
end
