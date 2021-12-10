defmodule Google.Cloud.Resourcemanager.V3.Organization.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :DELETE_REQUESTED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETE_REQUESTED, 2
end
defmodule Google.Cloud.Resourcemanager.V3.Organization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          owner: {:directory_customer_id, String.t()},
          name: String.t(),
          display_name: String.t(),
          state: Google.Cloud.Resourcemanager.V3.Organization.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t()
        }

  defstruct owner: nil,
            name: "",
            display_name: "",
            state: :STATE_UNSPECIFIED,
            create_time: nil,
            update_time: nil,
            delete_time: nil,
            etag: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.SearchOrganizationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t(),
          query: String.t()
        }

  defstruct page_size: 0,
            page_token: "",
            query: ""

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :query, 3, type: :string, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.SearchOrganizationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          organizations: [Google.Cloud.Resourcemanager.V3.Organization.t()],
          next_page_token: String.t()
        }

  defstruct organizations: [],
            next_page_token: ""

  field :organizations, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.Organization
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Resourcemanager.V3.DeleteOrganizationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Resourcemanager.V3.UndeleteOrganizationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Resourcemanager.V3.Organizations.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.resourcemanager.v3.Organizations"

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
