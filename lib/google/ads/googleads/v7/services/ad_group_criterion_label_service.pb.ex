defmodule Google.Ads.Googleads.V7.Services.GetAdGroupCriterionLabelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.AdGroupCriterionLabelOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.AdGroupCriterionLabelOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V7.Services.AdGroupCriterionLabelOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.AdGroupCriterionLabel, oneof: 0
  field :remove, 2, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionLabelsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionLabelResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionLabelResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateAdGroupCriterionLabelResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end
