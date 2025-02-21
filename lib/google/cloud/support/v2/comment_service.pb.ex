defmodule Google.Cloud.Support.V2.ListCommentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Support.V2.ListCommentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :comments, 1, repeated: true, type: Google.Cloud.Support.V2.Comment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2.CreateCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :comment, 2, type: Google.Cloud.Support.V2.Comment, deprecated: false
end

defmodule Google.Cloud.Support.V2.CommentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.support.v2.CommentService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListComments,
      Google.Cloud.Support.V2.ListCommentsRequest,
      Google.Cloud.Support.V2.ListCommentsResponse

  rpc :CreateComment,
      Google.Cloud.Support.V2.CreateCommentRequest,
      Google.Cloud.Support.V2.Comment
end

defmodule Google.Cloud.Support.V2.CommentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Support.V2.CommentService.Service
end
