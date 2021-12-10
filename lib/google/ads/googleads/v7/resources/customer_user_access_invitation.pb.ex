defmodule Google.Ads.Googleads.V7.Resources.CustomerUserAccessInvitation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          invitation_id: integer,
          access_role: Google.Ads.Googleads.V7.Enums.AccessRoleEnum.AccessRole.t(),
          email_address: String.t(),
          creation_date_time: String.t(),
          invitation_status:
            Google.Ads.Googleads.V7.Enums.AccessInvitationStatusEnum.AccessInvitationStatus.t()
        }

  defstruct resource_name: "",
            invitation_id: 0,
            access_role: :UNSPECIFIED,
            email_address: "",
            creation_date_time: "",
            invitation_status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :invitation_id, 2, type: :int64, json_name: "invitationId", deprecated: false

  field :access_role, 3,
    type: Google.Ads.Googleads.V7.Enums.AccessRoleEnum.AccessRole,
    json_name: "accessRole",
    enum: true,
    deprecated: false

  field :email_address, 4, type: :string, json_name: "emailAddress", deprecated: false
  field :creation_date_time, 5, type: :string, json_name: "creationDateTime", deprecated: false

  field :invitation_status, 6,
    type: Google.Ads.Googleads.V7.Enums.AccessInvitationStatusEnum.AccessInvitationStatus,
    json_name: "invitationStatus",
    enum: true,
    deprecated: false
end
