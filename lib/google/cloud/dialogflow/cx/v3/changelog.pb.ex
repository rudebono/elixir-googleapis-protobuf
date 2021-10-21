defmodule Google.Cloud.Dialogflow.Cx.V3.ListChangelogsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListChangelogsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          changelogs: [Google.Cloud.Dialogflow.Cx.V3.Changelog.t()],
          next_page_token: String.t()
        }

  defstruct [:changelogs, :next_page_token]

  field :changelogs, 1, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3.Changelog
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetChangelogRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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

  defstruct [:name, :user_email, :display_name, :action, :type, :resource, :create_time]

  field :name, 1, type: :string
  field :user_email, 2, type: :string
  field :display_name, 7, type: :string
  field :action, 11, type: :string
  field :type, 8, type: :string
  field :resource, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
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
