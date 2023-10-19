defmodule Google.Ads.Googleads.V15.Resources.CustomerUserAccess do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :user_id, 2, type: :int64, json_name: "userId", deprecated: false

  field :email_address, 3,
    proto3_optional: true,
    type: :string,
    json_name: "emailAddress",
    deprecated: false

  field :access_role, 4,
    type: Google.Ads.Googleads.V15.Enums.AccessRoleEnum.AccessRole,
    json_name: "accessRole",
    enum: true

  field :access_creation_date_time, 6,
    proto3_optional: true,
    type: :string,
    json_name: "accessCreationDateTime",
    deprecated: false

  field :inviter_user_email_address, 7,
    proto3_optional: true,
    type: :string,
    json_name: "inviterUserEmailAddress",
    deprecated: false
end