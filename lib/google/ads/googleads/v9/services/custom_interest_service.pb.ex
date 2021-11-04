defmodule Google.Ads.Googleads.V9.Services.GetCustomInterestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomInterestsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.CustomInterestOperation.t()],
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :validate_only]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.CustomInterestOperation

  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CustomInterestOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.CustomInterest.t() | nil}
            | {:update, Google.Ads.Googleads.V9.Resources.CustomInterest.t() | nil},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.CustomInterest, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.CustomInterest, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomInterestsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V9.Services.MutateCustomInterestResult.t()]
        }

  defstruct [:results]

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateCustomInterestResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomInterestResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CustomInterestService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.CustomInterestService"

  rpc :GetCustomInterest,
      Google.Ads.Googleads.V9.Services.GetCustomInterestRequest,
      Google.Ads.Googleads.V9.Resources.CustomInterest

  rpc :MutateCustomInterests,
      Google.Ads.Googleads.V9.Services.MutateCustomInterestsRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomInterestsResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomInterestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomInterestService.Service
end
