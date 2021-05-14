defmodule Google.Cloud.Dialogflow.V2beta1.EntityType.Kind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :KIND_UNSPECIFIED | :KIND_MAP | :KIND_LIST | :KIND_REGEXP

  field :KIND_UNSPECIFIED, 0

  field :KIND_MAP, 1

  field :KIND_LIST, 2

  field :KIND_REGEXP, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.EntityType.AutoExpansionMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :AUTO_EXPANSION_MODE_UNSPECIFIED | :AUTO_EXPANSION_MODE_DEFAULT

  field :AUTO_EXPANSION_MODE_UNSPECIFIED, 0

  field :AUTO_EXPANSION_MODE_DEFAULT, 1
end

defmodule Google.Cloud.Dialogflow.V2beta1.EntityType.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          synonyms: [String.t()]
        }

  defstruct [:value, :synonyms]

  field :value, 1, type: :string
  field :synonyms, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.EntityType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          kind: Google.Cloud.Dialogflow.V2beta1.EntityType.Kind.t(),
          auto_expansion_mode: Google.Cloud.Dialogflow.V2beta1.EntityType.AutoExpansionMode.t(),
          entities: [Google.Cloud.Dialogflow.V2beta1.EntityType.Entity.t()],
          enable_fuzzy_extraction: boolean
        }

  defstruct [
    :name,
    :display_name,
    :kind,
    :auto_expansion_mode,
    :entities,
    :enable_fuzzy_extraction
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :kind, 3, type: Google.Cloud.Dialogflow.V2beta1.EntityType.Kind, enum: true

  field :auto_expansion_mode, 4,
    type: Google.Cloud.Dialogflow.V2beta1.EntityType.AutoExpansionMode,
    enum: true

  field :entities, 6, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.EntityType.Entity
  field :enable_fuzzy_extraction, 7, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListEntityTypesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          language_code: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :language_code, :page_size, :page_token]

  field :parent, 1, type: :string
  field :language_code, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListEntityTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_types: [Google.Cloud.Dialogflow.V2beta1.EntityType.t()],
          next_page_token: String.t()
        }

  defstruct [:entity_types, :next_page_token]

  field :entity_types, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.EntityType
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetEntityTypeRequest do
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

defmodule Google.Cloud.Dialogflow.V2beta1.CreateEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entity_type: Google.Cloud.Dialogflow.V2beta1.EntityType.t() | nil,
          language_code: String.t()
        }

  defstruct [:parent, :entity_type, :language_code]

  field :parent, 1, type: :string
  field :entity_type, 2, type: Google.Cloud.Dialogflow.V2beta1.EntityType
  field :language_code, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type: Google.Cloud.Dialogflow.V2beta1.EntityType.t() | nil,
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:entity_type, :language_code, :update_mask]

  field :entity_type, 1, type: Google.Cloud.Dialogflow.V2beta1.EntityType
  field :language_code, 2, type: :string
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchUpdateEntityTypesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type_batch: {atom, any},
          parent: String.t(),
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:entity_type_batch, :parent, :language_code, :update_mask]

  oneof :entity_type_batch, 0
  field :parent, 1, type: :string
  field :entity_type_batch_uri, 2, type: :string, oneof: 0

  field :entity_type_batch_inline, 3,
    type: Google.Cloud.Dialogflow.V2beta1.EntityTypeBatch,
    oneof: 0

  field :language_code, 4, type: :string
  field :update_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchUpdateEntityTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_types: [Google.Cloud.Dialogflow.V2beta1.EntityType.t()]
        }

  defstruct [:entity_types]

  field :entity_types, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.EntityType
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchDeleteEntityTypesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entity_type_names: [String.t()]
        }

  defstruct [:parent, :entity_type_names]

  field :parent, 1, type: :string
  field :entity_type_names, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchCreateEntitiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entities: [Google.Cloud.Dialogflow.V2beta1.EntityType.Entity.t()],
          language_code: String.t()
        }

  defstruct [:parent, :entities, :language_code]

  field :parent, 1, type: :string
  field :entities, 2, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.EntityType.Entity
  field :language_code, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchUpdateEntitiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entities: [Google.Cloud.Dialogflow.V2beta1.EntityType.Entity.t()],
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :entities, :language_code, :update_mask]

  field :parent, 1, type: :string
  field :entities, 2, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.EntityType.Entity
  field :language_code, 3, type: :string
  field :update_mask, 4, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.V2beta1.BatchDeleteEntitiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entity_values: [String.t()],
          language_code: String.t()
        }

  defstruct [:parent, :entity_values, :language_code]

  field :parent, 1, type: :string
  field :entity_values, 2, repeated: true, type: :string
  field :language_code, 3, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.EntityTypeBatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_types: [Google.Cloud.Dialogflow.V2beta1.EntityType.t()]
        }

  defstruct [:entity_types]

  field :entity_types, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.EntityType
end

defmodule Google.Cloud.Dialogflow.V2beta1.EntityTypes.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.EntityTypes"

  rpc :ListEntityTypes,
      Google.Cloud.Dialogflow.V2beta1.ListEntityTypesRequest,
      Google.Cloud.Dialogflow.V2beta1.ListEntityTypesResponse

  rpc :GetEntityType,
      Google.Cloud.Dialogflow.V2beta1.GetEntityTypeRequest,
      Google.Cloud.Dialogflow.V2beta1.EntityType

  rpc :CreateEntityType,
      Google.Cloud.Dialogflow.V2beta1.CreateEntityTypeRequest,
      Google.Cloud.Dialogflow.V2beta1.EntityType

  rpc :UpdateEntityType,
      Google.Cloud.Dialogflow.V2beta1.UpdateEntityTypeRequest,
      Google.Cloud.Dialogflow.V2beta1.EntityType

  rpc :DeleteEntityType,
      Google.Cloud.Dialogflow.V2beta1.DeleteEntityTypeRequest,
      Google.Protobuf.Empty

  rpc :BatchUpdateEntityTypes,
      Google.Cloud.Dialogflow.V2beta1.BatchUpdateEntityTypesRequest,
      Google.Longrunning.Operation

  rpc :BatchDeleteEntityTypes,
      Google.Cloud.Dialogflow.V2beta1.BatchDeleteEntityTypesRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateEntities,
      Google.Cloud.Dialogflow.V2beta1.BatchCreateEntitiesRequest,
      Google.Longrunning.Operation

  rpc :BatchUpdateEntities,
      Google.Cloud.Dialogflow.V2beta1.BatchUpdateEntitiesRequest,
      Google.Longrunning.Operation

  rpc :BatchDeleteEntities,
      Google.Cloud.Dialogflow.V2beta1.BatchDeleteEntitiesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2beta1.EntityTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.EntityTypes.Service
end
