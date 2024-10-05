defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.AssignmentProtocol.ManualAssignmentType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.AssignmentProtocol.AutoAssignmentType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :inactive_license_ttl, 1,
    type: Google.Protobuf.Duration,
    json_name: "inactiveLicenseTtl",
    deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.AssignmentProtocol do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :assignment_type, 0

  field :manual_assignment_type, 2,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.AssignmentProtocol.ManualAssignmentType,
    json_name: "manualAssignmentType",
    oneof: 0

  field :auto_assignment_type, 3,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.AssignmentProtocol.AutoAssignmentType,
    json_name: "autoAssignmentType",
    oneof: 0
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.LicensePool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :license_assignment_protocol, 2,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.AssignmentProtocol,
    json_name: "licenseAssignmentProtocol",
    deprecated: false

  field :available_license_count, 3,
    type: :int32,
    json_name: "availableLicenseCount",
    deprecated: false

  field :total_license_count, 4, type: :int32, json_name: "totalLicenseCount", deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.GetLicensePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.UpdateLicensePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :license_pool, 1,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.LicensePool,
    json_name: "licensePool",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.AssignRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :usernames, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.AssignResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.UnassignRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :usernames, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.UnassignResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.EnumerateLicensedUsersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.LicensedUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :username, 1, type: :string

  field :assign_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "assignTime",
    deprecated: false

  field :recent_usage_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "recentUsageTime",
    deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.EnumerateLicensedUsersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :licensed_users, 1,
    repeated: true,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1.LicensedUser,
    json_name: "licensedUsers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.LicenseManagementService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.commerce.consumer.procurement.v1.LicenseManagementService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetLicensePool,
      Google.Cloud.Commerce.Consumer.Procurement.V1.GetLicensePoolRequest,
      Google.Cloud.Commerce.Consumer.Procurement.V1.LicensePool

  rpc :UpdateLicensePool,
      Google.Cloud.Commerce.Consumer.Procurement.V1.UpdateLicensePoolRequest,
      Google.Cloud.Commerce.Consumer.Procurement.V1.LicensePool

  rpc :Assign,
      Google.Cloud.Commerce.Consumer.Procurement.V1.AssignRequest,
      Google.Cloud.Commerce.Consumer.Procurement.V1.AssignResponse

  rpc :Unassign,
      Google.Cloud.Commerce.Consumer.Procurement.V1.UnassignRequest,
      Google.Cloud.Commerce.Consumer.Procurement.V1.UnassignResponse

  rpc :EnumerateLicensedUsers,
      Google.Cloud.Commerce.Consumer.Procurement.V1.EnumerateLicensedUsersRequest,
      Google.Cloud.Commerce.Consumer.Procurement.V1.EnumerateLicensedUsersResponse
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1.LicenseManagementService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Commerce.Consumer.Procurement.V1.LicenseManagementService.Service
end