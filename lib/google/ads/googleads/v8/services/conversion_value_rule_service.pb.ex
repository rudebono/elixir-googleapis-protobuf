defmodule Google.Ads.Googleads.V8.Services.GetConversionValueRuleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionValueRulesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V8.Services.ConversionValueRuleOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.ConversionValueRuleOperation

  field :partial_failure, 5, type: :bool
  field :validate_only, 3, type: :bool

  field :response_content_type, 4,
    type: Google.Ads.Googleads.V8.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V8.Services.ConversionValueRuleOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :create, 1, type: Google.Ads.Googleads.V8.Resources.ConversionValueRule, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V8.Resources.ConversionValueRule, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionValueRulesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V8.Services.MutateConversionValueRuleResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:results, :partial_failure_error]

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V8.Services.MutateConversionValueRuleResult

  field :partial_failure_error, 3, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V8.Services.MutateConversionValueRuleResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          conversion_value_rule: Google.Ads.Googleads.V8.Resources.ConversionValueRule.t() | nil
        }

  defstruct [:resource_name, :conversion_value_rule]

  field :resource_name, 1, type: :string
  field :conversion_value_rule, 2, type: Google.Ads.Googleads.V8.Resources.ConversionValueRule
end

defmodule Google.Ads.Googleads.V8.Services.ConversionValueRuleService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ConversionValueRuleService"

  rpc :GetConversionValueRule,
      Google.Ads.Googleads.V8.Services.GetConversionValueRuleRequest,
      Google.Ads.Googleads.V8.Resources.ConversionValueRule

  rpc :MutateConversionValueRules,
      Google.Ads.Googleads.V8.Services.MutateConversionValueRulesRequest,
      Google.Ads.Googleads.V8.Services.MutateConversionValueRulesResponse
end

defmodule Google.Ads.Googleads.V8.Services.ConversionValueRuleService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ConversionValueRuleService.Service
end
