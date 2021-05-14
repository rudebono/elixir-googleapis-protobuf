defmodule Google.Apps.Drive.Activity.V2.DriveItem.Folder.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :MY_DRIVE_ROOT | :TEAM_DRIVE_ROOT | :STANDARD_FOLDER

  field :TYPE_UNSPECIFIED, 0

  field :MY_DRIVE_ROOT, 1

  field :TEAM_DRIVE_ROOT, 2

  field :STANDARD_FOLDER, 3
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :MY_DRIVE_ROOT | :SHARED_DRIVE_ROOT | :STANDARD_FOLDER

  field :TYPE_UNSPECIFIED, 0

  field :MY_DRIVE_ROOT, 1

  field :SHARED_DRIVE_ROOT, 2

  field :STANDARD_FOLDER, 3
end

defmodule Google.Apps.Drive.Activity.V2.Target do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object: {atom, any},
          team_drive: Google.Apps.Drive.Activity.V2.TeamDrive.t() | nil
        }

  defstruct [:object, :team_drive]

  oneof :object, 0
  field :drive_item, 1, type: Google.Apps.Drive.Activity.V2.DriveItem, oneof: 0
  field :drive, 5, type: Google.Apps.Drive.Activity.V2.Drive, oneof: 0
  field :file_comment, 3, type: Google.Apps.Drive.Activity.V2.FileComment, oneof: 0
  field :team_drive, 2, type: Google.Apps.Drive.Activity.V2.TeamDrive, deprecated: true
end

defmodule Google.Apps.Drive.Activity.V2.TargetReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object: {atom, any},
          team_drive: Google.Apps.Drive.Activity.V2.TeamDriveReference.t() | nil
        }

  defstruct [:object, :team_drive]

  oneof :object, 0
  field :drive_item, 1, type: Google.Apps.Drive.Activity.V2.DriveItemReference, oneof: 0
  field :drive, 3, type: Google.Apps.Drive.Activity.V2.DriveReference, oneof: 0
  field :team_drive, 2, type: Google.Apps.Drive.Activity.V2.TeamDriveReference, deprecated: true
end

defmodule Google.Apps.Drive.Activity.V2.FileComment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          legacy_comment_id: String.t(),
          legacy_discussion_id: String.t(),
          link_to_discussion: String.t(),
          parent: Google.Apps.Drive.Activity.V2.DriveItem.t() | nil
        }

  defstruct [:legacy_comment_id, :legacy_discussion_id, :link_to_discussion, :parent]

  field :legacy_comment_id, 1, type: :string
  field :legacy_discussion_id, 2, type: :string
  field :link_to_discussion, 3, type: :string
  field :parent, 4, type: Google.Apps.Drive.Activity.V2.DriveItem
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.File do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.Folder do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Apps.Drive.Activity.V2.DriveItem.Folder.Type.t()
        }

  defstruct [:type]

  field :type, 6, type: Google.Apps.Drive.Activity.V2.DriveItem.Folder.Type, enum: true
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.DriveFile do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder.Type.t()
        }

  defstruct [:type]

  field :type, 6, type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder.Type, enum: true
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item_type: {atom, any},
          name: String.t(),
          title: String.t(),
          file: Google.Apps.Drive.Activity.V2.DriveItem.File.t() | nil,
          folder: Google.Apps.Drive.Activity.V2.DriveItem.Folder.t() | nil,
          mime_type: String.t(),
          owner: Google.Apps.Drive.Activity.V2.Owner.t() | nil
        }

  defstruct [:item_type, :name, :title, :file, :folder, :mime_type, :owner]

  oneof :item_type, 0
  field :name, 1, type: :string
  field :title, 2, type: :string
  field :file, 3, type: Google.Apps.Drive.Activity.V2.DriveItem.File, deprecated: true
  field :folder, 4, type: Google.Apps.Drive.Activity.V2.DriveItem.Folder, deprecated: true
  field :drive_file, 8, type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFile, oneof: 0
  field :drive_folder, 9, type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder, oneof: 0
  field :mime_type, 6, type: :string
  field :owner, 7, type: Google.Apps.Drive.Activity.V2.Owner
end

defmodule Google.Apps.Drive.Activity.V2.Owner do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          owner: {atom, any},
          team_drive: Google.Apps.Drive.Activity.V2.TeamDriveReference.t() | nil,
          domain: Google.Apps.Drive.Activity.V2.Domain.t() | nil
        }

  defstruct [:owner, :team_drive, :domain]

  oneof :owner, 0
  field :user, 1, type: Google.Apps.Drive.Activity.V2.User, oneof: 0
  field :drive, 4, type: Google.Apps.Drive.Activity.V2.DriveReference, oneof: 0
  field :team_drive, 2, type: Google.Apps.Drive.Activity.V2.TeamDriveReference, deprecated: true
  field :domain, 3, type: Google.Apps.Drive.Activity.V2.Domain
end

defmodule Google.Apps.Drive.Activity.V2.TeamDrive do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          title: String.t(),
          root: Google.Apps.Drive.Activity.V2.DriveItem.t() | nil
        }

  defstruct [:name, :title, :root]

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :root, 3, type: Google.Apps.Drive.Activity.V2.DriveItem
end

defmodule Google.Apps.Drive.Activity.V2.Drive do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          title: String.t(),
          root: Google.Apps.Drive.Activity.V2.DriveItem.t() | nil
        }

  defstruct [:name, :title, :root]

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :root, 3, type: Google.Apps.Drive.Activity.V2.DriveItem
end

defmodule Google.Apps.Drive.Activity.V2.DriveItemReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item_type: {atom, any},
          name: String.t(),
          title: String.t(),
          file: Google.Apps.Drive.Activity.V2.DriveItem.File.t() | nil,
          folder: Google.Apps.Drive.Activity.V2.DriveItem.Folder.t() | nil
        }

  defstruct [:item_type, :name, :title, :file, :folder]

  oneof :item_type, 0
  field :name, 1, type: :string
  field :title, 2, type: :string
  field :file, 3, type: Google.Apps.Drive.Activity.V2.DriveItem.File, deprecated: true
  field :folder, 4, type: Google.Apps.Drive.Activity.V2.DriveItem.Folder, deprecated: true
  field :drive_file, 8, type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFile, oneof: 0
  field :drive_folder, 9, type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder, oneof: 0
end

defmodule Google.Apps.Drive.Activity.V2.TeamDriveReference do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          title: String.t()
        }

  defstruct [:name, :title]

  field :name, 1, type: :string
  field :title, 2, type: :string
end

defmodule Google.Apps.Drive.Activity.V2.DriveReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          title: String.t()
        }

  defstruct [:name, :title]

  field :name, 1, type: :string
  field :title, 2, type: :string
end
