defmodule Google.Cloud.Aiplatform.V1beta1.CreateReasoningEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :reasoning_engine, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ReasoningEngine,
    json_name: "reasoningEngine",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateReasoningEngineOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetReasoningEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateReasoningEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reasoning_engine, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ReasoningEngine,
    json_name: "reasoningEngine",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateReasoningEngineOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListReasoningEnginesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListReasoningEnginesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reasoning_engines, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ReasoningEngine,
    json_name: "reasoningEngines"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteReasoningEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.ReasoningEngineService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateReasoningEngine,
      Google.Cloud.Aiplatform.V1beta1.CreateReasoningEngineRequest,
      Google.Longrunning.Operation

  rpc :GetReasoningEngine,
      Google.Cloud.Aiplatform.V1beta1.GetReasoningEngineRequest,
      Google.Cloud.Aiplatform.V1beta1.ReasoningEngine

  rpc :ListReasoningEngines,
      Google.Cloud.Aiplatform.V1beta1.ListReasoningEnginesRequest,
      Google.Cloud.Aiplatform.V1beta1.ListReasoningEnginesResponse

  rpc :UpdateReasoningEngine,
      Google.Cloud.Aiplatform.V1beta1.UpdateReasoningEngineRequest,
      Google.Longrunning.Operation

  rpc :DeleteReasoningEngine,
      Google.Cloud.Aiplatform.V1beta1.DeleteReasoningEngineRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReasoningEngineService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.ReasoningEngineService.Service
end