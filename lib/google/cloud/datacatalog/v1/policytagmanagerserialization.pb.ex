defmodule Google.Cloud.Datacatalog.V1.SerializedTaxonomy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          description: String.t(),
          policy_tags: [Google.Cloud.Datacatalog.V1.SerializedPolicyTag.t()],
          activated_policy_types: [Google.Cloud.Datacatalog.V1.Taxonomy.PolicyType.t()]
        }

  defstruct display_name: "",
            description: "",
            policy_tags: [],
            activated_policy_types: []

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :description, 2, type: :string

  field :policy_tags, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.SerializedPolicyTag,
    json_name: "policyTags"

  field :activated_policy_types, 4,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.Taxonomy.PolicyType,
    json_name: "activatedPolicyTypes",
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

  defstruct policy_tag: "",
            display_name: "",
            description: "",
            child_policy_tags: []

  field :policy_tag, 1, type: :string, json_name: "policyTag"
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :child_policy_tags, 4,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.SerializedPolicyTag,
    json_name: "childPolicyTags"
end
defmodule Google.Cloud.Datacatalog.V1.ReplaceTaxonomyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          serialized_taxonomy: Google.Cloud.Datacatalog.V1.SerializedTaxonomy.t() | nil
        }

  defstruct name: "",
            serialized_taxonomy: nil

  field :name, 1, type: :string, deprecated: false

  field :serialized_taxonomy, 2,
    type: Google.Cloud.Datacatalog.V1.SerializedTaxonomy,
    json_name: "serializedTaxonomy",
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.ImportTaxonomiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:inline_source, Google.Cloud.Datacatalog.V1.InlineSource.t() | nil}
            | {:cross_regional_source, Google.Cloud.Datacatalog.V1.CrossRegionalSource.t() | nil},
          parent: String.t()
        }

  defstruct source: nil,
            parent: ""

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false

  field :inline_source, 2,
    type: Google.Cloud.Datacatalog.V1.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :cross_regional_source, 3,
    type: Google.Cloud.Datacatalog.V1.CrossRegionalSource,
    json_name: "crossRegionalSource",
    oneof: 0
end
defmodule Google.Cloud.Datacatalog.V1.InlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1.SerializedTaxonomy.t()]
        }

  defstruct taxonomies: []

  field :taxonomies, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1.SerializedTaxonomy,
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.CrossRegionalSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomy: String.t()
        }

  defstruct taxonomy: ""

  field :taxonomy, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1.ImportTaxonomiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1.Taxonomy.t()]
        }

  defstruct taxonomies: []

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1.Taxonomy
end
defmodule Google.Cloud.Datacatalog.V1.ExportTaxonomiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:serialized_taxonomies, boolean},
          parent: String.t(),
          taxonomies: [String.t()]
        }

  defstruct destination: nil,
            parent: "",
            taxonomies: []

  oneof :destination, 0

  field :parent, 1, type: :string, deprecated: false
  field :taxonomies, 2, repeated: true, type: :string, deprecated: false
  field :serialized_taxonomies, 3, type: :bool, json_name: "serializedTaxonomies", oneof: 0
end
defmodule Google.Cloud.Datacatalog.V1.ExportTaxonomiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1.SerializedTaxonomy.t()]
        }

  defstruct taxonomies: []

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
