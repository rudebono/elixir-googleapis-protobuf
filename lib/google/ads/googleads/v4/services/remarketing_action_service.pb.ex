defmodule Google.Ads.Googleads.V4.Services.GetRemarketingActionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateRemarketingActionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V4.Services.RemarketingActionOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.RemarketingActionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.RemarketingActionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V4.Resources.RemarketingAction, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.RemarketingAction, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateRemarketingActionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V4.Services.MutateRemarketingActionResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateRemarketingActionResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateRemarketingActionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.RemarketingActionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.RemarketingActionService"

  rpc :GetRemarketingAction,
      Google.Ads.Googleads.V4.Services.GetRemarketingActionRequest,
      Google.Ads.Googleads.V4.Resources.RemarketingAction

  rpc :MutateRemarketingActions,
      Google.Ads.Googleads.V4.Services.MutateRemarketingActionsRequest,
      Google.Ads.Googleads.V4.Services.MutateRemarketingActionsResponse
end

defmodule Google.Ads.Googleads.V4.Services.RemarketingActionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.RemarketingActionService.Service
end
