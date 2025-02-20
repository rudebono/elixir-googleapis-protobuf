defmodule Google.Cloud.Dialogflow.Cx.V3.SessionEntityType.EntityOverrideMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ENTITY_OVERRIDE_MODE_UNSPECIFIED, 0
  field :ENTITY_OVERRIDE_MODE_OVERRIDE, 1
  field :ENTITY_OVERRIDE_MODE_SUPPLEMENT, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SessionEntityType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :entity_override_mode, 3,
    type: Google.Cloud.Dialogflow.Cx.V3.SessionEntityType.EntityOverrideMode,
    json_name: "entityOverrideMode",
    enum: true,
    deprecated: false

  field :entities, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.EntityType.Entity,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListSessionEntityTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.ListSessionEntityTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session_entity_types, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3.SessionEntityType,
    json_name: "sessionEntityTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.GetSessionEntityTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.CreateSessionEntityTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :session_entity_type, 2,
    type: Google.Cloud.Dialogflow.Cx.V3.SessionEntityType,
    json_name: "sessionEntityType",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.UpdateSessionEntityTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :session_entity_type, 1,
    type: Google.Cloud.Dialogflow.Cx.V3.SessionEntityType,
    json_name: "sessionEntityType",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Dialogflow.Cx.V3.DeleteSessionEntityTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SessionEntityTypes.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.cx.v3.SessionEntityTypes",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListSessionEntityTypes,
      Google.Cloud.Dialogflow.Cx.V3.ListSessionEntityTypesRequest,
      Google.Cloud.Dialogflow.Cx.V3.ListSessionEntityTypesResponse

  rpc :GetSessionEntityType,
      Google.Cloud.Dialogflow.Cx.V3.GetSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.Cx.V3.SessionEntityType

  rpc :CreateSessionEntityType,
      Google.Cloud.Dialogflow.Cx.V3.CreateSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.Cx.V3.SessionEntityType

  rpc :UpdateSessionEntityType,
      Google.Cloud.Dialogflow.Cx.V3.UpdateSessionEntityTypeRequest,
      Google.Cloud.Dialogflow.Cx.V3.SessionEntityType

  rpc :DeleteSessionEntityType,
      Google.Cloud.Dialogflow.Cx.V3.DeleteSessionEntityTypeRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Dialogflow.Cx.V3.SessionEntityTypes.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.Cx.V3.SessionEntityTypes.Service
end
