defmodule Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :description, 2, type: :string

  field :policy_tags, 3,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag,
    json_name: "policyTags"

  field :activated_policy_types, 4,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.Taxonomy.PolicyType,
    json_name: "activatedPolicyTypes",
    enum: true
end

defmodule Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policy_tag, 1, type: :string, json_name: "policyTag"
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :child_policy_tags, 4,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.SerializedPolicyTag,
    json_name: "childPolicyTags"
end

defmodule Google.Cloud.Datacatalog.V1beta1.ImportTaxonomiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :parent, 1, type: :string, deprecated: false

  field :inline_source, 2,
    type: Google.Cloud.Datacatalog.V1beta1.InlineSource,
    json_name: "inlineSource",
    oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1beta1.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :taxonomies, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy,
    deprecated: false
end

defmodule Google.Cloud.Datacatalog.V1beta1.ImportTaxonomiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.Taxonomy
end

defmodule Google.Cloud.Datacatalog.V1beta1.ExportTaxonomiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :parent, 1, type: :string, deprecated: false
  field :taxonomies, 2, repeated: true, type: :string, deprecated: false
  field :serialized_taxonomies, 3, type: :bool, json_name: "serializedTaxonomies", oneof: 0
end

defmodule Google.Cloud.Datacatalog.V1beta1.ExportTaxonomiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.SerializedTaxonomy
end

defmodule Google.Cloud.Datacatalog.V1beta1.PolicyTagManagerSerialization.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.datacatalog.v1beta1.PolicyTagManagerSerialization",
    protoc_gen_elixir_version: "0.14.1"

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
