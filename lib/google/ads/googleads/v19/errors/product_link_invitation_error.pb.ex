defmodule Google.Ads.Googleads.V19.Errors.ProductLinkInvitationErrorEnum.ProductLinkInvitationError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_STATUS, 2
  field :PERMISSION_DENIED, 3
  field :NO_INVITATION_REQUIRED, 4
  field :CUSTOMER_NOT_PERMITTED_TO_CREATE_INVITATION, 5
end

defmodule Google.Ads.Googleads.V19.Errors.ProductLinkInvitationErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
