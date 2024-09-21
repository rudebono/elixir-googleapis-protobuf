defmodule Google.Ads.Googleads.V17.Enums.IdentityVerificationProgramStatusEnum.IdentityVerificationProgramStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PENDING_USER_ACTION, 2
  field :PENDING_REVIEW, 3
  field :SUCCESS, 4
  field :FAILURE, 5
end

defmodule Google.Ads.Googleads.V17.Enums.IdentityVerificationProgramStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end