defmodule Google.Ads.Googleads.V9.Services.GetSharedCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateSharedCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.SharedCriterionOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.SharedCriterionOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.SharedCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.SharedCriterion.t() | nil}
            | {:remove, String.t()}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V9.Resources.SharedCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateSharedCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V9.Services.MutateSharedCriterionResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateSharedCriterionResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateSharedCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          shared_criterion: Google.Ads.Googleads.V9.Resources.SharedCriterion.t() | nil
        }

  defstruct [:resource_name, :shared_criterion]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :shared_criterion, 2,
    type: Google.Ads.Googleads.V9.Resources.SharedCriterion,
    json_name: "sharedCriterion"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.SharedCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.SharedCriterionService"

  rpc :GetSharedCriterion,
      Google.Ads.Googleads.V9.Services.GetSharedCriterionRequest,
      Google.Ads.Googleads.V9.Resources.SharedCriterion

  rpc :MutateSharedCriteria,
      Google.Ads.Googleads.V9.Services.MutateSharedCriteriaRequest,
      Google.Ads.Googleads.V9.Services.MutateSharedCriteriaResponse
end

defmodule Google.Ads.Googleads.V9.Services.SharedCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.SharedCriterionService.Service
end
