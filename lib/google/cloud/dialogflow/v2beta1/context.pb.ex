defmodule Google.Cloud.Dialogflow.V2beta1.Context do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :lifespan_count, 2, type: :int32, json_name: "lifespanCount"
  field :parameters, 3, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListContextsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListContextsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :contexts, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Context
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :context, 2, type: Google.Cloud.Dialogflow.V2beta1.Context, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :context, 1, type: Google.Cloud.Dialogflow.V2beta1.Context, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteContextRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteAllContextsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.Contexts.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.Contexts",
    protoc_gen_elixir_version: "0.13.0"

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