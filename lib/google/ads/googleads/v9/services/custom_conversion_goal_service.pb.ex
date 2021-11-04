defmodule Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.CustomConversionGoalOperation.t()],
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.CustomConversionGoalOperation

  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CustomConversionGoalOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.CustomConversionGoal.t() | nil}
            | {:update, Google.Ads.Googleads.V9.Resources.CustomConversionGoal.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.CustomConversionGoal, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.CustomConversionGoal, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalResult.t()]
        }

  defstruct [:results]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          custom_conversion_goal: Google.Ads.Googleads.V9.Resources.CustomConversionGoal.t() | nil
        }

  defstruct [:resource_name, :custom_conversion_goal]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :custom_conversion_goal, 2,
    type: Google.Ads.Googleads.V9.Resources.CustomConversionGoal,
    json_name: "customConversionGoal"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CustomConversionGoalService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.CustomConversionGoalService"

  rpc :MutateCustomConversionGoals,
      Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalsRequest,
      Google.Ads.Googleads.V9.Services.MutateCustomConversionGoalsResponse
end

defmodule Google.Ads.Googleads.V9.Services.CustomConversionGoalService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomConversionGoalService.Service
end
