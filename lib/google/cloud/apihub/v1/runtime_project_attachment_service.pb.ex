defmodule Google.Cloud.Apihub.V1.CreateRuntimeProjectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :runtime_project_attachment_id, 2,
    type: :string,
    json_name: "runtimeProjectAttachmentId",
    deprecated: false

  field :runtime_project_attachment, 3,
    type: Google.Cloud.Apihub.V1.RuntimeProjectAttachment,
    json_name: "runtimeProjectAttachment",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetRuntimeProjectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListRuntimeProjectAttachmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListRuntimeProjectAttachmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :runtime_project_attachments, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.RuntimeProjectAttachment,
    json_name: "runtimeProjectAttachments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.DeleteRuntimeProjectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.LookupRuntimeProjectAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.LookupRuntimeProjectAttachmentResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :runtime_project_attachment, 1,
    type: Google.Cloud.Apihub.V1.RuntimeProjectAttachment,
    json_name: "runtimeProjectAttachment"
end

defmodule Google.Cloud.Apihub.V1.RuntimeProjectAttachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :runtime_project, 2, type: :string, json_name: "runtimeProject", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.RuntimeProjectAttachmentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apihub.v1.RuntimeProjectAttachmentService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateRuntimeProjectAttachment,
      Google.Cloud.Apihub.V1.CreateRuntimeProjectAttachmentRequest,
      Google.Cloud.Apihub.V1.RuntimeProjectAttachment

  rpc :GetRuntimeProjectAttachment,
      Google.Cloud.Apihub.V1.GetRuntimeProjectAttachmentRequest,
      Google.Cloud.Apihub.V1.RuntimeProjectAttachment

  rpc :ListRuntimeProjectAttachments,
      Google.Cloud.Apihub.V1.ListRuntimeProjectAttachmentsRequest,
      Google.Cloud.Apihub.V1.ListRuntimeProjectAttachmentsResponse

  rpc :DeleteRuntimeProjectAttachment,
      Google.Cloud.Apihub.V1.DeleteRuntimeProjectAttachmentRequest,
      Google.Protobuf.Empty

  rpc :LookupRuntimeProjectAttachment,
      Google.Cloud.Apihub.V1.LookupRuntimeProjectAttachmentRequest,
      Google.Cloud.Apihub.V1.LookupRuntimeProjectAttachmentResponse
end

defmodule Google.Cloud.Apihub.V1.RuntimeProjectAttachmentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.RuntimeProjectAttachmentService.Service
end