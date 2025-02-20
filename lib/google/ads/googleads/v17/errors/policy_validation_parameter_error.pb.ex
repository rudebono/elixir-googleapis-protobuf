defmodule Google.Ads.Googleads.V17.Errors.PolicyValidationParameterErrorEnum.PolicyValidationParameterError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :UNSUPPORTED_AD_TYPE_FOR_IGNORABLE_POLICY_TOPICS, 2
  field :UNSUPPORTED_AD_TYPE_FOR_EXEMPT_POLICY_VIOLATION_KEYS, 3
  field :CANNOT_SET_BOTH_IGNORABLE_POLICY_TOPICS_AND_EXEMPT_POLICY_VIOLATION_KEYS, 4
end

defmodule Google.Ads.Googleads.V17.Errors.PolicyValidationParameterErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
