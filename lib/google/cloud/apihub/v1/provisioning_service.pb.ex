defmodule Google.Cloud.Apihub.V1.CreateApiHubInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :api_hub_instance_id, 2, type: :string, json_name: "apiHubInstanceId", deprecated: false

  field :api_hub_instance, 3,
    type: Google.Cloud.Apihub.V1.ApiHubInstance,
    json_name: "apiHubInstance",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeleteApiHubInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetApiHubInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.LookupApiHubInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.LookupApiHubInstanceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :api_hub_instance, 1,
    type: Google.Cloud.Apihub.V1.ApiHubInstance,
    json_name: "apiHubInstance"
end

defmodule Google.Cloud.Apihub.V1.Provisioning.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apihub.v1.Provisioning",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateApiHubInstance,
      Google.Cloud.Apihub.V1.CreateApiHubInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteApiHubInstance,
      Google.Cloud.Apihub.V1.DeleteApiHubInstanceRequest,
      Google.Longrunning.Operation

  rpc :GetApiHubInstance,
      Google.Cloud.Apihub.V1.GetApiHubInstanceRequest,
      Google.Cloud.Apihub.V1.ApiHubInstance

  rpc :LookupApiHubInstance,
      Google.Cloud.Apihub.V1.LookupApiHubInstanceRequest,
      Google.Cloud.Apihub.V1.LookupApiHubInstanceResponse
end

defmodule Google.Cloud.Apihub.V1.Provisioning.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.Provisioning.Service
end
