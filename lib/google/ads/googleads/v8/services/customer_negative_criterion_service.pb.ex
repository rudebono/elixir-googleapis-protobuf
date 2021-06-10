defmodule Google.Ads.Googleads.V8.Services.GetCustomerNegativeCriterionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerNegativeCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.CustomerNegativeCriterionOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.CustomerNegativeCriterionOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.CustomerNegativeCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.CustomerNegativeCriterion, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerNegativeCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateCustomerNegativeCriteriaResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateCustomerNegativeCriteriaResult
end

defmodule Google.Ads.Googleads.V8.Services.MutateCustomerNegativeCriteriaResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          customer_negative_criterion:
            Google.Ads.Googleads.V8.Resources.CustomerNegativeCriterion.t() | nil
        }

  defstruct [:resource_name, :customer_negative_criterion]

  field :resource_name, 1, type: :string

  field :customer_negative_criterion, 2,
    type: Google.Ads.Googleads.V8.Resources.CustomerNegativeCriterion
end

defmodule Google.Ads.Googleads.V8.Services.CustomerNegativeCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CustomerNegativeCriterionService"

  rpc :GetCustomerNegativeCriterion,
      Google.Ads.Googleads.V8.Services.GetCustomerNegativeCriterionRequest,
      Google.Ads.Googleads.V8.Resources.CustomerNegativeCriterion

  rpc :MutateCustomerNegativeCriteria,
      Google.Ads.Googleads.V8.Services.MutateCustomerNegativeCriteriaRequest,
      Google.Ads.Googleads.V8.Services.MutateCustomerNegativeCriteriaResponse
end

defmodule Google.Ads.Googleads.V8.Services.CustomerNegativeCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.CustomerNegativeCriterionService.Service
end
