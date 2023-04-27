defmodule Google.Devtools.Artifactregistry.V1.VPCSCConfig.VPCSCPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :VPCSC_POLICY_UNSPECIFIED, 0
  field :DENY, 1
  field :ALLOW, 2
end

defmodule Google.Devtools.Artifactregistry.V1.VPCSCConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :vpcsc_policy, 2,
    type: Google.Devtools.Artifactregistry.V1.VPCSCConfig.VPCSCPolicy,
    json_name: "vpcscPolicy",
    enum: true
end

defmodule Google.Devtools.Artifactregistry.V1.GetVPCSCConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.UpdateVPCSCConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vpcsc_config, 1,
    type: Google.Devtools.Artifactregistry.V1.VPCSCConfig,
    json_name: "vpcscConfig"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end