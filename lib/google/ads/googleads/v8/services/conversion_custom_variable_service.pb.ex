defmodule Google.Ads.Googleads.V8.Services.GetConversionCustomVariableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateConversionCustomVariablesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.ConversionCustomVariableOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct customer_id: "",
            operations: [],
            partial_failure: false,
            validate_only: false,
            response_content_type: :UNSPECIFIED

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ConversionCustomVariableOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V8.Services.ConversionCustomVariableOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V8.Resources.ConversionCustomVariable.t() | nil}
            | {:update, Google.Ads.Googleads.V8.Resources.ConversionCustomVariable.t() | nil},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.ConversionCustomVariable, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.ConversionCustomVariable, oneof: 0
end
defmodule Google.Ads.Googleads.V8.Services.MutateConversionCustomVariablesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateConversionCustomVariableResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateConversionCustomVariableResult
end
defmodule Google.Ads.Googleads.V8.Services.MutateConversionCustomVariableResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          conversion_custom_variable:
            Google.Ads.Googleads.V8.Resources.ConversionCustomVariable.t() | nil
        }

  defstruct resource_name: "",
            conversion_custom_variable: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :conversion_custom_variable, 2,
    type: Google.Ads.Googleads.V8.Resources.ConversionCustomVariable,
    json_name: "conversionCustomVariable"
end
defmodule Google.Ads.Googleads.V8.Services.ConversionCustomVariableService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ConversionCustomVariableService"

  rpc :GetConversionCustomVariable,
      Google.Ads.Googleads.V8.Services.GetConversionCustomVariableRequest,
      Google.Ads.Googleads.V8.Resources.ConversionCustomVariable

  rpc :MutateConversionCustomVariables,
      Google.Ads.Googleads.V8.Services.MutateConversionCustomVariablesRequest,
      Google.Ads.Googleads.V8.Services.MutateConversionCustomVariablesResponse
end

defmodule Google.Ads.Googleads.V8.Services.ConversionCustomVariableService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ConversionCustomVariableService.Service
end
