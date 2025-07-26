defmodule Google.Cloud.Alloydb.V1alpha.GCAEntitlementType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :GCA_ENTITLEMENT_TYPE_UNSPECIFIED, 0
  field :GCA_STANDARD, 1
end

defmodule Google.Cloud.Alloydb.V1alpha.GeminiClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entitled, 1, type: :bool, deprecated: true
end

defmodule Google.Cloud.Alloydb.V1alpha.GeminiInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entitled, 1, type: :bool, deprecated: true
end

defmodule Google.Cloud.Alloydb.V1alpha.GCAInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gca_entitlement, 1,
    type: Google.Cloud.Alloydb.V1alpha.GCAEntitlementType,
    json_name: "gcaEntitlement",
    enum: true,
    deprecated: false
end
