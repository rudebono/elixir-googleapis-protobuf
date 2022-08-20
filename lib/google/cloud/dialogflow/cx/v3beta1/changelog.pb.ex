defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListChangelogsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListChangelogsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :changelogs, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.Changelog
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetChangelogRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Changelog do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :user_email, 2, type: :string, json_name: "userEmail"
  field :display_name, 7, type: :string, json_name: "displayName"
  field :action, 11, type: :string
  field :type, 8, type: :string
  field :resource, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Changelogs.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.Changelogs",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListChangelogs,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListChangelogsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListChangelogsResponse

  rpc :GetChangelog,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetChangelogRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.Changelog
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.Changelogs.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.Changelogs.Service
end