defmodule Google.Cloud.Resourcemanager.V3.Project.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :DELETE_REQUESTED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETE_REQUESTED, 2
end

defmodule Google.Cloud.Resourcemanager.V3.Project.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.Project do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          project_id: String.t(),
          state: Google.Cloud.Resourcemanager.V3.Project.State.t(),
          display_name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [
    :name,
    :parent,
    :project_id,
    :state,
    :display_name,
    :create_time,
    :update_time,
    :delete_time,
    :etag,
    :labels
  ]

  field :name, 1, type: :string
  field :parent, 2, type: :string
  field :project_id, 3, type: :string, json_name: "projectId"
  field :state, 4, type: Google.Cloud.Resourcemanager.V3.Project.State, enum: true
  field :display_name, 5, type: :string, json_name: "displayName"
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 7, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :delete_time, 8, type: Google.Protobuf.Timestamp, json_name: "deleteTime"
  field :etag, 9, type: :string

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Resourcemanager.V3.Project.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.GetProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.ListProjectsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer,
          show_deleted: boolean
        }

  defstruct [:parent, :page_token, :page_size, :show_deleted]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :show_deleted, 4, type: :bool, json_name: "showDeleted"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.ListProjectsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          projects: [Google.Cloud.Resourcemanager.V3.Project.t()],
          next_page_token: String.t()
        }

  defstruct [:projects, :next_page_token]

  field :projects, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.Project
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.SearchProjectsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:query, :page_token, :page_size]

  field :query, 1, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.SearchProjectsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          projects: [Google.Cloud.Resourcemanager.V3.Project.t()],
          next_page_token: String.t()
        }

  defstruct [:projects, :next_page_token]

  field :projects, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.Project
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.CreateProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: Google.Cloud.Resourcemanager.V3.Project.t() | nil
        }

  defstruct [:project]

  field :project, 1, type: Google.Cloud.Resourcemanager.V3.Project

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.CreateProjectMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          gettable: boolean,
          ready: boolean
        }

  defstruct [:create_time, :gettable, :ready]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :gettable, 2, type: :bool
  field :ready, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: Google.Cloud.Resourcemanager.V3.Project.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:project, :update_mask]

  field :project, 1, type: Google.Cloud.Resourcemanager.V3.Project
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateProjectMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.MoveProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          destination_parent: String.t()
        }

  defstruct [:name, :destination_parent]

  field :name, 1, type: :string
  field :destination_parent, 2, type: :string, json_name: "destinationParent"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.MoveProjectMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteProjectMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.UndeleteProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.UndeleteProjectMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Resourcemanager.V3.Projects.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.resourcemanager.v3.Projects"

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
