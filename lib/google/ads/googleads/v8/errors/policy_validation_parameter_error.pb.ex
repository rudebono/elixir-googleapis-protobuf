defmodule Google.Ads.Googleads.V8.Errors.PolicyValidationParameterErrorEnum.PolicyValidationParameterError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :UNSUPPORTED_AD_TYPE_FOR_IGNORABLE_POLICY_TOPICS
          | :UNSUPPORTED_AD_TYPE_FOR_EXEMPT_POLICY_VIOLATION_KEYS
          | :CANNOT_SET_BOTH_IGNORABLE_POLICY_TOPICS_AND_EXEMPT_POLICY_VIOLATION_KEYS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :UNSUPPORTED_AD_TYPE_FOR_IGNORABLE_POLICY_TOPICS, 2

  field :UNSUPPORTED_AD_TYPE_FOR_EXEMPT_POLICY_VIOLATION_KEYS, 3

  field :CANNOT_SET_BOTH_IGNORABLE_POLICY_TOPICS_AND_EXEMPT_POLICY_VIOLATION_KEYS, 4
end

defmodule Google.Ads.Googleads.V8.Errors.PolicyValidationParameterErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
