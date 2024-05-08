defmodule Google.Cloud.Kms.V1.UpdateAutokeyConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :autokey_config, 1,
    type: Google.Cloud.Kms.V1.AutokeyConfig,
    json_name: "autokeyConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Kms.V1.GetAutokeyConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.V1.AutokeyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :key_project, 2, type: :string, json_name: "keyProject", deprecated: false
end

defmodule Google.Cloud.Kms.V1.ShowEffectiveAutokeyConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Kms.V1.ShowEffectiveAutokeyConfigResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key_project, 1, type: :string, json_name: "keyProject"
end

defmodule Google.Cloud.Kms.V1.AutokeyAdmin.Service do
  @moduledoc false

  use GRPC.Service, name: "google.cloud.kms.v1.AutokeyAdmin", protoc_gen_elixir_version: "0.12.0"

  rpc :UpdateAutokeyConfig,
      Google.Cloud.Kms.V1.UpdateAutokeyConfigRequest,
      Google.Cloud.Kms.V1.AutokeyConfig

  rpc :GetAutokeyConfig,
      Google.Cloud.Kms.V1.GetAutokeyConfigRequest,
      Google.Cloud.Kms.V1.AutokeyConfig

  rpc :ShowEffectiveAutokeyConfig,
      Google.Cloud.Kms.V1.ShowEffectiveAutokeyConfigRequest,
      Google.Cloud.Kms.V1.ShowEffectiveAutokeyConfigResponse
end

defmodule Google.Cloud.Kms.V1.AutokeyAdmin.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Kms.V1.AutokeyAdmin.Service
end