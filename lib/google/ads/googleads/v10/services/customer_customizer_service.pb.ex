defmodule Google.Ads.Googleads.V10.Services.MutateCustomerCustomizersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.CustomerCustomizerOperation.t()],
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
    type: Google.Ads.Googleads.V10.Services.CustomerCustomizerOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.CustomerCustomizerOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.CustomerCustomizer.t() | nil}
            | {:remove, String.t()}
        }

  defstruct operation: nil

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V10.Resources.CustomerCustomizer, oneof: 0
  field :remove, 2, type: :string, oneof: 0, deprecated: false
end
defmodule Google.Ads.Googleads.V10.Services.MutateCustomerCustomizersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V10.Services.MutateCustomerCustomizerResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct results: [],
            partial_failure_error: nil

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Services.MutateCustomerCustomizerResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end
defmodule Google.Ads.Googleads.V10.Services.MutateCustomerCustomizerResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          customer_customizer: Google.Ads.Googleads.V10.Resources.CustomerCustomizer.t() | nil
        }

  defstruct resource_name: "",
            customer_customizer: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :customer_customizer, 2,
    type: Google.Ads.Googleads.V10.Resources.CustomerCustomizer,
    json_name: "customerCustomizer"
end
defmodule Google.Ads.Googleads.V10.Services.CustomerCustomizerService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.CustomerCustomizerService"

  rpc :MutateCustomerCustomizers,
      Google.Ads.Googleads.V10.Services.MutateCustomerCustomizersRequest,
      Google.Ads.Googleads.V10.Services.MutateCustomerCustomizersResponse
end

defmodule Google.Ads.Googleads.V10.Services.CustomerCustomizerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.CustomerCustomizerService.Service
end
