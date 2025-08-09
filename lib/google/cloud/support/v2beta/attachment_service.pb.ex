defmodule Google.Cloud.Support.V2beta.ListAttachmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Support.V2beta.GetAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Support.V2beta.ListAttachmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :attachments, 1, repeated: true, type: Google.Cloud.Support.V2beta.Attachment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2beta.CaseAttachmentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.support.v2beta.CaseAttachmentService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListAttachments,
      Google.Cloud.Support.V2beta.ListAttachmentsRequest,
      Google.Cloud.Support.V2beta.ListAttachmentsResponse

  rpc :GetAttachment,
      Google.Cloud.Support.V2beta.GetAttachmentRequest,
      Google.Cloud.Support.V2beta.Attachment
end

defmodule Google.Cloud.Support.V2beta.CaseAttachmentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Support.V2beta.CaseAttachmentService.Service
end
