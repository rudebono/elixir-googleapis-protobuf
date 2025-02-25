defmodule Google.Cloud.Gkebackup.V1.VolumeTypeEnum.VolumeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VOLUME_TYPE_UNSPECIFIED, 0
  field :GCE_PERSISTENT_DISK, 1
end

defmodule Google.Cloud.Gkebackup.V1.Namespaces do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :namespaces, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.NamespacedName do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :namespace, 1, type: :string, deprecated: false
  field :name, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.NamespacedNames do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :namespaced_names, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.NamespacedName,
    json_name: "namespacedNames",
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.EncryptionKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :gcp_kms_encryption_key, 1,
    type: :string,
    json_name: "gcpKmsEncryptionKey",
    deprecated: false
end

defmodule Google.Cloud.Gkebackup.V1.VolumeTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
