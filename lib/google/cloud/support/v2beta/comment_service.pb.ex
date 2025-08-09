defmodule Google.Cloud.Support.V2beta.ListCommentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Support.V2beta.ListCommentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :comments, 1, repeated: true, type: Google.Cloud.Support.V2beta.Comment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2beta.CreateCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :comment, 2, type: Google.Cloud.Support.V2beta.Comment, deprecated: false
end

defmodule Google.Cloud.Support.V2beta.GetCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Support.V2beta.CommentService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.support.v2beta.CommentService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListComments,
      Google.Cloud.Support.V2beta.ListCommentsRequest,
      Google.Cloud.Support.V2beta.ListCommentsResponse

  rpc :CreateComment,
      Google.Cloud.Support.V2beta.CreateCommentRequest,
      Google.Cloud.Support.V2beta.Comment

  rpc :GetComment,
      Google.Cloud.Support.V2beta.GetCommentRequest,
      Google.Cloud.Support.V2beta.Comment
end

defmodule Google.Cloud.Support.V2beta.CommentService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Support.V2beta.CommentService.Service
end
