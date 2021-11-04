defmodule Google.Ads.Googleads.V9.Services.GetAdGroupCriterionLabelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupCriterionLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.AdGroupCriterionLabelOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.AdGroupCriterionLabelOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupCriterionLabelOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.AdGroupCriterionLabel.t() | nil}
            | {:remove, String.t()}
        }

  defstruct [:operation]

  oneof :operation, 0

  field :create, 1, type: Google.Ads.Googleads.V9.Resources.AdGroupCriterionLabel, oneof: 0
  field :remove, 2, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupCriterionLabelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V9.Services.MutateAdGroupCriterionLabelResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateAdGroupCriterionLabelResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateAdGroupCriterionLabelResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupCriterionLabelService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.AdGroupCriterionLabelService"

  rpc :GetAdGroupCriterionLabel,
      Google.Ads.Googleads.V9.Services.GetAdGroupCriterionLabelRequest,
      Google.Ads.Googleads.V9.Resources.AdGroupCriterionLabel

  rpc :MutateAdGroupCriterionLabels,
      Google.Ads.Googleads.V9.Services.MutateAdGroupCriterionLabelsRequest,
      Google.Ads.Googleads.V9.Services.MutateAdGroupCriterionLabelsResponse
end

defmodule Google.Ads.Googleads.V9.Services.AdGroupCriterionLabelService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AdGroupCriterionLabelService.Service
end
