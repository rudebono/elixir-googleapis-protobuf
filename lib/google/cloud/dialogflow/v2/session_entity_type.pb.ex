defmodule Google.Cloud.Dialogflow.V2.SessionEntityType.EntityOverrideMode do
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
defmodule Google.Cloud.Dialogflow.V2.SessionEntityType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          entity_override_mode:
            Google.Cloud.Dialogflow.V2.SessionEntityType.EntityOverrideMode.t(),
          entities: [Google.Cloud.Dialogflow.V2.EntityType.Entity.t()]
        }

  defstruct name: "",
            entity_override_mode: :ENTITY_OVERRIDE_MODE_UNSPECIFIED,
            entities: []

  field :name, 1, type: :string, deprecated: false

  field :entity_override_mode, 2,
    type: Google.Cloud.Dialogflow.V2.SessionEntityType.EntityOverrideMode,
    json_name: "entityOverrideMode",
    enum: true,
    deprecated: false

  field :entities, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.EntityType.Entity,
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListSessionEntityTypesRequest do
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
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListSessionEntityTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session_entity_types: [Google.Cloud.Dialogflow.V2.SessionEntityType.t()],
          next_page_token: String.t()
        }

  defstruct session_entity_types: [],
            next_page_token: ""

  field :session_entity_types, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.SessionEntityType,
    json_name: "sessionEntityTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2.GetSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.CreateSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          session_entity_type: Google.Cloud.Dialogflow.V2.SessionEntityType.t() | nil
        }

  defstruct parent: "",
            session_entity_type: nil

  field :parent, 1, type: :string, deprecated: false

  field :session_entity_type, 2,
    type: Google.Cloud.Dialogflow.V2.SessionEntityType,
    json_name: "sessionEntityType",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.UpdateSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session_entity_type: Google.Cloud.Dialogflow.V2.SessionEntityType.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct session_entity_type: nil,
            update_mask: nil

  field :session_entity_type, 1,
    type: Google.Cloud.Dialogflow.V2.SessionEntityType,
    json_name: "sessionEntityType",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.DeleteSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.SessionEntityTypes.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2.SessionEntityTypes"

  rpc :ListSessionEntityTypes,
      Google.Cloud.Dialogflow.V2.ListSessionEntityTypesRequest,
      Google.Cloud.Dialogflow.V2.ListSessionEntityTypesResponse

  rpc :GetSessionEntityType,
      Google.Cloud.Dialogflow.V2.GetSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.V2.SessionEntityType

  rpc :CreateSessionEntityType,
      Google.Cloud.Dialogflow.V2.CreateSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.V2.SessionEntityType

  rpc :UpdateSessionEntityType,
      Google.Cloud.Dialogflow.V2.UpdateSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.V2.SessionEntityType

  rpc :DeleteSessionEntityType,
      Google.Cloud.Dialogflow.V2.DeleteSessionEntityTypeRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.V2.SessionEntityTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.SessionEntityTypes.Service
end
