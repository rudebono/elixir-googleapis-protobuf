defmodule Google.Ads.Googleads.V7.Errors.AccessInvitationErrorEnum.AccessInvitationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_EMAIL_ADDRESS
          | :EMAIL_ADDRESS_ALREADY_HAS_ACCESS
          | :INVALID_INVITATION_STATUS
          | :GOOGLE_CONSUMER_ACCOUNT_NOT_ALLOWED
          | :INVALID_INVITATION_ID
          | :EMAIL_ADDRESS_ALREADY_HAS_PENDING_INVITATION
          | :PENDING_INVITATIONS_LIMIT_EXCEEDED
          | :EMAIL_DOMAIN_POLICY_VIOLATED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_EMAIL_ADDRESS, 2
  field :EMAIL_ADDRESS_ALREADY_HAS_ACCESS, 3
  field :INVALID_INVITATION_STATUS, 4
  field :GOOGLE_CONSUMER_ACCOUNT_NOT_ALLOWED, 5
  field :INVALID_INVITATION_ID, 6
  field :EMAIL_ADDRESS_ALREADY_HAS_PENDING_INVITATION, 7
  field :PENDING_INVITATIONS_LIMIT_EXCEEDED, 8
  field :EMAIL_DOMAIN_POLICY_VIOLATED, 9
end

defmodule Google.Ads.Googleads.V7.Errors.AccessInvitationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
