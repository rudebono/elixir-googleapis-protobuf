defmodule Google.Ai.Generativelanguage.V1.GetModelRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.ListModelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Ai.Generativelanguage.V1.ListModelsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :models, 1, repeated: true, type: Google.Ai.Generativelanguage.V1.Model
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1.ModelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1.ModelService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetModel,
      Google.Ai.Generativelanguage.V1.GetModelRequest,
      Google.Ai.Generativelanguage.V1.Model

  rpc :ListModels,
      Google.Ai.Generativelanguage.V1.ListModelsRequest,
      Google.Ai.Generativelanguage.V1.ListModelsResponse
end

defmodule Google.Ai.Generativelanguage.V1.ModelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1.ModelService.Service
end