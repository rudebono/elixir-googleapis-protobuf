defmodule Google.Cloud.Dataplex.V1.DataScanCatalogPublishingStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Dataplex.V1.DataScanCatalogPublishingStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Dataplex.V1.DataScanCatalogPublishingStatus.State,
    enum: true,
    deprecated: false
end
