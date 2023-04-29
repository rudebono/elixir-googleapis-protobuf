defmodule Google.Cloud.Support.V2.ListAttachmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Support.V2.ListAttachmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :attachments, 1, repeated: true, type: Google.Cloud.Support.V2.Attachment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2.CaseAttachmentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.support.v2.CaseAttachmentService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListAttachments,
      Google.Cloud.Support.V2.ListAttachmentsRequest,
      Google.Cloud.Support.V2.ListAttachmentsResponse
end

defmodule Google.Cloud.Support.V2.CaseAttachmentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Support.V2.CaseAttachmentService.Service
end