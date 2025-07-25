defmodule Google.Ai.Generativelanguage.V1beta.GetModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta.GetTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListTunedModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListTunedModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tuned_models, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.TunedModel,
    json_name: "tunedModels"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta.CreateTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tuned_model_id, 1,
    proto3_optional: true,
    type: :string,
    json_name: "tunedModelId",
    deprecated: false

  field :tuned_model, 2,
    type: Google.Ai.Generativelanguage.V1beta.TunedModel,
    json_name: "tunedModel",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.CreateTunedModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tuned_model, 5, type: :string, json_name: "tunedModel", deprecated: false
  field :total_steps, 1, type: :int32, json_name: "totalSteps"
  field :completed_steps, 2, type: :int32, json_name: "completedSteps"
  field :completed_percent, 3, type: :float, json_name: "completedPercent"
  field :snapshots, 4, repeated: true, type: Google.Ai.Generativelanguage.V1beta.TuningSnapshot
end

defmodule Google.Ai.Generativelanguage.V1beta.UpdateTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tuned_model, 1,
    type: Google.Ai.Generativelanguage.V1beta.TunedModel,
    json_name: "tunedModel",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.DeleteTunedModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ModelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta.ModelService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetModel,
      Google.Ai.Generativelanguage.V1beta.GetModelRequest,
      Google.Ai.Generativelanguage.V1beta.Model

  rpc :ListModels,
      Google.Ai.Generativelanguage.V1beta.ListModelsRequest,
      Google.Ai.Generativelanguage.V1beta.ListModelsResponse

  rpc :GetTunedModel,
      Google.Ai.Generativelanguage.V1beta.GetTunedModelRequest,
      Google.Ai.Generativelanguage.V1beta.TunedModel

  rpc :ListTunedModels,
      Google.Ai.Generativelanguage.V1beta.ListTunedModelsRequest,
      Google.Ai.Generativelanguage.V1beta.ListTunedModelsResponse

  rpc :CreateTunedModel,
      Google.Ai.Generativelanguage.V1beta.CreateTunedModelRequest,
      Google.Longrunning.Operation

  rpc :UpdateTunedModel,
      Google.Ai.Generativelanguage.V1beta.UpdateTunedModelRequest,
      Google.Ai.Generativelanguage.V1beta.TunedModel

  rpc :DeleteTunedModel,
      Google.Ai.Generativelanguage.V1beta.DeleteTunedModelRequest,
      Google.Protobuf.Empty
end

defmodule Google.Ai.Generativelanguage.V1beta.ModelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta.ModelService.Service
end
