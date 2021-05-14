defmodule Google.Ads.Googleads.V5.Services.GetCampaignSharedSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.MutateCampaignSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V5.Services.CampaignSharedSetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.CampaignSharedSetOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V5.Services.CampaignSharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V5.Resources.CampaignSharedSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.MutateCampaignSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V5.Services.MutateCampaignSharedSetResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.MutateCampaignSharedSetResult
end

defmodule Google.Ads.Googleads.V5.Services.MutateCampaignSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.CampaignSharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.CampaignSharedSetService"

  rpc :GetCampaignSharedSet,
      Google.Ads.Googleads.V5.Services.GetCampaignSharedSetRequest,
      Google.Ads.Googleads.V5.Resources.CampaignSharedSet

  rpc :MutateCampaignSharedSets,
      Google.Ads.Googleads.V5.Services.MutateCampaignSharedSetsRequest,
      Google.Ads.Googleads.V5.Services.MutateCampaignSharedSetsResponse
end

defmodule Google.Ads.Googleads.V5.Services.CampaignSharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.CampaignSharedSetService.Service
end
