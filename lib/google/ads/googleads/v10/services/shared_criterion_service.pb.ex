defmodule Google.Ads.Googleads.V10.Services.MutateSharedCriteriaRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.SharedCriterionOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.SharedCriterionOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.SharedCriterionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.SharedCriterion.t() | nil}
            | {:remove, String.t()}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V10.Resources.SharedCriterion, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateSharedCriteriaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V10.Services.MutateSharedCriterionResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateSharedCriterionResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateSharedCriterionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          shared_criterion: Google.Ads.Googleads.V10.Resources.SharedCriterion.t() | nil
        }

  defstruct resource_name: "",
            shared_criterion: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :shared_criterion, 2,
    type: Google.Ads.Googleads.V10.Resources.SharedCriterion,
    json_name: "sharedCriterion"
end
defmodule Google.Ads.Googleads.V10.Services.SharedCriterionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.SharedCriterionService"

  rpc :MutateSharedCriteria,
      Google.Ads.Googleads.V10.Services.MutateSharedCriteriaRequest,
      Google.Ads.Googleads.V10.Services.MutateSharedCriteriaResponse
end

defmodule Google.Ads.Googleads.V10.Services.SharedCriterionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.SharedCriterionService.Service
end
