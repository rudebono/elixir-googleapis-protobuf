defmodule Google.Shopping.Merchant.Accounts.V1beta.EmailPreferences.OptInState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OPT_IN_STATE_UNSPECIFIED, 0
  field :OPTED_OUT, 1
  field :OPTED_IN, 2
  field :UNCONFIRMED, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.EmailPreferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :news_and_tips, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.EmailPreferences.OptInState,
    json_name: "newsAndTips",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetEmailPreferencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UpdateEmailPreferencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :email_preferences, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.EmailPreferences,
    json_name: "emailPreferences",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.EmailPreferencesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.EmailPreferencesService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetEmailPreferences,
      Google.Shopping.Merchant.Accounts.V1beta.GetEmailPreferencesRequest,
      Google.Shopping.Merchant.Accounts.V1beta.EmailPreferences

  rpc :UpdateEmailPreferences,
      Google.Shopping.Merchant.Accounts.V1beta.UpdateEmailPreferencesRequest,
      Google.Shopping.Merchant.Accounts.V1beta.EmailPreferences
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.EmailPreferencesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.EmailPreferencesService.Service
end
