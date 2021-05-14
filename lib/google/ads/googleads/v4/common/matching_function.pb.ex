defmodule Google.Ads.Googleads.V4.Common.MatchingFunction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          function_string: Google.Protobuf.StringValue.t() | nil,
          operator:
            Google.Ads.Googleads.V4.Enums.MatchingFunctionOperatorEnum.MatchingFunctionOperator.t(),
          left_operands: [Google.Ads.Googleads.V4.Common.Operand.t()],
          right_operands: [Google.Ads.Googleads.V4.Common.Operand.t()]
        }

  defstruct [:function_string, :operator, :left_operands, :right_operands]

  field :function_string, 1, type: Google.Protobuf.StringValue

  field :operator, 4,
    type: Google.Ads.Googleads.V4.Enums.MatchingFunctionOperatorEnum.MatchingFunctionOperator,
    enum: true

  field :left_operands, 2, repeated: true, type: Google.Ads.Googleads.V4.Common.Operand
  field :right_operands, 3, repeated: true, type: Google.Ads.Googleads.V4.Common.Operand
end

defmodule Google.Ads.Googleads.V4.Common.Operand.ConstantOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          constant_operand_value: {atom, any}
        }

  defstruct [:constant_operand_value]

  oneof :constant_operand_value, 0
  field :string_value, 1, type: Google.Protobuf.StringValue, oneof: 0
  field :long_value, 2, type: Google.Protobuf.Int64Value, oneof: 0
  field :boolean_value, 3, type: Google.Protobuf.BoolValue, oneof: 0
  field :double_value, 4, type: Google.Protobuf.DoubleValue, oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.Operand.FeedAttributeOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feed_id: Google.Protobuf.Int64Value.t() | nil,
          feed_attribute_id: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:feed_id, :feed_attribute_id]

  field :feed_id, 1, type: Google.Protobuf.Int64Value
  field :feed_attribute_id, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.Operand.FunctionOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matching_function: Google.Ads.Googleads.V4.Common.MatchingFunction.t() | nil
        }

  defstruct [:matching_function]

  field :matching_function, 1, type: Google.Ads.Googleads.V4.Common.MatchingFunction
end

defmodule Google.Ads.Googleads.V4.Common.Operand.RequestContextOperand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context_type:
            Google.Ads.Googleads.V4.Enums.MatchingFunctionContextTypeEnum.MatchingFunctionContextType.t()
        }

  defstruct [:context_type]

  field :context_type, 1,
    type:
      Google.Ads.Googleads.V4.Enums.MatchingFunctionContextTypeEnum.MatchingFunctionContextType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.Operand do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          function_argument_operand: {atom, any}
        }

  defstruct [:function_argument_operand]

  oneof :function_argument_operand, 0

  field :constant_operand, 1,
    type: Google.Ads.Googleads.V4.Common.Operand.ConstantOperand,
    oneof: 0

  field :feed_attribute_operand, 2,
    type: Google.Ads.Googleads.V4.Common.Operand.FeedAttributeOperand,
    oneof: 0

  field :function_operand, 3,
    type: Google.Ads.Googleads.V4.Common.Operand.FunctionOperand,
    oneof: 0

  field :request_context_operand, 4,
    type: Google.Ads.Googleads.V4.Common.Operand.RequestContextOperand,
    oneof: 0
end
