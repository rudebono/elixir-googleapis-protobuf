defmodule Google.Cloud.Gkebackup.Logging.V1.Namespaces do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :namespaces, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Gkebackup.Logging.V1.NamespacedName do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :namespace, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.Logging.V1.NamespacedNames do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :namespaced_names, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.NamespacedName,
    json_name: "namespacedNames"
end

defmodule Google.Cloud.Gkebackup.Logging.V1.EncryptionKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcp_kms_encryption_key, 1, type: :string, json_name: "gcpKmsEncryptionKey"
end