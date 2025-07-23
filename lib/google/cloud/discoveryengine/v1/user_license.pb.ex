defmodule Google.Cloud.Discoveryengine.V1.UserLicense.LicenseAssignmentState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LICENSE_ASSIGNMENT_STATE_UNSPECIFIED, 0
  field :ASSIGNED, 1
  field :UNASSIGNED, 2
  field :NO_LICENSE, 3
  field :NO_LICENSE_ATTEMPTED_LOGIN, 4
end

defmodule Google.Cloud.Discoveryengine.V1.UserLicense do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_principal, 1, type: :string, json_name: "userPrincipal", deprecated: false
  field :user_profile, 3, type: :string, json_name: "userProfile", deprecated: false

  field :license_assignment_state, 4,
    type: Google.Cloud.Discoveryengine.V1.UserLicense.LicenseAssignmentState,
    json_name: "licenseAssignmentState",
    enum: true,
    deprecated: false

  field :license_config, 5, type: :string, json_name: "licenseConfig", deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :last_login_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "lastLoginTime",
    deprecated: false
end
