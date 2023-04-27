defmodule Google.Ads.Googleads.V13.Resources.CustomerUserAccessInvitation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :invitation_id, 2, type: :int64, json_name: "invitationId", deprecated: false

  field :access_role, 3,
    type: Google.Ads.Googleads.V13.Enums.AccessRoleEnum.AccessRole,
    json_name: "accessRole",
    enum: true,
    deprecated: false

  field :email_address, 4, type: :string, json_name: "emailAddress", deprecated: false
  field :creation_date_time, 5, type: :string, json_name: "creationDateTime", deprecated: false

  field :invitation_status, 6,
    type: Google.Ads.Googleads.V13.Enums.AccessInvitationStatusEnum.AccessInvitationStatus,
    json_name: "invitationStatus",
    enum: true,
    deprecated: false
end