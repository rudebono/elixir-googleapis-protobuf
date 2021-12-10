defmodule Google.Ads.Googleads.V9.Services.GetCustomAudienceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomAudiencesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.CustomAudienceOperation.t()],
          validate_only: boolean
        }

  defstruct customer_id: "",
            operations: [],
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.CustomAudienceOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V9.Services.CustomAudienceOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.CustomAudience.t() | nil}
            | {:update, Google.Ads.Googleads.V9.Resources.CustomAudience.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.CustomAudience, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.CustomAudience, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomAudiencesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V9.Services.MutateCustomAudienceResult.t()]
        }

  defstruct results: []

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateCustomAudienceResult
end
defmodule Google.Ads.Googleads.V9.Services.MutateCustomAudienceResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V9.Services.CustomAudienceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.CustomAudienceService"

  rpc :GetCustomAudience,
      Google.Ads.Googleads.V9.Services.GetCustomAudienceRequest,
      Google.Ads.Googleads.V9.Resources.CustomAudience

  rpc :MutateCustomAudiences,
      Google.Ads.Googleads.V9.Services.MutateCustomAudiencesRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomAudiencesResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomAudienceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomAudienceService.Service
end
