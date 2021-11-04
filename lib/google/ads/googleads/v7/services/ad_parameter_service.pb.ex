defmodule Google.Ads.Googleads.V7.Services.GetAdParameterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.AdParameterOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.AdParameterOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.AdParameterOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V7.Resources.AdParameter.t() | nil}
            | {:update, Google.Ads.Googleads.V7.Resources.AdParameter.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.AdParameter, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.AdParameter, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdParametersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateAdParameterResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateAdParameterResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdParameterResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_parameter: Google.Ads.Googleads.V7.Resources.AdParameter.t() | nil
        }

  defstruct [:resource_name, :ad_parameter]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :ad_parameter, 2,
    type: Google.Ads.Googleads.V7.Resources.AdParameter,
    json_name: "adParameter"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.AdParameterService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.AdParameterService"

  rpc :GetAdParameter,
      Google.Ads.Googleads.V7.Services.GetAdParameterRequest,
      Google.Ads.Googleads.V7.Resources.AdParameter

  rpc :MutateAdParameters,
      Google.Ads.Googleads.V7.Services.MutateAdParametersRequest,
      Google.Ads.Googleads.V7.Services.MutateAdParametersResponse
end

defmodule Google.Ads.Googleads.V7.Services.AdParameterService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AdParameterService.Service
end
