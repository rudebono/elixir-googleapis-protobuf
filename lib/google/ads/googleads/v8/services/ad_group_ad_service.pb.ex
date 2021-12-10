defmodule Google.Ads.Googleads.V8.Services.GetAdGroupAdRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupAdsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.AdGroupAdOperation.t()],
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
    type: Google.Ads.Googleads.V8.Services.AdGroupAdOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V8.Services.AdGroupAdOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V8.Resources.AdGroupAd.t() | nil}
            | {:update, Google.Ads.Googleads.V8.Resources.AdGroupAd.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          policy_validation_parameter:
            Google.Ads.Googleads.V8.Common.PolicyValidationParameter.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil,
            policy_validation_parameter: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :policy_validation_parameter, 5,
    type: Google.Ads.Googleads.V8.Common.PolicyValidationParameter,
    json_name: "policyValidationParameter"

  field :create, 1, type: Google.Ads.Googleads.V8.Resources.AdGroupAd, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.AdGroupAd, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupAdsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V8.Services.MutateAdGroupAdResult.t()]
        }

  defstruct partial_failure_error: nil,
            results: []

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V8.Services.MutateAdGroupAdResult
end
defmodule Google.Ads.Googleads.V8.Services.MutateAdGroupAdResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          ad_group_ad: Google.Ads.Googleads.V8.Resources.AdGroupAd.t() | nil
        }

  defstruct resource_name: "",
            ad_group_ad: nil

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :ad_group_ad, 2, type: Google.Ads.Googleads.V8.Resources.AdGroupAd, json_name: "adGroupAd"
end
defmodule Google.Ads.Googleads.V8.Services.AdGroupAdService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AdGroupAdService"

  rpc :GetAdGroupAd,
      Google.Ads.Googleads.V8.Services.GetAdGroupAdRequest,
      Google.Ads.Googleads.V8.Resources.AdGroupAd

  rpc :MutateAdGroupAds,
      Google.Ads.Googleads.V8.Services.MutateAdGroupAdsRequest,
      Google.Ads.Googleads.V8.Services.MutateAdGroupAdsResponse
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupAdService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AdGroupAdService.Service
end
