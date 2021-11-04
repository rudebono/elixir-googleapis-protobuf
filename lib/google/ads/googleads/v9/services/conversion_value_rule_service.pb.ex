defmodule Google.Ads.Googleads.V9.Services.GetConversionValueRuleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateConversionValueRulesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V9.Services.ConversionValueRuleOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.ConversionValueRuleOperation

  field :partial_failure, 5, type: :bool, json_name: "partialFailure"
  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V9.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.ConversionValueRuleOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V9.Resources.ConversionValueRule.t() | nil}
            | {:update, Google.Ads.Googleads.V9.Resources.ConversionValueRule.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V9.Resources.ConversionValueRule, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V9.Resources.ConversionValueRule, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateConversionValueRulesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V9.Services.MutateConversionValueRuleResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:results, :partial_failure_error]

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V9.Services.MutateConversionValueRuleResult

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.MutateConversionValueRuleResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          conversion_value_rule: Google.Ads.Googleads.V9.Resources.ConversionValueRule.t() | nil
        }

  defstruct [:resource_name, :conversion_value_rule]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :conversion_value_rule, 2,
    type: Google.Ads.Googleads.V9.Resources.ConversionValueRule,
    json_name: "conversionValueRule"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.ConversionValueRuleService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.ConversionValueRuleService"

  rpc :GetConversionValueRule,
      Google.Ads.Googleads.V9.Services.GetConversionValueRuleRequest,
      Google.Ads.Googleads.V9.Resources.ConversionValueRule

  rpc :MutateConversionValueRules,
      Google.Ads.Googleads.V9.Services.MutateConversionValueRulesRequest,
      Google.Ads.Googleads.V9.Services.MutateConversionValueRulesResponse
end

defmodule Google.Ads.Googleads.V9.Services.ConversionValueRuleService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.ConversionValueRuleService.Service
end
