defmodule Google.Ads.Googleads.V9.Services.GetKeywordPlanAdGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateKeywordPlanAdGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.KeywordPlanAdGroupOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.KeywordPlanAdGroupOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.KeywordPlanAdGroupOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.KeywordPlanAdGroup.t() | nil}
            | {:update, Google.Ads.Googleads.V9.Resources.KeywordPlanAdGroup.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.KeywordPlanAdGroup, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.KeywordPlanAdGroup, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateKeywordPlanAdGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V9.Services.MutateKeywordPlanAdGroupResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateKeywordPlanAdGroupResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateKeywordPlanAdGroupResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.KeywordPlanAdGroupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.KeywordPlanAdGroupService"

  rpc :GetKeywordPlanAdGroup,
      Google.Ads.Googleads.V9.Services.GetKeywordPlanAdGroupRequest,
      Google.Ads.Googleads.V9.Resources.KeywordPlanAdGroup

  rpc :MutateKeywordPlanAdGroups,
      Google.Ads.Googleads.V9.Services.MutateKeywordPlanAdGroupsRequest,
      Google.Ads.Googleads.V9.Services.MutateKeywordPlanAdGroupsResponse
end

defmodule Google.Ads.Googleads.V9.Services.KeywordPlanAdGroupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.KeywordPlanAdGroupService.Service
end