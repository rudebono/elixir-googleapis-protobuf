defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Kind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :KIND_UNSPECIFIED | :KIND_MAP | :KIND_LIST | :KIND_REGEXP

  field :KIND_UNSPECIFIED, 0
  field :KIND_MAP, 1
  field :KIND_LIST, 2
  field :KIND_REGEXP, 3
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.AutoExpansionMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :AUTO_EXPANSION_MODE_UNSPECIFIED | :AUTO_EXPANSION_MODE_DEFAULT

  field :AUTO_EXPANSION_MODE_UNSPECIFIED, 0
  field :AUTO_EXPANSION_MODE_DEFAULT, 1
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          synonyms: [String.t()]
        }

  defstruct value: "",
            synonyms: []

  field :value, 1, type: :string, deprecated: false
  field :synonyms, 2, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.ExcludedPhrase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t()
        }

  defstruct value: ""

  field :value, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          kind: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Kind.t(),
          auto_expansion_mode:
            Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.AutoExpansionMode.t(),
          entities: [Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Entity.t()],
          excluded_phrases: [Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.ExcludedPhrase.t()],
          enable_fuzzy_extraction: boolean,
          redact: boolean
        }

  defstruct name: "",
            display_name: "",
            kind: :KIND_UNSPECIFIED,
            auto_expansion_mode: :AUTO_EXPANSION_MODE_UNSPECIFIED,
            entities: [],
            excluded_phrases: [],
            enable_fuzzy_extraction: false,
            redact: false

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :kind, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Kind,
    enum: true,
    deprecated: false

  field :auto_expansion_mode, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.AutoExpansionMode,
    json_name: "autoExpansionMode",
    enum: true

  field :entities, 5, repeated: true, type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Entity

  field :excluded_phrases, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.ExcludedPhrase,
    json_name: "excludedPhrases"

  field :enable_fuzzy_extraction, 7, type: :bool, json_name: "enableFuzzyExtraction"
  field :redact, 9, type: :bool
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListEntityTypesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          language_code: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            language_code: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListEntityTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_types: [Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.t()],
          next_page_token: String.t()
        }

  defstruct entity_types: [],
            next_page_token: ""

  field :entity_types, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType,
    json_name: "entityTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          language_code: String.t()
        }

  defstruct name: "",
            language_code: ""

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          entity_type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.t() | nil,
          language_code: String.t()
        }

  defstruct parent: "",
            entity_type: nil,
            language_code: ""

  field :parent, 1, type: :string, deprecated: false

  field :entity_type, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType,
    json_name: "entityType",
    deprecated: false

  field :language_code, 3, type: :string, json_name: "languageCode"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.t() | nil,
          language_code: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct entity_type: nil,
            language_code: "",
            update_mask: nil

  field :entity_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType,
    json_name: "entityType",
    deprecated: false

  field :language_code, 2, type: :string, json_name: "languageCode"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteEntityTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct name: "",
            force: false

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end
defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityTypes.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.cx.v3beta1.EntityTypes"

  rpc :ListEntityTypes,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListEntityTypesRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.ListEntityTypesResponse

  rpc :GetEntityType,
      Google.Cloud.Dialogflow.Cx.V3beta1.GetEntityTypeRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.EntityType

  rpc :CreateEntityType,
      Google.Cloud.Dialogflow.Cx.V3beta1.CreateEntityTypeRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.EntityType

  rpc :UpdateEntityType,
      Google.Cloud.Dialogflow.Cx.V3beta1.UpdateEntityTypeRequest,
      Google.Cloud.Dialogflow.Cx.V3beta1.EntityType

  rpc :DeleteEntityType,
      Google.Cloud.Dialogflow.Cx.V3beta1.DeleteEntityTypeRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3beta1.EntityTypes.Service
end
