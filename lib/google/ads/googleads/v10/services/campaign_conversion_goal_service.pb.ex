defmodule Google.Ads.Googleads.V10.Services.MutateCampaignConversionGoalsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.CampaignConversionGoalOperation.t()],
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.CampaignConversionGoalOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V10.Services.CampaignConversionGoalOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:update, Google.Ads.Googleads.V10.Resources.CampaignConversionGoal.t() | nil},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :update, 1, type: Google.Ads.Googleads.V10.Resources.CampaignConversionGoal, oneof: 0
end
defmodule Google.Ads.Googleads.V10.Services.MutateCampaignConversionGoalsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V10.Services.MutateCampaignConversionGoalResult.t()]
        }

  defstruct results: []

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateCampaignConversionGoalResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateCampaignConversionGoalResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.CampaignConversionGoalService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.CampaignConversionGoalService"

  rpc :MutateCampaignConversionGoals,
      Google.Ads.Googleads.V10.Services.MutateCampaignConversionGoalsRequest,
      Google.Ads.Googleads.V10.Services.MutateCampaignConversionGoalsResponse
end

defmodule Google.Ads.Googleads.V10.Services.CampaignConversionGoalService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.CampaignConversionGoalService.Service
end
