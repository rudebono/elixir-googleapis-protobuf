defmodule Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          description: String.t(),
          policy_tags: [Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag.t()]
        }

  defstruct [:display_name, :description, :policy_tags]

  field :display_name, 1, type: :string, json_name: "displayName"
  field :description, 2, type: :string

  field :policy_tags, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag,
    json_name: "policyTags"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          description: String.t(),
          child_policy_tags: [Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag.t()]
        }

  defstruct [:display_name, :description, :child_policy_tags]

  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :child_policy_tags, 4,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag,
    json_name: "childPolicyTags"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ImportTaxonomiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:inline_source, Google.Cloud.Datacatalog.V1beta1.InlineSource.t() | nil},
          parent: String.t()
        }

  defstruct [:source, :parent]

  oneof :source, 0

  field :parent, 1, type: :string

  field :inline_source, 2,
    type: Google.Cloud.Datacatalog.V1beta1.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.InlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy.t()]
        }

  defstruct [:taxonomies]

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ImportTaxonomiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1beta1.Taxonomy.t()]
        }

  defstruct [:taxonomies]

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.Taxonomy

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ExportTaxonomiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:serialized_taxonomies, boolean},
          parent: String.t(),
          taxonomies: [String.t()]
        }

  defstruct [:destination, :parent, :taxonomies]

  oneof :destination, 0

  field :parent, 1, type: :string
  field :taxonomies, 2, repeated: true, type: :string
  field :serialized_taxonomies, 3, type: :bool, json_name: "serializedTaxonomies", oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ExportTaxonomiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy.t()]
        }

  defstruct [:taxonomies]

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.PolicyTagManagerSerialization.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.datacatalog.v1beta1.PolicyTagManagerSerialization"

  rpc :ImportTaxonomies,
      Google.Cloud.Datacatalog.V1beta1.ImportTaxonomiesRequest,
      Google.Cloud.Datacatalog.V1beta1.ImportTaxonomiesResponse

  rpc :ExportTaxonomies,
      Google.Cloud.Datacatalog.V1beta1.ExportTaxonomiesRequest,
      Google.Cloud.Datacatalog.V1beta1.ExportTaxonomiesResponse
end

defmodule Google.Cloud.Datacatalog.V1beta1.PolicyTagManagerSerialization.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Datacatalog.V1beta1.PolicyTagManagerSerialization.Service
end
