defmodule Google.Cloud.Alloydb.V1beta.GCAEntitlementType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GCA_ENTITLEMENT_TYPE_UNSPECIFIED, 0
  field :GCA_STANDARD, 1
end

defmodule Google.Cloud.Alloydb.V1beta.GeminiClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entitled, 1, type: :bool, deprecated: true
end

defmodule Google.Cloud.Alloydb.V1beta.GeminiInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entitled, 1, type: :bool, deprecated: true
end

defmodule Google.Cloud.Alloydb.V1beta.GCAInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :gca_entitlement, 1,
    type: Google.Cloud.Alloydb.V1beta.GCAEntitlementType,
    json_name: "gcaEntitlement",
    enum: true,
    deprecated: false
end
