defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          transition_routes: [Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRoute.t()]
        }

  defstruct [:name, :display_name, :transition_routes]

  field :name, 1, type: :string
  field :display_name, 2, type: :string

  field :transition_routes, 5,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRoute
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTransitionRouteGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          language_code: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :language_code]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :language_code, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListTransitionRouteGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transition_route_groups: [Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup.t()],
          next_page_token: String.t()
        }

  defstruct [:transition_route_groups, :next_page_token]

  field :transition_route_groups, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetTransitionRouteGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t()
        }

  defstruct [:name, :language_code]

  field :name, 1, type: :string
  field :language_code, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateTransitionRouteGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          transition_route_group:
            Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup.t() | nil,
          language_code: String.t()
        }

  defstruct [:parent, :transition_route_group, :language_code]

  field :parent, 1, type: :string
  field :transition_route_group, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup
  field :language_code, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateTransitionRouteGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transition_route_group:
            Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          language_code: String.t()
        }

  defstruct [:transition_route_group, :update_mask, :language_code]

  field :transition_route_group, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroup
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :language_code, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteTransitionRouteGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.TransitionRouteGroups.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3beta1.TransitionRouteGroups"

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
