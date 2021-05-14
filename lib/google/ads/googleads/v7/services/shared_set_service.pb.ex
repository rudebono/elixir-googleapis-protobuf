defmodule Google.Ads.Googleads.V7.Services.GetSharedSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateSharedSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.SharedSetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string
  field :operations, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.SharedSetOperation
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.SharedSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.SharedSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.SharedSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateSharedSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateSharedSetResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V7.Services.MutateSharedSetResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateSharedSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          shared_set: Google.Ads.Googleads.V7.Resources.SharedSet.t() | nil
        }

  defstruct [:resource_name, :shared_set]

  field :resource_name, 1, type: :string
  field :shared_set, 2, type: Google.Ads.Googleads.V7.Resources.SharedSet
end

defmodule Google.Ads.Googleads.V7.Services.SharedSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.SharedSetService"

  rpc :GetSharedSet,
      Google.Ads.Googleads.V7.Services.GetSharedSetRequest,
      Google.Ads.Googleads.V7.Resources.SharedSet

  rpc :MutateSharedSets,
      Google.Ads.Googleads.V7.Services.MutateSharedSetsRequest,
      Google.Ads.Googleads.V7.Services.MutateSharedSetsResponse
end

defmodule Google.Ads.Googleads.V7.Services.SharedSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.SharedSetService.Service
end
