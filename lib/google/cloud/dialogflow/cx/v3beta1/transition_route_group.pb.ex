defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :transition_routes, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRoute,
    json_name: "transitionRoutes"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTransitionRouteGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :language_code, 4, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTransitionRouteGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :transition_route_groups, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup,
    json_name: "transitionRouteGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetTransitionRouteGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateTransitionRouteGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :transition_route_group, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup,
    json_name: "transitionRouteGroup",
    deprecated: false

  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateTransitionRouteGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :transition_route_group, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup,
    json_name: "transitionRouteGroup",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteTransitionRouteGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroups.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.TransitionRouteGroups",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListTransitionRouteGroups,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListTransitionRouteGroupsRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListTransitionRouteGroupsResponse

  rpc :GetTransitionRouteGroup,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetTransitionRouteGroupRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup

  rpc :CreateTransitionRouteGroup,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateTransitionRouteGroupRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup

  rpc :UpdateTransitionRouteGroup,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateTransitionRouteGroupRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup

  rpc :DeleteTransitionRouteGroup,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteTransitionRouteGroupRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroups.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroups.Service
end
