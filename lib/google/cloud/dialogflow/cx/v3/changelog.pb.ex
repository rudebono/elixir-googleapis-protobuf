defmodule Google.Cloud.Dialogflow.Cx.V3.ListChangelogsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.ListChangelogsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          changelogs: [Google.Cloud.Dialogflow.Cx.V3.Changelog.t()],
          next_page_token: String.t()
        }

  defstruct changelogs: [],
            next_page_token: ""

  field :changelogs, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Changelog
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.GetChangelogRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3.Changelog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          user_email: String.t(),
          display_name: String.t(),
          action: String.t(),
          type: String.t(),
          resource: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            user_email: "",
            display_name: "",
            action: "",
            type: "",
            resource: "",
            create_time: nil

  field :name, 1, type: :string
  field :user_email, 2, type: :string, json_name: "userEmail"
  field :display_name, 7, type: :string, json_name: "displayName"
  field :action, 11, type: :string
  field :type, 8, type: :string
  field :resource, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
end
defmodule Google.Cloud.Dialogflow.Cx.V3.Changelogs.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3.Changelogs"

  rpc :ListChangelogs,
      Google.Cloud.Dialogflow.Cx.V3.ListChangelogsRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListChangelogsResponse

  rpc :GetChangelog,
      Google.Cloud.Dialogflow.Cx.V3.GetChangelogRequest,
      Google.Cloud.Dialogflow.Cx.V3.Changelog
end

defmodule Google.Cloud.Dialogflow.Cx.V3.Changelogs.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.Changelogs.Service
end
