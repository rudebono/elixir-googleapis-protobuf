defmodule Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          description: String.t(),
          policy_tags: [Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag.t()]
        }

  defstruct [:display_name, :description, :policy_tags]

  field :display_name, 1, type: :string
  field :description, 2, type: :string

  field :policy_tags, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag
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

  field :display_name, 2, type: :string
  field :description, 3, type: :string

  field :child_policy_tags, 4,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag
end

defmodule Google.Cloud.Datacatalog.V1beta1.ImportTaxonomiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          parent: String.t()
        }

  defstruct [:source, :parent]

  oneof :source, 0
  field :parent, 1, type: :string
  field :inline_source, 2, type: Google.Cloud.Datacatalog.V1beta1.InlineSource, oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1beta1.InlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy.t()]
        }

  defstruct [:taxonomies]

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy
end

defmodule Google.Cloud.Datacatalog.V1beta1.ImportTaxonomiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1beta1.Taxonomy.t()]
        }

  defstruct [:taxonomies]

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.Taxonomy
end

defmodule Google.Cloud.Datacatalog.V1beta1.ExportTaxonomiesRequest do
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

defmodule Google.Cloud.Datacatalog.V1beta1.ExportTaxonomiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy.t()]
        }

  defstruct [:taxonomies]

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy
end
