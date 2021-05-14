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
  field :project_id, 3, type: :string
  field :state, 4, type: Google.Cloud.Resourcemanager.V3.Project.State, enum: true
  field :display_name, 5, type: :string
  field :create_time, 6, type: Google.Protobuf.Timestamp
  field :update_time, 7, type: Google.Protobuf.Timestamp
  field :delete_time, 8, type: Google.Protobuf.Timestamp
  field :etag, 9, type: :string

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Resourcemanager.V3.Project.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Resourcemanager.V3.GetProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
  field :show_deleted, 4, type: :bool
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
  field :next_page_token, 2, type: :string
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
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
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
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.CreateProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: Google.Cloud.Resourcemanager.V3.Project.t() | nil
        }

  defstruct [:project]

  field :project, 1, type: Google.Cloud.Resourcemanager.V3.Project
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

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :gettable, 2, type: :bool
  field :ready, 3, type: :bool
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
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateProjectMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
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
  field :destination_parent, 2, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.MoveProjectMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteProjectMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Resourcemanager.V3.UndeleteProjectRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.UndeleteProjectMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
