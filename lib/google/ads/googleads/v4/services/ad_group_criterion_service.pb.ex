defmodule Google.Ads.Googleads.V4.Services.GetAdGroupCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V4.Services.AdGroupCriterionOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.AdGroupCriterionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          exempt_policy_violation_keys: [Google.Ads.Googleads.V4.Common.PolicyViolationKey.t()]
        }

  defstruct [:operation, :update_mask, :exempt_policy_violation_keys]

  oneof :operation, 0
  field :update_mask, 4, type: Google.Protobuf.FieldMask

  field :exempt_policy_violation_keys, 5,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.PolicyViolationKey

  field :create, 1, type: Google.Ads.Googleads.V4.Resources.AdGroupCriterion, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V4.Resources.AdGroupCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V4.Services.MutateAdGroupCriterionResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.MutateAdGroupCriterionResult
end

defmodule Google.Ads.Googleads.V4.Services.MutateAdGroupCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.AdGroupCriterionService"

  rpc :GetAdGroupCriterion,
      Google.Ads.Googleads.V4.Services.GetAdGroupCriterionRequest,
      Google.Ads.Googleads.V4.Resources.AdGroupCriterion

  rpc :MutateAdGroupCriteria,
      Google.Ads.Googleads.V4.Services.MutateAdGroupCriteriaRequest,
      Google.Ads.Googleads.V4.Services.MutateAdGroupCriteriaResponse
end

defmodule Google.Ads.Googleads.V4.Services.AdGroupCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.AdGroupCriterionService.Service
end
