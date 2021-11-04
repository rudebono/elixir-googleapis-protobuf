defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupCustomizersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.AdGroupCustomizerOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.AdGroupCustomizerOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupCustomizerOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.AdGroupCustomizer.t() | nil}
            | {:remove, String.t()}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V9.Resources.AdGroupCustomizer, oneof: 0
  field :remove, 2, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupCustomizersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V9.Services.MutateAdGroupCustomizerResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:results, :partial_failure_error]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupCustomizerResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupCustomizerResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_customizer: Google.Ads.Googleads.V9.Resources.AdGroupCustomizer.t() | nil
        }

  defstruct [:resource_name, :ad_group_customizer]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :ad_group_customizer, 2,
    type: Google.Ads.Googleads.V9.Resources.AdGroupCustomizer,
    json_name: "adGroupCustomizer"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupCustomizerService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.AdGroupCustomizerService"

  rpc :MutateAdGroupCustomizers,
      Google.Ads.Googleads.V9.Services.MutateAdGroupCustomizersRequest,
      Google.Ads.Googleads.V9.Services.MutateAdGroupCustomizersResponse
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupCustomizerService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AdGroupCustomizerService.Service
end
