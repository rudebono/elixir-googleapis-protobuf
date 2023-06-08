defmodule Google.Ads.Googleads.V14.Common.MatchingFunction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :function_string, 5, proto3_optional: true, type: :string, json_name: "functionString"

  field :operator, 4,
    type: Google.Ads.Googleads.V14.Enums.MatchingFunctionOperatorEnum.MatchingFunctionOperator,
    enum: true

  field :left_operands, 2,
    repeated: true,
    type: Google.Ads.Googleads.V14.Common.Operand,
    json_name: "leftOperands"

  field :right_operands, 3,
    repeated: true,
    type: Google.Ads.Googleads.V14.Common.Operand,
    json_name: "rightOperands"
end

defmodule Google.Ads.Googleads.V14.Common.Operand.ConstantOperand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :constant_operand_value, 0

  field :string_value, 5, type: :string, json_name: "stringValue", oneof: 0
  field :long_value, 6, type: :int64, json_name: "longValue", oneof: 0
  field :boolean_value, 7, type: :bool, json_name: "booleanValue", oneof: 0
  field :double_value, 8, type: :double, json_name: "doubleValue", oneof: 0
end

defmodule Google.Ads.Googleads.V14.Common.Operand.FeedAttributeOperand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :feed_id, 3, proto3_optional: true, type: :int64, json_name: "feedId"
  field :feed_attribute_id, 4, proto3_optional: true, type: :int64, json_name: "feedAttributeId"
end

defmodule Google.Ads.Googleads.V14.Common.Operand.FunctionOperand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :matching_function, 1,
    type: Google.Ads.Googleads.V14.Common.MatchingFunction,
    json_name: "matchingFunction"
end

defmodule Google.Ads.Googleads.V14.Common.Operand.RequestContextOperand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :context_type, 1,
    type:
      Google.Ads.Googleads.V14.Enums.MatchingFunctionContextTypeEnum.MatchingFunctionContextType,
    json_name: "contextType",
    enum: true
end

defmodule Google.Ads.Googleads.V14.Common.Operand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :function_argument_operand, 0

  field :constant_operand, 1,
    type: Google.Ads.Googleads.V14.Common.Operand.ConstantOperand,
    json_name: "constantOperand",
    oneof: 0

  field :feed_attribute_operand, 2,
    type: Google.Ads.Googleads.V14.Common.Operand.FeedAttributeOperand,
    json_name: "feedAttributeOperand",
    oneof: 0

  field :function_operand, 3,
    type: Google.Ads.Googleads.V14.Common.Operand.FunctionOperand,
    json_name: "functionOperand",
    oneof: 0

  field :request_context_operand, 4,
    type: Google.Ads.Googleads.V14.Common.Operand.RequestContextOperand,
    json_name: "requestContextOperand",
    oneof: 0
end