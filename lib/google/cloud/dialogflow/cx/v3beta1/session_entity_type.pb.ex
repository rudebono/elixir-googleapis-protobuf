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

  defstruct [:name, :entity_override_mode, :entities]

  field :name, 1, type: :string

  field :entity_override_mode, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType.EntityOverrideMode,
    enum: true

  field :entities, 4, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Entity
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListSessionEntityTypesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListSessionEntityTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session_entity_types: [Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType.t()],
          next_page_token: String.t()
        }

  defstruct [:session_entity_types, :next_page_token]

  field :session_entity_types, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          session_entity_type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType.t() | nil
        }

  defstruct [:parent, :session_entity_type]

  field :parent, 1, type: :string
  field :session_entity_type, 2, type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          session_entity_type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:session_entity_type, :update_mask]

  field :session_entity_type, 1, type: Google.Cloud.Dialogflow.Cx.V3beta1.SessionEntityType
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
