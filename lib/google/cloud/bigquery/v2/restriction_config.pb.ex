defmodule Google.Cloud.Bigquery.V2.RestrictionConfig.RestrictionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RESTRICTION_TYPE_UNSPECIFIED, 0
  field :RESTRICTED_DATA_EGRESS, 1
end

defmodule Google.Cloud.Bigquery.V2.RestrictionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Bigquery.V2.RestrictionConfig.RestrictionType,
    enum: true,
    deprecated: false
end