defmodule Google.Cloud.Aiplatform.V1beta1.ExecuteExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :operation_id, 2, type: :string, json_name: "operationId", deprecated: false

  field :operation_params, 3,
    type: Google.Protobuf.Struct,
    json_name: "operationParams",
    deprecated: false

  field :runtime_auth_config, 4,
    type: Google.Cloud.Aiplatform.V1beta1.AuthConfig,
    json_name: "runtimeAuthConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExecuteExtensionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :content, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.QueryExtensionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :contents, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Content,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.QueryExtensionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :steps, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Content
  field :failure_message, 2, type: :string, json_name: "failureMessage"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExtensionExecutionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.ExtensionExecutionService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ExecuteExtension,
      Google.Cloud.Aiplatform.V1beta1.ExecuteExtensionRequest,
      Google.Cloud.Aiplatform.V1beta1.ExecuteExtensionResponse

  rpc :QueryExtension,
      Google.Cloud.Aiplatform.V1beta1.QueryExtensionRequest,
      Google.Cloud.Aiplatform.V1beta1.QueryExtensionResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExtensionExecutionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.ExtensionExecutionService.Service
end
