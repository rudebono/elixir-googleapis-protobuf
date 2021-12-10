defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType.EntityOverrideMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ENTITY_OVERRIDE_MODE_UNSPECIFIED
          | :ENTITY_OVERRIDE_MODE_OVERRIDE
          | :ENTITY_OVERRIDE_MODE_SUPPLEMENT

  field :ENTITY_OVERRIDE_MODE_UNSPECIFIED, 0
  field :ENTITY_OVERRIDE_MODE_OVERRIDE, 1
  field :ENTITY_OVERRIDE_MODE_SUPPLEMENT, 2
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          entity_override_mode:
            Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType.EntityOverrideMode.t(),
          entities: [Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Entity.t()]
        }

  defstruct name: "",
            entity_override_mode: :ENTITY_OVERRIDE_MODE_UNSPECIFIED,
            entities: []

  field :name, 1, type: :string, deprecated: false

  field :entity_override_mode, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType.EntityOverrideMode,
    json_name: "entityOverrideMode",
    enum: true,
    deprecated: false

  field :entities, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Entity,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListSessionEntityTypesRequest do
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
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListSessionEntityTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session_entity_types: [Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType.t()],
          next_page_token: String.t()
        }

  defstruct session_entity_types: [],
            next_page_token: ""

  field :session_entity_types, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType,
    json_name: "sessionEntityTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          session_entity_type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType.t() | nil
        }

  defstruct parent: "",
            session_entity_type: nil

  field :parent, 1, type: :string, deprecated: false

  field :session_entity_type, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType,
    json_name: "sessionEntityType",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session_entity_type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct session_entity_type: nil,
            update_mask: nil

  field :session_entity_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType,
    json_name: "sessionEntityType",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityTypes.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3beta1.SessionEntityTypes"

  rpc :ListSessionEntityTypes,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListSessionEntityTypesRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListSessionEntityTypesResponse

  rpc :GetSessionEntityType,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType

  rpc :CreateSessionEntityType,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType

  rpc :UpdateSessionEntityType,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType

  rpc :DeleteSessionEntityType,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteSessionEntityTypeRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityTypes.Service
end
