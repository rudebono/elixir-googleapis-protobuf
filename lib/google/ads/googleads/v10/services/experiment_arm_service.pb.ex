defmodule Google.Ads.Googleads.V10.Services.MutateExperimentArmsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.ExperimentArmOperation.t()],
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
    type: Google.Ads.Googleads.V10.Services.ExperimentArmOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.ExperimentArmOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.ExperimentArm.t() | nil}
            | {:update, Google.Ads.Googleads.V10.Resources.ExperimentArm.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V10.Resources.ExperimentArm, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V10.Resources.ExperimentArm, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateExperimentArmsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V10.Services.MutateExperimentArmResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateExperimentArmResult
end
defmodule Google.Ads.Googleads.V10.Services.MutateExperimentArmResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          experiment_arm: Google.Ads.Googleads.V10.Resources.ExperimentArm.t() | nil
        }

  defstruct resource_name: "",
            experiment_arm: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :experiment_arm, 2,
    type: Google.Ads.Googleads.V10.Resources.ExperimentArm,
    json_name: "experimentArm"
end
defmodule Google.Ads.Googleads.V10.Services.ExperimentArmService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.ExperimentArmService"

  rpc :MutateExperimentArms,
      Google.Ads.Googleads.V10.Services.MutateExperimentArmsRequest,
      Google.Ads.Googleads.V10.Services.MutateExperimentArmsResponse
end

defmodule Google.Ads.Googleads.V10.Services.ExperimentArmService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.ExperimentArmService.Service
end
