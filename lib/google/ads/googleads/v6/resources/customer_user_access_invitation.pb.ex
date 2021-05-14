defmodule Google.Ads.Googleads.V6.Resources.CustomerUserAccessInvitation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          invitation_id: integer,
          access_role: Google.Ads.Googleads.V6.Enums.AccessRoleEnum.AccessRole.t(),
          email_address: String.t(),
          creation_date_time: String.t(),
          invitation_status:
            Google.Ads.Googleads.V6.Enums.AccessInvitationStatusEnum.AccessInvitationStatus.t()
        }

  defstruct [
    :resource_name,
    :invitation_id,
    :access_role,
    :email_address,
    :creation_date_time,
    :invitation_status
  ]

  field :resource_name, 1, type: :string
  field :invitation_id, 2, type: :int64
  field :access_role, 3, type: Google.Ads.Googleads.V6.Enums.AccessRoleEnum.AccessRole, enum: true
  field :email_address, 4, type: :string
  field :creation_date_time, 5, type: :string

  field :invitation_status, 6,
    type: Google.Ads.Googleads.V6.Enums.AccessInvitationStatusEnum.AccessInvitationStatus,
    enum: true
end
