defmodule Google.Ads.Googleads.V20.Errors.FunctionParsingErrorEnum.FunctionParsingError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NO_MORE_INPUT, 2
  field :EXPECTED_CHARACTER, 3
  field :UNEXPECTED_SEPARATOR, 4
  field :UNMATCHED_LEFT_BRACKET, 5
  field :UNMATCHED_RIGHT_BRACKET, 6
  field :TOO_MANY_NESTED_FUNCTIONS, 7
  field :MISSING_RIGHT_HAND_OPERAND, 8
  field :INVALID_OPERATOR_NAME, 9
  field :FEED_ATTRIBUTE_OPERAND_ARGUMENT_NOT_INTEGER, 10
  field :NO_OPERANDS, 11
  field :TOO_MANY_OPERANDS, 12
end

defmodule Google.Ads.Googleads.V20.Errors.FunctionParsingErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
