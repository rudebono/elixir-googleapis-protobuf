defmodule Google.Devtools.Artifactregistry.V1.Attachment.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1.Attachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :target, 2, type: :string, deprecated: false
  field :type, 3, type: :string
  field :attachment_namespace, 4, type: :string, json_name: "attachmentNamespace"

  field :annotations, 5,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.Attachment.AnnotationsEntry,
    map: true,
    deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :files, 8, repeated: true, type: :string, deprecated: false
  field :oci_version_name, 9, type: :string, json_name: "ociVersionName", deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.ListAttachmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.ListAttachmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :attachments, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1.Attachment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.GetAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.CreateAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :attachment_id, 2, type: :string, json_name: "attachmentId", deprecated: false
  field :attachment, 3, type: Google.Devtools.Artifactregistry.V1.Attachment, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.DeleteAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
