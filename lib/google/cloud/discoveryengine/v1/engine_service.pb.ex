defmodule Google.Cloud.Discoveryengine.V1.CreateEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :engine, 2, type: Google.Cloud.Discoveryengine.V1.Engine, deprecated: false
  field :engine_id, 3, type: :string, json_name: "engineId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.CreateEngineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteEngineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.GetEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListEnginesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ListEnginesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :engines, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1.Engine
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :engine, 1, type: Google.Cloud.Discoveryengine.V1.Engine, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1.EngineService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.EngineService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateEngine,
      Google.Cloud.Discoveryengine.V1.CreateEngineRequest,
      Google.Longrunning.Operation

  rpc :DeleteEngine,
      Google.Cloud.Discoveryengine.V1.DeleteEngineRequest,
      Google.Longrunning.Operation

  rpc :UpdateEngine,
      Google.Cloud.Discoveryengine.V1.UpdateEngineRequest,
      Google.Cloud.Discoveryengine.V1.Engine

  rpc :GetEngine,
      Google.Cloud.Discoveryengine.V1.GetEngineRequest,
      Google.Cloud.Discoveryengine.V1.Engine

  rpc :ListEngines,
      Google.Cloud.Discoveryengine.V1.ListEnginesRequest,
      Google.Cloud.Discoveryengine.V1.ListEnginesResponse
end

defmodule Google.Cloud.Discoveryengine.V1.EngineService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.EngineService.Service
end