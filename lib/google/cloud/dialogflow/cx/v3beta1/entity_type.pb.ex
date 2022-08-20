defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Kind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :KIND_UNSPECIFIED, 0
  field :KIND_MAP, 1
  field :KIND_LIST, 2
  field :KIND_REGEXP, 3
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.AutoExpansionMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :AUTO_EXPANSION_MODE_UNSPECIFIED, 0
  field :AUTO_EXPANSION_MODE_DEFAULT, 1
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.Entity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :string, deprecated: false
  field :synonyms, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityType.ExcludedPhrase do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :value, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ListEntityTypesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entity_types, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType,
    json_name: "entityTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.GetEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.CreateEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :entity_type, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType,
    json_name: "entityType",
    deprecated: false

  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.UpdateEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entity_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.EntityType,
    json_name: "entityType",
    deprecated: false

  field :language_code, 2, type: :string, json_name: "languageCode"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.DeleteEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.EntityTypes.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3beta1.EntityTypes",
    protoc_gen_elixir_version: "0.11.0"

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