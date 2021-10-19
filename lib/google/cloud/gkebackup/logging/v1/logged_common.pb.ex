defmodule Google.Cloud.Gkebackup.Logging.V1.Namespaces do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespaces: [String.t()]
        }

  defstruct [:namespaces]

  field :namespaces, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Gkebackup.Logging.V1.NamespacedName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespace: String.t(),
          name: String.t()
        }

  defstruct [:namespace, :name]

  field :namespace, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.Logging.V1.NamespacedNames do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespaced_names: [Google.Cloud.Gkebackup.Logging.V1.NamespacedName.t()]
        }

  defstruct [:namespaced_names]

  field :namespaced_names, 1,
    repeated: true,
    type: Google.Cloud.Gkebackup.Logging.V1.NamespacedName
end

defmodule Google.Cloud.Gkebackup.Logging.V1.EncryptionKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcp_kms_encryption_key: String.t()
        }

  defstruct [:gcp_kms_encryption_key]

  field :gcp_kms_encryption_key, 1, type: :string
end
