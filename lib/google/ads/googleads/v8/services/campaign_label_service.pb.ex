defmodule Google.Ads.Googleads.V8.Services.GetCampaignLabelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.CampaignLabelOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CampaignLabelOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V8.Services.CampaignLabelOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.CampaignLabel, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignLabelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateCampaignLabelResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCampaignLabelResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCampaignLabelResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.CampaignLabelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CampaignLabelService"

  rpc :GetCampaignLabel,
      Google.Ads.Googleads.V8.Services.GetCampaignLabelRequest,
      Google.Ads.Googleads.V8.Resources.CampaignLabel

  rpc :MutateCampaignLabels,
      Google.Ads.Googleads.V8.Services.MutateCampaignLabelsRequest,
      Google.Ads.Googleads.V8.Services.MutateCampaignLabelsResponse
end

defmodule Google.Ads.Googleads.V8.Services.CampaignLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CampaignLabelService.Service
end
