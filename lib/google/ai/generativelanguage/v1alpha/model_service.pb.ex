defmodule Google.Ai.Generativelanguage.V1alpha.GetModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1alpha.GetTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListTunedModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListTunedModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tuned_models, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.TunedModel,
    json_name: "tunedModels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1alpha.CreateTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tuned_model_id, 1,
    proto3_optional: true,
    type: :string,
    json_name: "tunedModelId",
    deprecated: false

  field :tuned_model, 2,
    type: Google.Ai.Generativelanguage.V1alpha.TunedModel,
    json_name: "tunedModel",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.CreateTunedModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tuned_model, 5, type: :string, json_name: "tunedModel", deprecated: false
  field :total_steps, 1, type: :int32, json_name: "totalSteps"
  field :completed_steps, 2, type: :int32, json_name: "completedSteps"
  field :completed_percent, 3, type: :float, json_name: "completedPercent"
  field :snapshots, 4, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.TuningSnapshot
end

defmodule Google.Ai.Generativelanguage.V1alpha.UpdateTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tuned_model, 1,
    type: Google.Ai.Generativelanguage.V1alpha.TunedModel,
    json_name: "tunedModel",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.DeleteTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ModelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1alpha.ModelService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetModel,
      Google.Ai.Generativelanguage.V1alpha.GetModelRequest,
      Google.Ai.Generativelanguage.V1alpha.Model

  rpc :ListModels,
      Google.Ai.Generativelanguage.V1alpha.ListModelsRequest,
      Google.Ai.Generativelanguage.V1alpha.ListModelsResponse

  rpc :GetTunedModel,
      Google.Ai.Generativelanguage.V1alpha.GetTunedModelRequest,
      Google.Ai.Generativelanguage.V1alpha.TunedModel

  rpc :ListTunedModels,
      Google.Ai.Generativelanguage.V1alpha.ListTunedModelsRequest,
      Google.Ai.Generativelanguage.V1alpha.ListTunedModelsResponse

  rpc :CreateTunedModel,
      Google.Ai.Generativelanguage.V1alpha.CreateTunedModelRequest,
      Google.Longrunning.Operation

  rpc :UpdateTunedModel,
      Google.Ai.Generativelanguage.V1alpha.UpdateTunedModelRequest,
      Google.Ai.Generativelanguage.V1alpha.TunedModel

  rpc :DeleteTunedModel,
      Google.Ai.Generativelanguage.V1alpha.DeleteTunedModelRequest,
      Google.Protobuf.Empty
end

defmodule Google.Ai.Generativelanguage.V1alpha.ModelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1alpha.ModelService.Service
end
