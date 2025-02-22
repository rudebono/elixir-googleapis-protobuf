defmodule Google.Cloud.Discoveryengine.V1.ProvisionProjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :accept_data_use_terms, 2, type: :bool, json_name: "acceptDataUseTerms", deprecated: false

  field :data_use_terms_version, 3,
    type: :string,
    json_name: "dataUseTermsVersion",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.ProvisionProjectMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1.ProjectService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.ProjectService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ProvisionProject,
      Google.Cloud.Discoveryengine.V1.ProvisionProjectRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1.ProjectService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.ProjectService.Service
end
