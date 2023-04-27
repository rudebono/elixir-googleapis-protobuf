defmodule Google.Cloud.Dialogflow.V2.Context do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :lifespan_count, 2, type: :int32, json_name: "lifespanCount", deprecated: false
  field :parameters, 3, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListContextsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListContextsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :contexts, 1, repeated: true, type: Google.Cloud.Dialogflow.V2.Context
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2.GetContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.CreateContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :context, 2, type: Google.Cloud.Dialogflow.V2.Context, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.UpdateContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :context, 1, type: Google.Cloud.Dialogflow.V2.Context, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.DeleteContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.DeleteAllContextsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.Contexts.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.Contexts",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListContexts,
      Google.Cloud.Dialogflow.V2.ListContextsRequest,
      Google.Cloud.Dialogflow.V2.ListContextsResponse

  rpc :GetContext,
      Google.Cloud.Dialogflow.V2.GetContextRequest,
      Google.Cloud.Dialogflow.V2.Context

  rpc :CreateContext,
      Google.Cloud.Dialogflow.V2.CreateContextRequest,
      Google.Cloud.Dialogflow.V2.Context

  rpc :UpdateContext,
      Google.Cloud.Dialogflow.V2.UpdateContextRequest,
      Google.Cloud.Dialogflow.V2.Context

  rpc :DeleteContext, Google.Cloud.Dialogflow.V2.DeleteContextRequest, Google.Protobuf.Empty

  rpc :DeleteAllContexts,
      Google.Cloud.Dialogflow.V2.DeleteAllContextsRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.V2.Contexts.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.Contexts.Service
end