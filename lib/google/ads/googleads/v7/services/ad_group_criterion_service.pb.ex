defmodule Google.Ads.Googleads.V7.Services.GetAdGroupCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.AdGroupCriterionOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.AdGroupCriterionOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V7.Resources.AdGroupCriterion.t() | nil}
            | {:update, Google.Ads.Googleads.V7.Resources.AdGroupCriterion.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          exempt_policy_violation_keys: [Google.Ads.Googleads.V7.Common.PolicyViolationKey.t()]
        }

  defstruct [:operation, :update_mask, :exempt_policy_violation_keys]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :exempt_policy_violation_keys, 5,
    repeated: true,
    type: Google.Ads.Googleads.V7.Common.PolicyViolationKey,
    json_name: "exemptPolicyViolationKeys"

  field :create, 1, type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_criterion: Google.Ads.Googleads.V7.Resources.AdGroupCriterion.t() | nil
        }

  defstruct [:resource_name, :ad_group_criterion]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :ad_group_criterion, 2,
    type: Google.Ads.Googleads.V7.Resources.AdGroupCriterion,
    json_name: "adGroupCriterion"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.AdGroupCriterionService"

  rpc :GetAdGroupCriterion,
      Google.Ads.Googleads.V7.Services.GetAdGroupCriterionRequest,
      Google.Ads.Googleads.V7.Resources.AdGroupCriterion

  rpc :MutateAdGroupCriteria,
      Google.Ads.Googleads.V7.Services.MutateAdGroupCriteriaRequest,
      Google.Ads.Googleads.V7.Services.MutateAdGroupCriteriaResponse
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AdGroupCriterionService.Service
end
