defmodule Google.Chat.V1.Attachment.Source do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SOURCE_UNSPECIFIED, 0
  field :DRIVE_FILE, 1
  field :UPLOADED_CONTENT, 2
end

defmodule Google.Chat.V1.Attachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :data_ref, 0

  field :name, 1, type: :string, deprecated: false
  field :content_name, 2, type: :string, json_name: "contentName", deprecated: false
  field :content_type, 3, type: :string, json_name: "contentType", deprecated: false

  field :attachment_data_ref, 4,
    type: Google.Chat.V1.AttachmentDataRef,
    json_name: "attachmentDataRef",
    oneof: 0,
    deprecated: false

  field :drive_data_ref, 7,
    type: Google.Chat.V1.DriveDataRef,
    json_name: "driveDataRef",
    oneof: 0,
    deprecated: false

  field :thumbnail_uri, 5, type: :string, json_name: "thumbnailUri", deprecated: false
  field :download_uri, 6, type: :string, json_name: "downloadUri", deprecated: false
  field :source, 9, type: Google.Chat.V1.Attachment.Source, enum: true, deprecated: false
end

defmodule Google.Chat.V1.DriveDataRef do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :drive_file_id, 2, type: :string, json_name: "driveFileId"
end

defmodule Google.Chat.V1.AttachmentDataRef do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :attachment_upload_token, 2,
    type: :string,
    json_name: "attachmentUploadToken",
    deprecated: false
end

defmodule Google.Chat.V1.GetAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.UploadAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filename, 4, type: :string, deprecated: false
end

defmodule Google.Chat.V1.UploadAttachmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attachment_data_ref, 1,
    type: Google.Chat.V1.AttachmentDataRef,
    json_name: "attachmentDataRef"
end