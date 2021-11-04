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
          object:
            {:drive_item, Google.Apps.Drive.Activity.V2.DriveItem.t() | nil}
            | {:drive, Google.Apps.Drive.Activity.V2.Drive.t() | nil}
            | {:file_comment, Google.Apps.Drive.Activity.V2.FileComment.t() | nil},
          team_drive: Google.Apps.Drive.Activity.V2.TeamDrive.t() | nil
        }

  defstruct [:object, :team_drive]

  oneof :object, 0

  field :drive_item, 1,
    type: Google.Apps.Drive.Activity.V2.DriveItem,
    json_name: "driveItem",
    oneof: 0

  field :drive, 5, type: Google.Apps.Drive.Activity.V2.Drive, oneof: 0

  field :file_comment, 3,
    type: Google.Apps.Drive.Activity.V2.FileComment,
    json_name: "fileComment",
    oneof: 0

  field :team_drive, 2,
    type: Google.Apps.Drive.Activity.V2.TeamDrive,
    deprecated: true,
    json_name: "teamDrive"

  def transform_module(), do: nil
end

defmodule Google.Apps.Drive.Activity.V2.TargetReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          object:
            {:drive_item, Google.Apps.Drive.Activity.V2.DriveItemReference.t() | nil}
            | {:drive, Google.Apps.Drive.Activity.V2.DriveReference.t() | nil},
          team_drive: Google.Apps.Drive.Activity.V2.TeamDriveReference.t() | nil
        }

  defstruct [:object, :team_drive]

  oneof :object, 0

  field :drive_item, 1,
    type: Google.Apps.Drive.Activity.V2.DriveItemReference,
    json_name: "driveItem",
    oneof: 0

  field :drive, 3, type: Google.Apps.Drive.Activity.V2.DriveReference, oneof: 0

  field :team_drive, 2,
    type: Google.Apps.Drive.Activity.V2.TeamDriveReference,
    deprecated: true,
    json_name: "teamDrive"

  def transform_module(), do: nil
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

  field :legacy_comment_id, 1, type: :string, json_name: "legacyCommentId"
  field :legacy_discussion_id, 2, type: :string, json_name: "legacyDiscussionId"
  field :link_to_discussion, 3, type: :string, json_name: "linkToDiscussion"
  field :parent, 4, type: Google.Apps.Drive.Activity.V2.DriveItem

  def transform_module(), do: nil
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.File do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.Folder do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Apps.Drive.Activity.V2.DriveItem.Folder.Type.t()
        }

  defstruct [:type]

  field :type, 6, type: Google.Apps.Drive.Activity.V2.DriveItem.Folder.Type, enum: true

  def transform_module(), do: nil
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.DriveFile do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder.Type.t()
        }

  defstruct [:type]

  field :type, 6, type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder.Type, enum: true

  def transform_module(), do: nil
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item_type:
            {:drive_file, Google.Apps.Drive.Activity.V2.DriveItem.DriveFile.t() | nil}
            | {:drive_folder, Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder.t() | nil},
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

  field :drive_file, 8,
    type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFile,
    json_name: "driveFile",
    oneof: 0

  field :drive_folder, 9,
    type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder,
    json_name: "driveFolder",
    oneof: 0

  field :mime_type, 6, type: :string, json_name: "mimeType"
  field :owner, 7, type: Google.Apps.Drive.Activity.V2.Owner

  def transform_module(), do: nil
end

defmodule Google.Apps.Drive.Activity.V2.Owner do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          owner:
            {:user, Google.Apps.Drive.Activity.V2.User.t() | nil}
            | {:drive, Google.Apps.Drive.Activity.V2.DriveReference.t() | nil},
          team_drive: Google.Apps.Drive.Activity.V2.TeamDriveReference.t() | nil,
          domain: Google.Apps.Drive.Activity.V2.Domain.t() | nil
        }

  defstruct [:owner, :team_drive, :domain]

  oneof :owner, 0

  field :user, 1, type: Google.Apps.Drive.Activity.V2.User, oneof: 0
  field :drive, 4, type: Google.Apps.Drive.Activity.V2.DriveReference, oneof: 0

  field :team_drive, 2,
    type: Google.Apps.Drive.Activity.V2.TeamDriveReference,
    deprecated: true,
    json_name: "teamDrive"

  field :domain, 3, type: Google.Apps.Drive.Activity.V2.Domain

  def transform_module(), do: nil
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

  def transform_module(), do: nil
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

  def transform_module(), do: nil
end

defmodule Google.Apps.Drive.Activity.V2.DriveItemReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          item_type:
            {:drive_file, Google.Apps.Drive.Activity.V2.DriveItem.DriveFile.t() | nil}
            | {:drive_folder, Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder.t() | nil},
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

  field :drive_file, 8,
    type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFile,
    json_name: "driveFile",
    oneof: 0

  field :drive_folder, 9,
    type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder,
    json_name: "driveFolder",
    oneof: 0

  def transform_module(), do: nil
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

  def transform_module(), do: nil
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

  def transform_module(), do: nil
end
