defmodule Google.Cloud.Dataplex.V1.GetContentRequest.ContentView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CONTENT_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :CONTENT_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end
defmodule Google.Cloud.Dataplex.V1.CreateContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          content: Google.Cloud.Dataplex.V1.Content.t() | nil,
          validate_only: boolean
        }

  defstruct parent: "",
            content: nil,
            validate_only: false

  field :parent, 1, type: :string, deprecated: false
  field :content, 2, type: Google.Cloud.Dataplex.V1.Content, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.UpdateContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          content: Google.Cloud.Dataplex.V1.Content.t() | nil,
          validate_only: boolean
        }

  defstruct update_mask: nil,
            content: nil,
            validate_only: false

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :content, 2, type: Google.Cloud.Dataplex.V1.Content, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.DeleteContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ListContentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: [Google.Cloud.Dataplex.V1.Content.t()],
          next_page_token: String.t()
        }

  defstruct content: [],
            next_page_token: ""

  field :content, 1, repeated: true, type: Google.Cloud.Dataplex.V1.Content
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dataplex.V1.GetContentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Cloud.Dataplex.V1.GetContentRequest.ContentView.t()
        }

  defstruct name: "",
            view: :CONTENT_VIEW_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Dataplex.V1.GetContentRequest.ContentView,
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Dataplex.V1.ContentService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dataplex.v1.ContentService"

  rpc :CreateContent,
      Google.Cloud.Dataplex.V1.CreateContentRequest,
      Google.Cloud.Dataplex.V1.Content

  rpc :UpdateContent,
      Google.Cloud.Dataplex.V1.UpdateContentRequest,
      Google.Cloud.Dataplex.V1.Content

  rpc :DeleteContent, Google.Cloud.Dataplex.V1.DeleteContentRequest, Google.Protobuf.Empty

  rpc :GetContent, Google.Cloud.Dataplex.V1.GetContentRequest, Google.Cloud.Dataplex.V1.Content

  rpc :ListContent,
      Google.Cloud.Dataplex.V1.ListContentRequest,
      Google.Cloud.Dataplex.V1.ListContentResponse
end

defmodule Google.Cloud.Dataplex.V1.ContentService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dataplex.V1.ContentService.Service
end
