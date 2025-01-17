defmodule Google.Cloud.Resourcemanager.V3.Organization.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETE_REQUESTED, 2
end

defmodule Google.Cloud.Resourcemanager.V3.Organization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :owner, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :directory_customer_id, 3,
    type: :string,
    json_name: "directoryCustomerId",
    oneof: 0,
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Resourcemanager.V3.Organization.State,
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :etag, 8, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.GetOrganizationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.SearchOrganizationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :query, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Resourcemanager.V3.SearchOrganizationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :organizations, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.Organization
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteOrganizationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Resourcemanager.V3.UndeleteOrganizationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Resourcemanager.V3.Organizations.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.resourcemanager.v3.Organizations",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetOrganization,
      Google.Cloud.Resourcemanager.V3.GetOrganizationRequest,
      Google.Cloud.Resourcemanager.V3.Organization

  rpc :SearchOrganizations,
      Google.Cloud.Resourcemanager.V3.SearchOrganizationsRequest,
      Google.Cloud.Resourcemanager.V3.SearchOrganizationsResponse

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Resourcemanager.V3.Organizations.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Resourcemanager.V3.Organizations.Service
end
