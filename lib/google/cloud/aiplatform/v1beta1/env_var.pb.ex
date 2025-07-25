defmodule Google.Cloud.Aiplatform.V1beta1.EnvVar do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :value, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SecretRef do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :secret, 1, type: :string, deprecated: false
  field :version, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.SecretEnvVar do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :secret_ref, 2,
    type: Google.Cloud.Aiplatform.V1beta1.SecretRef,
    json_name: "secretRef",
    deprecated: false
end
