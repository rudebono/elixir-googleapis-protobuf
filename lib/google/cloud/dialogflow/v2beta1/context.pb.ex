defmodule Google.Cloud.Dialogflow.V2beta1.Context do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          lifespan_count: integer,
          parameters: Google.Protobuf.Struct.t() | nil
        }

  defstruct name: "",
            lifespan_count: 0,
            parameters: nil

  field :name, 1, type: :string
  field :lifespan_count, 2, type: :int32, json_name: "lifespanCount"
  field :parameters, 3, type: Google.Protobuf.Struct
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListContextsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.ListContextsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contexts: [Google.Cloud.Dialogflow.V2beta1.Context.t()],
          next_page_token: String.t()
        }

  defstruct contexts: [],
            next_page_token: ""

  field :contexts, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Context
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2beta1.GetContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.CreateContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          context: Google.Cloud.Dialogflow.V2beta1.Context.t() | nil
        }

  defstruct parent: "",
            context: nil

  field :parent, 1, type: :string, deprecated: false
  field :context, 2, type: Google.Cloud.Dialogflow.V2beta1.Context, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.UpdateContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context: Google.Cloud.Dialogflow.V2beta1.Context.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct context: nil,
            update_mask: nil

  field :context, 1, type: Google.Cloud.Dialogflow.V2beta1.Context, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.DeleteContextRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.DeleteAllContextsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2beta1.Contexts.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.Contexts"

  rpc :ListContexts,
      Google.Cloud.Dialogflow.V2beta1.ListContextsRequest,
      Google.Cloud.Dialogflow.V2beta1.ListContextsResponse

  rpc :GetContext,
      Google.Cloud.Dialogflow.V2beta1.GetContextRequest,
      Google.Cloud.Dialogflow.V2beta1.Context

  rpc :CreateContext,
      Google.Cloud.Dialogflow.V2beta1.CreateContextRequest,
      Google.Cloud.Dialogflow.V2beta1.Context

  rpc :UpdateContext,
      Google.Cloud.Dialogflow.V2beta1.UpdateContextRequest,
      Google.Cloud.Dialogflow.V2beta1.Context

  rpc :DeleteContext, Google.Cloud.Dialogflow.V2beta1.DeleteContextRequest, Google.Protobuf.Empty

  rpc :DeleteAllContexts,
      Google.Cloud.Dialogflow.V2beta1.DeleteAllContextsRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.V2beta1.Contexts.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.Contexts.Service
end
