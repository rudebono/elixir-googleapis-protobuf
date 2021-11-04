defmodule Google.Ads.Googleads.V9.Services.GetKeywordPlanCampaignRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateKeywordPlanCampaignsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.KeywordPlanCampaignOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.KeywordPlanCampaignOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.KeywordPlanCampaignOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.KeywordPlanCampaign.t() | nil}
            | {:update, Google.Ads.Googleads.V9.Resources.KeywordPlanCampaign.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.KeywordPlanCampaign, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.KeywordPlanCampaign, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateKeywordPlanCampaignsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V9.Services.MutateKeywordPlanCampaignResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateKeywordPlanCampaignResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateKeywordPlanCampaignResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.KeywordPlanCampaignService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.KeywordPlanCampaignService"

  rpc :GetKeywordPlanCampaign,
      Google.Ads.Googleads.V9.Services.GetKeywordPlanCampaignRequest,
      Google.Ads.Googleads.V9.Resources.KeywordPlanCampaign

  rpc :MutateKeywordPlanCampaigns,
      Google.Ads.Googleads.V9.Services.MutateKeywordPlanCampaignsRequest,
      Google.Ads.Googleads.V9.Services.MutateKeywordPlanCampaignsResponse
end

defmodule Google.Ads.Googleads.V9.Services.KeywordPlanCampaignService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.KeywordPlanCampaignService.Service
end
