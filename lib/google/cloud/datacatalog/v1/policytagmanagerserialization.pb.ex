defmodule Google.Cloud.Datacatalog.V1.SerializedTaxonomy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          description: String.t(),
          policy_tags: [Google.Cloud.Datacatalog.V1.SerializedPolicyTag.t()],
          activated_policy_types: [[Google.Cloud.Datacatalog.V1.Taxonomy.PolicyType.t()]]
        }

  defstruct [:display_name, :description, :policy_tags, :activated_policy_types]

  field :display_name, 1, type: :string
  field :description, 2, type: :string
  field :policy_tags, 3, repeated: true, type: Google.Cloud.Datacatalog.V1.SerializedPolicyTag

  field :activated_policy_types, 4,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.Taxonomy.PolicyType,
    enum: true
end

defmodule Google.Cloud.Datacatalog.V1.SerializedPolicyTag do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_tag: String.t(),
          display_name: String.t(),
          description: String.t(),
          child_policy_tags: [Google.Cloud.Datacatalog.V1.SerializedPolicyTag.t()]
        }

  defstruct [:policy_tag, :display_name, :description, :child_policy_tags]

  field :policy_tag, 1, type: :string
  field :display_name, 2, type: :string
  field :description, 3, type: :string

  field :child_policy_tags, 4,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.SerializedPolicyTag
end

defmodule Google.Cloud.Datacatalog.V1.ReplaceTaxonomyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          serialized_taxonomy: Google.Cloud.Datacatalog.V1.SerializedTaxonomy.t() | nil
        }

  defstruct [:name, :serialized_taxonomy]

  field :name, 1, type: :string
  field :serialized_taxonomy, 2, type: Google.Cloud.Datacatalog.V1.SerializedTaxonomy
end

defmodule Google.Cloud.Datacatalog.V1.ImportTaxonomiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          parent: String.t()
        }

  defstruct [:source, :parent]

  oneof :source, 0
  field :parent, 1, type: :string
  field :inline_source, 2, type: Google.Cloud.Datacatalog.V1.InlineSource, oneof: 0
  field :cross_regional_source, 3, type: Google.Cloud.Datacatalog.V1.CrossRegionalSource, oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1.InlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1.SerializedTaxonomy.t()]
        }

  defstruct [:taxonomies]

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.SerializedTaxonomy
end

defmodule Google.Cloud.Datacatalog.V1.CrossRegionalSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomy: String.t()
        }

  defstruct [:taxonomy]

  field :taxonomy, 1, type: :string
end

defmodule Google.Cloud.Datacatalog.V1.ImportTaxonomiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1.Taxonomy.t()]
        }

  defstruct [:taxonomies]

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.Taxonomy
end

defmodule Google.Cloud.Datacatalog.V1.ExportTaxonomiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any},
          parent: String.t(),
          taxonomies: [String.t()]
        }

  defstruct [:destination, :parent, :taxonomies]

  oneof :destination, 0
  field :parent, 1, type: :string
  field :taxonomies, 2, repeated: true, type: :string
  field :serialized_taxonomies, 3, type: :bool, oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1.ExportTaxonomiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1.SerializedTaxonomy.t()]
        }

  defstruct [:taxonomies]

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.SerializedTaxonomy
end

defmodule Google.Cloud.Datacatalog.V1.PolicyTagManagerSerialization.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.datacatalog.v1.PolicyTagManagerSerialization"

  rpc :ReplaceTaxonomy,
      Google.Cloud.Datacatalog.V1.ReplaceTaxonomyRequest,
      Google.Cloud.Datacatalog.V1.Taxonomy

  rpc :ImportTaxonomies,
      Google.Cloud.Datacatalog.V1.ImportTaxonomiesRequest,
      Google.Cloud.Datacatalog.V1.ImportTaxonomiesResponse

  rpc :ExportTaxonomies,
      Google.Cloud.Datacatalog.V1.ExportTaxonomiesRequest,
      Google.Cloud.Datacatalog.V1.ExportTaxonomiesResponse
end

defmodule Google.Cloud.Datacatalog.V1.PolicyTagManagerSerialization.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Datacatalog.V1.PolicyTagManagerSerialization.Service
end
