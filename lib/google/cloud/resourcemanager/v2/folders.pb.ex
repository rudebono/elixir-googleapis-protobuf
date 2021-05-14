defmodule Google.Cloud.Resourcemanager.V2.Folder.LifecycleState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :LIFECYCLE_STATE_UNSPECIFIED | :ACTIVE | :DELETE_REQUESTED

  field :LIFECYCLE_STATE_UNSPECIFIED, 0

  field :ACTIVE, 1

  field :DELETE_REQUESTED, 2
end

defmodule Google.Cloud.Resourcemanager.V2.FolderOperation.OperationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :OPERATION_TYPE_UNSPECIFIED | :CREATE | :MOVE

  field :OPERATION_TYPE_UNSPECIFIED, 0

  field :CREATE, 1

  field :MOVE, 2
end

defmodule Google.Cloud.Resourcemanager.V2.Folder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          display_name: String.t(),
          lifecycle_state: Google.Cloud.Resourcemanager.V2.Folder.LifecycleState.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :parent, :display_name, :lifecycle_state, :create_time, :update_time]

  field :name, 1, type: :string
  field :parent, 2, type: :string
  field :display_name, 3, type: :string

  field :lifecycle_state, 4,
    type: Google.Cloud.Resourcemanager.V2.Folder.LifecycleState,
    enum: true

  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :update_time, 6, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Resourcemanager.V2.ListFoldersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          show_deleted: boolean
        }

  defstruct [:parent, :page_size, :page_token, :show_deleted]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :show_deleted, 4, type: :bool
end

defmodule Google.Cloud.Resourcemanager.V2.ListFoldersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folders: [Google.Cloud.Resourcemanager.V2.Folder.t()],
          next_page_token: String.t()
        }

  defstruct [:folders, :next_page_token]

  field :folders, 1, repeated: true, type: Google.Cloud.Resourcemanager.V2.Folder
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Resourcemanager.V2.SearchFoldersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t(),
          query: String.t()
        }

  defstruct [:page_size, :page_token, :query]

  field :page_size, 1, type: :int32
  field :page_token, 2, type: :string
  field :query, 3, type: :string
end

defmodule Google.Cloud.Resourcemanager.V2.SearchFoldersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folders: [Google.Cloud.Resourcemanager.V2.Folder.t()],
          next_page_token: String.t()
        }

  defstruct [:folders, :next_page_token]

  field :folders, 1, repeated: true, type: Google.Cloud.Resourcemanager.V2.Folder
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Resourcemanager.V2.GetFolderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Resourcemanager.V2.CreateFolderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          folder: Google.Cloud.Resourcemanager.V2.Folder.t() | nil
        }

  defstruct [:parent, :folder]

  field :parent, 1, type: :string
  field :folder, 2, type: Google.Cloud.Resourcemanager.V2.Folder
end

defmodule Google.Cloud.Resourcemanager.V2.MoveFolderRequest do
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

defmodule Google.Cloud.Resourcemanager.V2.UpdateFolderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: Google.Cloud.Resourcemanager.V2.Folder.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:folder, :update_mask]

  field :folder, 1, type: Google.Cloud.Resourcemanager.V2.Folder
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Resourcemanager.V2.DeleteFolderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          recursive_delete: boolean
        }

  defstruct [:name, :recursive_delete]

  field :name, 1, type: :string
  field :recursive_delete, 2, type: :bool
end

defmodule Google.Cloud.Resourcemanager.V2.UndeleteFolderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Resourcemanager.V2.FolderOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          operation_type: Google.Cloud.Resourcemanager.V2.FolderOperation.OperationType.t(),
          source_parent: String.t(),
          destination_parent: String.t()
        }

  defstruct [:display_name, :operation_type, :source_parent, :destination_parent]

  field :display_name, 1, type: :string

  field :operation_type, 2,
    type: Google.Cloud.Resourcemanager.V2.FolderOperation.OperationType,
    enum: true

  field :source_parent, 3, type: :string
  field :destination_parent, 4, type: :string
end
