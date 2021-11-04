defmodule Google.Monitoring.V3.ListGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter:
            {:children_of_group, String.t()}
            | {:ancestors_of_group, String.t()}
            | {:descendants_of_group, String.t()},
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:filter, :name, :page_size, :page_token]

  oneof :filter, 0

  field :name, 7, type: :string
  field :children_of_group, 2, type: :string, json_name: "childrenOfGroup", oneof: 0
  field :ancestors_of_group, 3, type: :string, json_name: "ancestorsOfGroup", oneof: 0
  field :descendants_of_group, 4, type: :string, json_name: "descendantsOfGroup", oneof: 0
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.ListGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group: [Google.Monitoring.V3.Group.t()],
          next_page_token: String.t()
        }

  defstruct [:group, :next_page_token]

  field :group, 1, repeated: true, type: Google.Monitoring.V3.Group
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.GetGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.CreateGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          group: Google.Monitoring.V3.Group.t() | nil,
          validate_only: boolean
        }

  defstruct [:name, :group, :validate_only]

  field :name, 4, type: :string
  field :group, 2, type: Google.Monitoring.V3.Group
  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.UpdateGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group: Google.Monitoring.V3.Group.t() | nil,
          validate_only: boolean
        }

  defstruct [:group, :validate_only]

  field :group, 2, type: Google.Monitoring.V3.Group
  field :validate_only, 3, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.DeleteGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          recursive: boolean
        }

  defstruct [:name, :recursive]

  field :name, 3, type: :string
  field :recursive, 4, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.ListGroupMembersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          interval: Google.Monitoring.V3.TimeInterval.t() | nil
        }

  defstruct [:name, :page_size, :page_token, :filter, :interval]

  field :name, 7, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
  field :interval, 6, type: Google.Monitoring.V3.TimeInterval

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.ListGroupMembersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          members: [Google.Api.MonitoredResource.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:members, :next_page_token, :total_size]

  field :members, 1, repeated: true, type: Google.Api.MonitoredResource
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"

  def transform_module(), do: nil
end

defmodule Google.Monitoring.V3.GroupService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.monitoring.v3.GroupService"

  rpc :ListGroups, Google.Monitoring.V3.ListGroupsRequest, Google.Monitoring.V3.ListGroupsResponse

  rpc :GetGroup, Google.Monitoring.V3.GetGroupRequest, Google.Monitoring.V3.Group

  rpc :CreateGroup, Google.Monitoring.V3.CreateGroupRequest, Google.Monitoring.V3.Group

  rpc :UpdateGroup, Google.Monitoring.V3.UpdateGroupRequest, Google.Monitoring.V3.Group

  rpc :DeleteGroup, Google.Monitoring.V3.DeleteGroupRequest, Google.Protobuf.Empty

  rpc :ListGroupMembers,
      Google.Monitoring.V3.ListGroupMembersRequest,
      Google.Monitoring.V3.ListGroupMembersResponse
end

defmodule Google.Monitoring.V3.GroupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Monitoring.V3.GroupService.Service
end
