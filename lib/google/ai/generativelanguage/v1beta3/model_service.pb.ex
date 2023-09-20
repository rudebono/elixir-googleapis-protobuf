defmodule Google.Ai.Generativelanguage.V1beta3.GetModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta3.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta3.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta3.GetTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.ListTunedModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.ListTunedModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tuned_models, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta3.TunedModel,
    json_name: "tunedModels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta3.CreateTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tuned_model_id, 1,
    proto3_optional: true,
    type: :string,
    json_name: "tunedModelId",
    deprecated: false

  field :tuned_model, 2,
    type: Google.Ai.Generativelanguage.V1beta3.TunedModel,
    json_name: "tunedModel",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.CreateTunedModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tuned_model, 5, type: :string, json_name: "tunedModel", deprecated: false
  field :total_steps, 1, type: :int32, json_name: "totalSteps"
  field :completed_steps, 2, type: :int32, json_name: "completedSteps"
  field :completed_percent, 3, type: :float, json_name: "completedPercent"
  field :snapshots, 4, repeated: true, type: Google.Ai.Generativelanguage.V1beta3.TuningSnapshot
end

defmodule Google.Ai.Generativelanguage.V1beta3.UpdateTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :tuned_model, 1,
    type: Google.Ai.Generativelanguage.V1beta3.TunedModel,
    json_name: "tunedModel",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.DeleteTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta3.ModelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta3.ModelService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetModel,
      Google.Ai.Generativelanguage.V1beta3.GetModelRequest,
      Google.Ai.Generativelanguage.V1beta3.Model

  rpc :ListModels,
      Google.Ai.Generativelanguage.V1beta3.ListModelsRequest,
      Google.Ai.Generativelanguage.V1beta3.ListModelsResponse

  rpc :GetTunedModel,
      Google.Ai.Generativelanguage.V1beta3.GetTunedModelRequest,
      Google.Ai.Generativelanguage.V1beta3.TunedModel

  rpc :ListTunedModels,
      Google.Ai.Generativelanguage.V1beta3.ListTunedModelsRequest,
      Google.Ai.Generativelanguage.V1beta3.ListTunedModelsResponse

  rpc :CreateTunedModel,
      Google.Ai.Generativelanguage.V1beta3.CreateTunedModelRequest,
      Google.Longrunning.Operation

  rpc :UpdateTunedModel,
      Google.Ai.Generativelanguage.V1beta3.UpdateTunedModelRequest,
      Google.Ai.Generativelanguage.V1beta3.TunedModel

  rpc :DeleteTunedModel,
      Google.Ai.Generativelanguage.V1beta3.DeleteTunedModelRequest,
      Google.Protobuf.Empty
end

defmodule Google.Ai.Generativelanguage.V1beta3.ModelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta3.ModelService.Service
end