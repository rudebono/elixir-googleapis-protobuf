defmodule Google.Cloud.Dialogflow.V2beta1.SessionEntityType.EntityOverrideMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ENTITY_OVERRIDE_MODE_UNSPECIFIED, 0
  field :ENTITY_OVERRIDE_MODE_OVERRIDE, 1
  field :ENTITY_OVERRIDE_MODE_SUPPLEMENT, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.SessionEntityType do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :entity_override_mode, 2,
    type: Google.Cloud.Dialogflow.V2beta1.SessionEntityType.EntityOverrideMode,
    json_name: "entityOverrideMode",
    enum: true

  field :entities, 3, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.EntityType.Entity
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListSessionEntityTypesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListSessionEntityTypesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :session_entity_types, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.SessionEntityType,
    json_name: "sessionEntityTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :session_entity_type, 2,
    type: Google.Cloud.Dialogflow.V2beta1.SessionEntityType,
    json_name: "sessionEntityType",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :session_entity_type, 1,
    type: Google.Cloud.Dialogflow.V2beta1.SessionEntityType,
    json_name: "sessionEntityType",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteSessionEntityTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.SessionEntityTypes.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.SessionEntityTypes",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListSessionEntityTypes,
      Google.Cloud.Dialogflow.V2beta1.ListSessionEntityTypesRequest,
      Google.Cloud.Dialogflow.V2beta1.ListSessionEntityTypesResponse

  rpc :GetSessionEntityType,
      Google.Cloud.Dialogflow.V2beta1.GetSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.V2beta1.SessionEntityType

  rpc :CreateSessionEntityType,
      Google.Cloud.Dialogflow.V2beta1.CreateSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.V2beta1.SessionEntityType

  rpc :UpdateSessionEntityType,
      Google.Cloud.Dialogflow.V2beta1.UpdateSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.V2beta1.SessionEntityType

  rpc :DeleteSessionEntityType,
      Google.Cloud.Dialogflow.V2beta1.DeleteSessionEntityTypeRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.V2beta1.SessionEntityTypes.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.SessionEntityTypes.Service
end