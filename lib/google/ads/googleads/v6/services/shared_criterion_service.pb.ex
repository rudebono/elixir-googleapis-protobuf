defmodule Google.Ads.Googleads.V6.Services.GetSharedCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V6.Services.MutateSharedCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V6.Services.SharedCriterionOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V6.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V6.Services.SharedCriterionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V6.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V6.Services.SharedCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V6.Resources.SharedCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V6.Services.MutateSharedCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V6.Services.MutateSharedCriterionResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V6.Services.MutateSharedCriterionResult
end

defmodule Google.Ads.Googleads.V6.Services.MutateSharedCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          shared_criterion: Google.Ads.Googleads.V6.Resources.SharedCriterion.t() | nil
        }

  defstruct [:resource_name, :shared_criterion]

  field :resource_name, 1, type: :string
  field :shared_criterion, 2, type: Google.Ads.Googleads.V6.Resources.SharedCriterion
end

defmodule Google.Ads.Googleads.V6.Services.SharedCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v6.services.SharedCriterionService"

  rpc :GetSharedCriterion,
      Google.Ads.Googleads.V6.Services.GetSharedCriterionRequest,
      Google.Ads.Googleads.V6.Resources.SharedCriterion

  rpc :MutateSharedCriteria,
      Google.Ads.Googleads.V6.Services.MutateSharedCriteriaRequest,
      Google.Ads.Googleads.V6.Services.MutateSharedCriteriaResponse
end

defmodule Google.Ads.Googleads.V6.Services.SharedCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V6.Services.SharedCriterionService.Service
end
