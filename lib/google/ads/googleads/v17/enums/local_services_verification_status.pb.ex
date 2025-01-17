defmodule Google.Ads.Googleads.V17.Enums.LocalServicesVerificationStatusEnum.LocalServicesVerificationStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NEEDS_REVIEW, 2
  field :FAILED, 3
  field :PASSED, 4
  field :NOT_APPLICABLE, 5
  field :NO_SUBMISSION, 6
  field :PARTIAL_SUBMISSION, 7
  field :PENDING_ESCALATION, 8
end

defmodule Google.Ads.Googleads.V17.Enums.LocalServicesVerificationStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end
