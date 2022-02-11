defmodule Google.Ads.Googleads.V10.Services.MutateAudiencesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V10.Services.AudienceOperation.t()],
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
    type: Google.Ads.Googleads.V10.Services.AudienceOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V10.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end
defmodule Google.Ads.Googleads.V10.Services.MutateAudiencesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V10.Services.MutateAudienceResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct results: [],
            partial_failure_error: nil

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V10.Services.MutateAudienceResult
  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"
end
defmodule Google.Ads.Googleads.V10.Services.AudienceOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V10.Resources.Audience.t() | nil}
            | {:update, Google.Ads.Googleads.V10.Resources.Audience.t() | nil},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V10.Resources.Audience, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V10.Resources.Audience, oneof: 0
end
defmodule Google.Ads.Googleads.V10.Services.MutateAudienceResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          audience: Google.Ads.Googleads.V10.Resources.Audience.t() | nil
        }

  defstruct resource_name: "",
            audience: nil

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :audience, 2, type: Google.Ads.Googleads.V10.Resources.Audience
end
defmodule Google.Ads.Googleads.V10.Services.AudienceService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.AudienceService"

  rpc :MutateAudiences,
      Google.Ads.Googleads.V10.Services.MutateAudiencesRequest,
      Google.Ads.Googleads.V10.Services.MutateAudiencesResponse
end

defmodule Google.Ads.Googleads.V10.Services.AudienceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.AudienceService.Service
end
