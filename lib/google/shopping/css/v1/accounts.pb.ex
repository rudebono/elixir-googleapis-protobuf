defmodule Google.Shopping.Css.V1.Account.AccountType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACCOUNT_TYPE_UNSPECIFIED, 0
  field :CSS_GROUP, 1
  field :CSS_DOMAIN, 2
  field :MC_PRIMARY_CSS_MCA, 3
  field :MC_CSS_MCA, 4
  field :MC_MARKETPLACE_MCA, 5
  field :MC_OTHER_MCA, 6
  field :MC_STANDALONE, 7
  field :MC_MCA_SUBACCOUNT, 8
end

defmodule Google.Shopping.Css.V1.ListChildAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :label_id, 2, proto3_optional: true, type: :int64, json_name: "labelId"
  field :full_name, 3, proto3_optional: true, type: :string, json_name: "fullName"
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Css.V1.ListChildAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: Google.Shopping.Css.V1.Account
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Css.V1.GetAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :parent, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Shopping.Css.V1.UpdateAccountLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :label_ids, 2, repeated: true, type: :int64, json_name: "labelIds"
  field :parent, 3, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Shopping.Css.V1.Account do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :full_name, 2, type: :string, json_name: "fullName", deprecated: false
  field :display_name, 3, proto3_optional: true, type: :string, json_name: "displayName"

  field :homepage_uri, 4,
    proto3_optional: true,
    type: :string,
    json_name: "homepageUri",
    deprecated: false

  field :parent, 5, proto3_optional: true, type: :string
  field :label_ids, 6, repeated: true, type: :int64, json_name: "labelIds"
  field :automatic_label_ids, 7, repeated: true, type: :int64, json_name: "automaticLabelIds"

  field :account_type, 8,
    type: Google.Shopping.Css.V1.Account.AccountType,
    json_name: "accountType",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Css.V1.AccountsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.css.v1.AccountsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListChildAccounts,
      Google.Shopping.Css.V1.ListChildAccountsRequest,
      Google.Shopping.Css.V1.ListChildAccountsResponse

  rpc :GetAccount, Google.Shopping.Css.V1.GetAccountRequest, Google.Shopping.Css.V1.Account

  rpc :UpdateLabels,
      Google.Shopping.Css.V1.UpdateAccountLabelsRequest,
      Google.Shopping.Css.V1.Account
end

defmodule Google.Shopping.Css.V1.AccountsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Css.V1.AccountsService.Service
end
