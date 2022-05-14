defmodule Google.Cloud.Resourcemanager.V3.Project.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETE_REQUESTED, 2
end
defmodule Google.Cloud.Resourcemanager.V3.Project.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Resourcemanager.V3.Project do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parent, 2, type: :string, deprecated: false
  field :project_id, 3, type: :string, json_name: "projectId", deprecated: false

  field :state, 4,
    type: Google.Cloud.Resourcemanager.V3.Project.State,
    enum: true,
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :etag, 9, type: :string, deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Resourcemanager.V3.Project.LabelsEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.GetProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.ListProjectsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :show_deleted, 4, type: :bool, json_name: "showDeleted", deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.ListProjectsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :projects, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.Project
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Resourcemanager.V3.SearchProjectsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :query, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.SearchProjectsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :projects, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.Project
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Resourcemanager.V3.CreateProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project, 1, type: Google.Cloud.Resourcemanager.V3.Project, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.CreateProjectMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :gettable, 2, type: :bool
  field :ready, 3, type: :bool
end
defmodule Google.Cloud.Resourcemanager.V3.UpdateProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project, 1, type: Google.Cloud.Resourcemanager.V3.Project, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.UpdateProjectMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Resourcemanager.V3.MoveProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :destination_parent, 2, type: :string, json_name: "destinationParent", deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.MoveProjectMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Resourcemanager.V3.DeleteProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.DeleteProjectMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Resourcemanager.V3.UndeleteProjectRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Resourcemanager.V3.UndeleteProjectMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Resourcemanager.V3.Projects.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.resourcemanager.v3.Projects",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetProject,
      Google.Cloud.Resourcemanager.V3.GetProjectRequest,
      Google.Cloud.Resourcemanager.V3.Project

  rpc :ListProjects,
      Google.Cloud.Resourcemanager.V3.ListProjectsRequest,
      Google.Cloud.Resourcemanager.V3.ListProjectsResponse

  rpc :SearchProjects,
      Google.Cloud.Resourcemanager.V3.SearchProjectsRequest,
      Google.Cloud.Resourcemanager.V3.SearchProjectsResponse

  rpc :CreateProject,
      Google.Cloud.Resourcemanager.V3.CreateProjectRequest,
      Google.Longrunning.Operation

  rpc :UpdateProject,
      Google.Cloud.Resourcemanager.V3.UpdateProjectRequest,
      Google.Longrunning.Operation

  rpc :MoveProject,
      Google.Cloud.Resourcemanager.V3.MoveProjectRequest,
      Google.Longrunning.Operation

  rpc :DeleteProject,
      Google.Cloud.Resourcemanager.V3.DeleteProjectRequest,
      Google.Longrunning.Operation

  rpc :UndeleteProject,
      Google.Cloud.Resourcemanager.V3.UndeleteProjectRequest,
      Google.Longrunning.Operation

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Resourcemanager.V3.Projects.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Resourcemanager.V3.Projects.Service
end
