defmodule Google.Cloud.Cloudcontrolspartner.V1beta.PartnerPermissions.Permission do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PERMISSION_UNSPECIFIED, 0
  field :ACCESS_TRANSPARENCY_AND_EMERGENCY_ACCESS_LOGS, 1
  field :ASSURED_WORKLOADS_MONITORING, 2
  field :ACCESS_APPROVAL_REQUESTS, 3
  field :ASSURED_WORKLOADS_EKM_CONNECTION_STATUS, 4
  field :ACCESS_TRANSPARENCY_LOGS_SUPPORT_CASE_VIEWER, 5
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.PartnerPermissions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :partner_permissions, 2,
    repeated: true,
    type: Google.Cloud.Cloudcontrolspartner.V1beta.PartnerPermissions.Permission,
    json_name: "partnerPermissions",
    enum: true
end

defmodule Google.Cloud.Cloudcontrolspartner.V1beta.GetPartnerPermissionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end