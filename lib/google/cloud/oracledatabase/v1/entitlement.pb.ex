defmodule Google.Cloud.Oracledatabase.V1.Entitlement.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACCOUNT_NOT_LINKED, 1
  field :ACCOUNT_NOT_ACTIVE, 2
  field :ACTIVE, 3
  field :ACCOUNT_SUSPENDED, 4
end

defmodule Google.Cloud.Oracledatabase.V1.Entitlement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :cloud_account_details, 2,
    type: Google.Cloud.Oracledatabase.V1.CloudAccountDetails,
    json_name: "cloudAccountDetails"

  field :entitlement_id, 3, type: :string, json_name: "entitlementId", deprecated: false

  field :state, 4,
    type: Google.Cloud.Oracledatabase.V1.Entitlement.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.CloudAccountDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cloud_account, 1, type: :string, json_name: "cloudAccount", deprecated: false

  field :cloud_account_home_region, 2,
    type: :string,
    json_name: "cloudAccountHomeRegion",
    deprecated: false

  field :link_existing_account_uri, 3,
    proto3_optional: true,
    type: :string,
    json_name: "linkExistingAccountUri",
    deprecated: false

  field :account_creation_uri, 4,
    proto3_optional: true,
    type: :string,
    json_name: "accountCreationUri",
    deprecated: false
end
