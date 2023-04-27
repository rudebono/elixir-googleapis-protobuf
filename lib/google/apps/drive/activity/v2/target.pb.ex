defmodule Google.Apps.Drive.Activity.V2.DriveItem.Folder.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :MY_DRIVE_ROOT, 1
  field :TEAM_DRIVE_ROOT, 2
  field :STANDARD_FOLDER, 3
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :MY_DRIVE_ROOT, 1
  field :SHARED_DRIVE_ROOT, 2
  field :STANDARD_FOLDER, 3
end

defmodule Google.Apps.Drive.Activity.V2.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    json_name: "teamDrive",
    deprecated: true
end

defmodule Google.Apps.Drive.Activity.V2.TargetReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :object, 0

  field :drive_item, 1,
    type: Google.Apps.Drive.Activity.V2.DriveItemReference,
    json_name: "driveItem",
    oneof: 0

  field :drive, 3, type: Google.Apps.Drive.Activity.V2.DriveReference, oneof: 0

  field :team_drive, 2,
    type: Google.Apps.Drive.Activity.V2.TeamDriveReference,
    json_name: "teamDrive",
    deprecated: true
end

defmodule Google.Apps.Drive.Activity.V2.FileComment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :legacy_comment_id, 1, type: :string, json_name: "legacyCommentId"
  field :legacy_discussion_id, 2, type: :string, json_name: "legacyDiscussionId"
  field :link_to_discussion, 3, type: :string, json_name: "linkToDiscussion"
  field :parent, 4, type: Google.Apps.Drive.Activity.V2.DriveItem
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.File do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.Folder do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 6, type: Google.Apps.Drive.Activity.V2.DriveItem.Folder.Type, enum: true
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.DriveFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 6, type: Google.Apps.Drive.Activity.V2.DriveItem.DriveFolder.Type, enum: true
end

defmodule Google.Apps.Drive.Activity.V2.DriveItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Apps.Drive.Activity.V2.Owner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :owner, 0

  field :user, 1, type: Google.Apps.Drive.Activity.V2.User, oneof: 0
  field :drive, 4, type: Google.Apps.Drive.Activity.V2.DriveReference, oneof: 0

  field :team_drive, 2,
    type: Google.Apps.Drive.Activity.V2.TeamDriveReference,
    json_name: "teamDrive",
    deprecated: true

  field :domain, 3, type: Google.Apps.Drive.Activity.V2.Domain
end

defmodule Google.Apps.Drive.Activity.V2.TeamDrive do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :root, 3, type: Google.Apps.Drive.Activity.V2.DriveItem
end

defmodule Google.Apps.Drive.Activity.V2.Drive do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :root, 3, type: Google.Apps.Drive.Activity.V2.DriveItem
end

defmodule Google.Apps.Drive.Activity.V2.DriveItemReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
end

defmodule Google.Apps.Drive.Activity.V2.TeamDriveReference do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :title, 2, type: :string
end

defmodule Google.Apps.Drive.Activity.V2.DriveReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :title, 2, type: :string
end