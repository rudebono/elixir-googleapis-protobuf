defmodule Google.Ads.Googleads.V7.Services.GetConversionActionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateConversionActionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.ConversionActionOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.ConversionActionOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.ConversionActionOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V7.Resources.ConversionAction.t() | nil}
            | {:update, Google.Ads.Googleads.V7.Resources.ConversionAction.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.ConversionAction, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.ConversionAction, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateConversionActionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateConversionActionResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateConversionActionResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateConversionActionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          conversion_action: Google.Ads.Googleads.V7.Resources.ConversionAction.t() | nil
        }

  defstruct [:resource_name, :conversion_action]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :conversion_action, 2,
    type: Google.Ads.Googleads.V7.Resources.ConversionAction,
    json_name: "conversionAction"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.ConversionActionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.ConversionActionService"

  rpc :GetConversionAction,
      Google.Ads.Googleads.V7.Services.GetConversionActionRequest,
      Google.Ads.Googleads.V7.Resources.ConversionAction

  rpc :MutateConversionActions,
      Google.Ads.Googleads.V7.Services.MutateConversionActionsRequest,
      Google.Ads.Googleads.V7.Services.MutateConversionActionsResponse
end

defmodule Google.Ads.Googleads.V7.Services.ConversionActionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.ConversionActionService.Service
end
