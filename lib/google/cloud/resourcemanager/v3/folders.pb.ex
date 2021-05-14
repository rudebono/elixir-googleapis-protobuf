defmodule Google.Cloud.Resourcemanager.V3.Folder.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :DELETE_REQUESTED

  field :STATE_UNSPECIFIED, 0

  field :ACTIVE, 1

  field :DELETE_REQUESTED, 2
end

defmodule Google.Cloud.Resourcemanager.V3.Folder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          display_name: String.t(),
          state: Google.Cloud.Resourcemanager.V3.Folder.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t()
        }

  defstruct [
    :name,
    :parent,
    :display_name,
    :state,
    :create_time,
    :update_time,
    :delete_time,
    :etag
  ]

  field :name, 1, type: :string
  field :parent, 2, type: :string
  field :display_name, 3, type: :string
  field :state, 4, type: Google.Cloud.Resourcemanager.V3.Folder.State, enum: true
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :update_time, 6, type: Google.Protobuf.Timestamp
  field :delete_time, 7, type: Google.Protobuf.Timestamp
  field :etag, 8, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.GetFolderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.ListFoldersRequest do
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

defmodule Google.Cloud.Resourcemanager.V3.ListFoldersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folders: [Google.Cloud.Resourcemanager.V3.Folder.t()],
          next_page_token: String.t()
        }

  defstruct [:folders, :next_page_token]

  field :folders, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.Folder
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.SearchFoldersRequest do
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

defmodule Google.Cloud.Resourcemanager.V3.SearchFoldersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folders: [Google.Cloud.Resourcemanager.V3.Folder.t()],
          next_page_token: String.t()
        }

  defstruct [:folders, :next_page_token]

  field :folders, 1, repeated: true, type: Google.Cloud.Resourcemanager.V3.Folder
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.CreateFolderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: Google.Cloud.Resourcemanager.V3.Folder.t() | nil
        }

  defstruct [:folder]

  field :folder, 2, type: Google.Cloud.Resourcemanager.V3.Folder
end

defmodule Google.Cloud.Resourcemanager.V3.CreateFolderMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          parent: String.t()
        }

  defstruct [:display_name, :parent]

  field :display_name, 1, type: :string
  field :parent, 2, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateFolderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          folder: Google.Cloud.Resourcemanager.V3.Folder.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:folder, :update_mask]

  field :folder, 1, type: Google.Cloud.Resourcemanager.V3.Folder
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Resourcemanager.V3.UpdateFolderMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Resourcemanager.V3.MoveFolderRequest do
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

defmodule Google.Cloud.Resourcemanager.V3.MoveFolderMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          source_parent: String.t(),
          destination_parent: String.t()
        }

  defstruct [:display_name, :source_parent, :destination_parent]

  field :display_name, 1, type: :string
  field :source_parent, 2, type: :string
  field :destination_parent, 3, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteFolderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.DeleteFolderMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Resourcemanager.V3.UndeleteFolderRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Resourcemanager.V3.UndeleteFolderMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
