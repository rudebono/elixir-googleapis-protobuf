defmodule Google.Cloud.Discoveryengine.V1alpha.GetAclConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateAclConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :acl_config, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.AclConfig,
    json_name: "aclConfig",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AclConfigService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.AclConfigService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :UpdateAclConfig,
      Google.Cloud.Discoveryengine.V1alpha.UpdateAclConfigRequest,
      Google.Cloud.Discoveryengine.V1alpha.AclConfig

  rpc :GetAclConfig,
      Google.Cloud.Discoveryengine.V1alpha.GetAclConfigRequest,
      Google.Cloud.Discoveryengine.V1alpha.AclConfig
end

defmodule Google.Cloud.Discoveryengine.V1alpha.AclConfigService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.AclConfigService.Service
end
