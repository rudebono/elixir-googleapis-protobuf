defmodule Google.Cloud.Discoveryengine.V1alpha.CreateEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :engine, 2, type: Google.Cloud.Discoveryengine.V1alpha.Engine, deprecated: false
  field :engine_id, 3, type: :string, json_name: "engineId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateEngineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteEngineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListEnginesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListEnginesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :engines, 1, repeated: true, type: Google.Cloud.Discoveryengine.V1alpha.Engine
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :engine, 1, type: Google.Cloud.Discoveryengine.V1alpha.Engine, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.PauseEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ResumeEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.TuneEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.TuneEngineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :engine, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.TuneEngineResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EngineService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.EngineService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateEngine,
      Google.Cloud.Discoveryengine.V1alpha.CreateEngineRequest,
      Google.Longrunning.Operation

  rpc :DeleteEngine,
      Google.Cloud.Discoveryengine.V1alpha.DeleteEngineRequest,
      Google.Longrunning.Operation

  rpc :UpdateEngine,
      Google.Cloud.Discoveryengine.V1alpha.UpdateEngineRequest,
      Google.Cloud.Discoveryengine.V1alpha.Engine

  rpc :GetEngine,
      Google.Cloud.Discoveryengine.V1alpha.GetEngineRequest,
      Google.Cloud.Discoveryengine.V1alpha.Engine

  rpc :ListEngines,
      Google.Cloud.Discoveryengine.V1alpha.ListEnginesRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListEnginesResponse

  rpc :PauseEngine,
      Google.Cloud.Discoveryengine.V1alpha.PauseEngineRequest,
      Google.Cloud.Discoveryengine.V1alpha.Engine

  rpc :ResumeEngine,
      Google.Cloud.Discoveryengine.V1alpha.ResumeEngineRequest,
      Google.Cloud.Discoveryengine.V1alpha.Engine

  rpc :TuneEngine,
      Google.Cloud.Discoveryengine.V1alpha.TuneEngineRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EngineService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.EngineService.Service
end