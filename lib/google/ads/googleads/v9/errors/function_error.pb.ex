defmodule Google.Ads.Googleads.V9.Errors.FunctionErrorEnum.FunctionError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_FUNCTION_FORMAT
          | :DATA_TYPE_MISMATCH
          | :INVALID_CONJUNCTION_OPERANDS
          | :INVALID_NUMBER_OF_OPERANDS
          | :INVALID_OPERAND_TYPE
          | :INVALID_OPERATOR
          | :INVALID_REQUEST_CONTEXT_TYPE
          | :INVALID_FUNCTION_FOR_CALL_PLACEHOLDER
          | :INVALID_FUNCTION_FOR_PLACEHOLDER
          | :INVALID_OPERAND
          | :MISSING_CONSTANT_OPERAND_VALUE
          | :INVALID_CONSTANT_OPERAND_VALUE
          | :INVALID_NESTING
          | :MULTIPLE_FEED_IDS_NOT_SUPPORTED
          | :INVALID_FUNCTION_FOR_FEED_WITH_FIXED_SCHEMA
          | :INVALID_ATTRIBUTE_NAME

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_FUNCTION_FORMAT, 2
  field :DATA_TYPE_MISMATCH, 3
  field :INVALID_CONJUNCTION_OPERANDS, 4
  field :INVALID_NUMBER_OF_OPERANDS, 5
  field :INVALID_OPERAND_TYPE, 6
  field :INVALID_OPERATOR, 7
  field :INVALID_REQUEST_CONTEXT_TYPE, 8
  field :INVALID_FUNCTION_FOR_CALL_PLACEHOLDER, 9
  field :INVALID_FUNCTION_FOR_PLACEHOLDER, 10
  field :INVALID_OPERAND, 11
  field :MISSING_CONSTANT_OPERAND_VALUE, 12
  field :INVALID_CONSTANT_OPERAND_VALUE, 13
  field :INVALID_NESTING, 14
  field :MULTIPLE_FEED_IDS_NOT_SUPPORTED, 15
  field :INVALID_FUNCTION_FOR_FEED_WITH_FIXED_SCHEMA, 16
  field :INVALID_ATTRIBUTE_NAME, 17
end
defmodule Google.Ads.Googleads.V9.Errors.FunctionErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
