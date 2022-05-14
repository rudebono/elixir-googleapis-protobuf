defmodule Google.Cloud.Dialogflow.V2.EntityType.Kind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :KIND_UNSPECIFIED, 0
  field :KIND_MAP, 1
  field :KIND_LIST, 2
  field :KIND_REGEXP, 3
end
defmodule Google.Cloud.Dialogflow.V2.EntityType.AutoExpansionMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :AUTO_EXPANSION_MODE_UNSPECIFIED, 0
  field :AUTO_EXPANSION_MODE_DEFAULT, 1
end
defmodule Google.Cloud.Dialogflow.V2.EntityType.Entity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :value, 1, type: :string, deprecated: false
  field :synonyms, 2, repeated: true, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.EntityType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :kind, 3, type: Google.Cloud.Dialogflow.V2.EntityType.Kind, enum: true, deprecated: false

  field :auto_expansion_mode, 4,
    type: Google.Cloud.Dialogflow.V2.EntityType.AutoExpansionMode,
    json_name: "autoExpansionMode",
    enum: true,
    deprecated: false

  field :entities, 6,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.EntityType.Entity,
    deprecated: false

  field :enable_fuzzy_extraction, 7,
    type: :bool,
    json_name: "enableFuzzyExtraction",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListEntityTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListEntityTypesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :entity_types, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.EntityType,
    json_name: "entityTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2.GetEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.CreateEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :entity_type, 2,
    type: Google.Cloud.Dialogflow.V2.EntityType,
    json_name: "entityType",
    deprecated: false

  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.UpdateEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :entity_type, 1,
    type: Google.Cloud.Dialogflow.V2.EntityType,
    json_name: "entityType",
    deprecated: false

  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.DeleteEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.BatchUpdateEntityTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :entity_type_batch, 0

  field :parent, 1, type: :string, deprecated: false
  field :entity_type_batch_uri, 2, type: :string, json_name: "entityTypeBatchUri", oneof: 0

  field :entity_type_batch_inline, 3,
    type: Google.Cloud.Dialogflow.V2.EntityTypeBatch,
    json_name: "entityTypeBatchInline",
    oneof: 0

  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false

  field :update_mask, 5,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.BatchUpdateEntityTypesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :entity_types, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.EntityType,
    json_name: "entityTypes"
end
defmodule Google.Cloud.Dialogflow.V2.BatchDeleteEntityTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :entity_type_names, 2,
    repeated: true,
    type: :string,
    json_name: "entityTypeNames",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.BatchCreateEntitiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :entities, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.EntityType.Entity,
    deprecated: false

  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.BatchUpdateEntitiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :entities, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.EntityType.Entity,
    deprecated: false

  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.BatchDeleteEntitiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :entity_values, 2,
    repeated: true,
    type: :string,
    json_name: "entityValues",
    deprecated: false

  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.EntityTypeBatch do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :entity_types, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.EntityType,
    json_name: "entityTypes"
end
defmodule Google.Cloud.Dialogflow.V2.EntityTypes.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.EntityTypes",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListEntityTypes,
      Google.Cloud.Dialogflow.V2.ListEntityTypesRequest,
      Google.Cloud.Dialogflow.V2.ListEntityTypesResponse

  rpc :GetEntityType,
      Google.Cloud.Dialogflow.V2.GetEntityTypeRequest,
      Google.Cloud.Dialogflow.V2.EntityType

  rpc :CreateEntityType,
      Google.Cloud.Dialogflow.V2.CreateEntityTypeRequest,
      Google.Cloud.Dialogflow.V2.EntityType

  rpc :UpdateEntityType,
      Google.Cloud.Dialogflow.V2.UpdateEntityTypeRequest,
      Google.Cloud.Dialogflow.V2.EntityType

  rpc :DeleteEntityType, Google.Cloud.Dialogflow.V2.DeleteEntityTypeRequest, Google.Protobuf.Empty

  rpc :BatchUpdateEntityTypes,
      Google.Cloud.Dialogflow.V2.BatchUpdateEntityTypesRequest,
      Google.Longrunning.Operation

  rpc :BatchDeleteEntityTypes,
      Google.Cloud.Dialogflow.V2.BatchDeleteEntityTypesRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateEntities,
      Google.Cloud.Dialogflow.V2.BatchCreateEntitiesRequest,
      Google.Longrunning.Operation

  rpc :BatchUpdateEntities,
      Google.Cloud.Dialogflow.V2.BatchUpdateEntitiesRequest,
      Google.Longrunning.Operation

  rpc :BatchDeleteEntities,
      Google.Cloud.Dialogflow.V2.BatchDeleteEntitiesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2.EntityTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.EntityTypes.Service
end
