defmodule Google.Ads.Googleads.V8.Services.GetKeywordPlanCampaignKeywordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignKeywordsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.KeywordPlanCampaignKeywordOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.KeywordPlanCampaignKeywordOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignKeywordOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V8.Resources.KeywordPlanCampaignKeyword.t() | nil}
            | {:update, Google.Ads.Googleads.V8.Resources.KeywordPlanCampaignKeyword.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.KeywordPlanCampaignKeyword, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.KeywordPlanCampaignKeyword, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignKeywordsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignKeywordResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignKeywordResult
end
defmodule Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignKeywordResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignKeywordService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.KeywordPlanCampaignKeywordService"

  rpc :GetKeywordPlanCampaignKeyword,
      Google.Ads.Googleads.V8.Services.GetKeywordPlanCampaignKeywordRequest,
      Google.Ads.Googleads.V8.Resources.KeywordPlanCampaignKeyword

  rpc :MutateKeywordPlanCampaignKeywords,
      Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignKeywordsRequest,
      Google.Ads.Googleads.V8.Services.MutateKeywordPlanCampaignKeywordsResponse
end

defmodule Google.Ads.Googleads.V8.Services.KeywordPlanCampaignKeywordService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.KeywordPlanCampaignKeywordService.Service
end
