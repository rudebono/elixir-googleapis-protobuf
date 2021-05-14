defmodule Google.Ads.Googleads.V7.Services.GetCustomInterestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomInterestsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.CustomInterestOperation.t()],
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.CustomInterestOperation

  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.CustomInterestOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.CustomInterest, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.CustomInterest, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomInterestsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V7.Services.MutateCustomInterestResult.t()]
        }

  defstruct [:results]

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateCustomInterestResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateCustomInterestResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.CustomInterestService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.CustomInterestService"

  rpc :GetCustomInterest,
      Google.Ads.Googleads.V7.Services.GetCustomInterestRequest,
      Google.Ads.Googleads.V7.Resources.CustomInterest

  rpc :MutateCustomInterests,
      Google.Ads.Googleads.V7.Services.MutateCustomInterestsRequest,
      Google.Ads.Googleads.V7.Services.MutateCustomInterestsResponse
end

defmodule Google.Ads.Googleads.V7.Services.CustomInterestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CustomInterestService.Service
end
