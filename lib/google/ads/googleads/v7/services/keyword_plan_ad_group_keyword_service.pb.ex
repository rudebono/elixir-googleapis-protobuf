defmodule Google.Ads.Googleads.V7.Services.GetKeywordPlanAdGroupKeywordRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroupKeyword.t() | nil}
            | {:update, Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroupKeyword.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroupKeyword, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroupKeyword, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.KeywordPlanAdGroupKeywordService"

  rpc :GetKeywordPlanAdGroupKeyword,
      Google.Ads.Googleads.V7.Services.GetKeywordPlanAdGroupKeywordRequest,
      Google.Ads.Googleads.V7.Resources.KeywordPlanAdGroupKeyword

  rpc :MutateKeywordPlanAdGroupKeywords,
      Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordsRequest,
      Google.Ads.Googleads.V7.Services.MutateKeywordPlanAdGroupKeywordsResponse
end

defmodule Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V7.Services.KeywordPlanAdGroupKeywordService.Service
end
