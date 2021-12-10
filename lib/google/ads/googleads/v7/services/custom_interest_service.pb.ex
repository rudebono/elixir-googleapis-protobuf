defmodule Google.Ads.Googleads.V7.Services.GetCustomInterestRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MutateCustomInterestsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.CustomInterestOperation.t()],
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.CustomInterestOperation,
    deprecated: false

  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.CustomInterestOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V7.Resources.CustomInterest.t() | nil}
            | {:update, Google.Ads.Googleads.V7.Resources.CustomInterest.t() | nil},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.CustomInterest, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.CustomInterest, oneof: 0
end
defmodule Google.Ads.Googleads.V7.Services.MutateCustomInterestsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V7.Services.MutateCustomInterestResult.t()]
        }

  defstruct results: []

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

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
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
