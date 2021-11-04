defmodule Google.Ads.Googleads.V8.Services.GetConversionValueRuleSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionValueRuleSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.ConversionValueRuleSetOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ConversionValueRuleSetOperation

  field :partial_failure, 5, type: :bool, json_name: "partialFailure"
  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.ConversionValueRuleSetOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V8.Resources.ConversionValueRuleSet.t() | nil}
            | {:update, Google.Ads.Googleads.V8.Resources.ConversionValueRuleSet.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.ConversionValueRuleSet, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.ConversionValueRuleSet, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionValueRuleSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V8.Services.MutateConversionValueRuleSetResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:results, :partial_failure_error]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateConversionValueRuleSetResult

  field :partial_failure_error, 2, type: Google.Rpc.Status, json_name: "partialFailureError"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionValueRuleSetResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          conversion_value_rule_set:
            Google.Ads.Googleads.V8.Resources.ConversionValueRuleSet.t() | nil
        }

  defstruct [:resource_name, :conversion_value_rule_set]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :conversion_value_rule_set, 2,
    type: Google.Ads.Googleads.V8.Resources.ConversionValueRuleSet,
    json_name: "conversionValueRuleSet"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V8.Services.ConversionValueRuleSetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ConversionValueRuleSetService"

  rpc :GetConversionValueRuleSet,
      Google.Ads.Googleads.V8.Services.GetConversionValueRuleSetRequest,
      Google.Ads.Googleads.V8.Resources.ConversionValueRuleSet

  rpc :MutateConversionValueRuleSets,
      Google.Ads.Googleads.V8.Services.MutateConversionValueRuleSetsRequest,
      Google.Ads.Googleads.V8.Services.MutateConversionValueRuleSetsResponse
end

defmodule Google.Ads.Googleads.V8.Services.ConversionValueRuleSetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ConversionValueRuleSetService.Service
end
