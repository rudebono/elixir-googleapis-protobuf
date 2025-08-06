defmodule Google.Shopping.Merchant.Accounts.V1.OmnichannelSetting.LsfType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LSF_TYPE_UNSPECIFIED, 0
  field :GHLSF, 1
  field :MHLSF_BASIC, 2
  field :MHLSF_FULL, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1.ReviewState.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :FAILED, 2
  field :RUNNING, 3
  field :ACTION_REQUIRED, 4
end

defmodule Google.Shopping.Merchant.Accounts.V1.InventoryVerification.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTION_REQUIRED, 1
  field :INACTIVE, 5
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :SUSPENDED, 4
end

defmodule Google.Shopping.Merchant.Accounts.V1.OmnichannelSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :region_code, 2, type: :string, json_name: "regionCode", deprecated: false

  field :lsf_type, 12,
    type: Google.Shopping.Merchant.Accounts.V1.OmnichannelSetting.LsfType,
    json_name: "lsfType",
    enum: true,
    deprecated: false

  field :in_stock, 13,
    type: Google.Shopping.Merchant.Accounts.V1.InStock,
    json_name: "inStock",
    deprecated: false

  field :pickup, 14, type: Google.Shopping.Merchant.Accounts.V1.Pickup, deprecated: false

  field :lfp_link, 5,
    type: Google.Shopping.Merchant.Accounts.V1.LfpLink,
    json_name: "lfpLink",
    deprecated: false

  field :odo, 6, type: Google.Shopping.Merchant.Accounts.V1.OnDisplayToOrder, deprecated: false
  field :about, 7, type: Google.Shopping.Merchant.Accounts.V1.About, deprecated: false

  field :inventory_verification, 8,
    type: Google.Shopping.Merchant.Accounts.V1.InventoryVerification,
    json_name: "inventoryVerification",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ReviewState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Accounts.V1.InStock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Shopping.Merchant.Accounts.V1.ReviewState.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Pickup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Shopping.Merchant.Accounts.V1.ReviewState.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.LfpLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lfp_provider, 1, type: :string, json_name: "lfpProvider", deprecated: false
  field :external_account_id, 2, type: :string, json_name: "externalAccountId", deprecated: false

  field :state, 3,
    type: Google.Shopping.Merchant.Accounts.V1.ReviewState.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.OnDisplayToOrder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Shopping.Merchant.Accounts.V1.ReviewState.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.About do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Shopping.Merchant.Accounts.V1.ReviewState.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.InventoryVerification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Shopping.Merchant.Accounts.V1.InventoryVerification.State,
    enum: true,
    deprecated: false

  field :contact, 2, type: :string, deprecated: false
  field :contact_email, 3, type: :string, json_name: "contactEmail", deprecated: false

  field :contact_state, 4,
    type: Google.Shopping.Merchant.Accounts.V1.ReviewState.State,
    json_name: "contactState",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetOmnichannelSettingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListOmnichannelSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListOmnichannelSettingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :omnichannel_settings, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.OmnichannelSetting,
    json_name: "omnichannelSettings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1.CreateOmnichannelSettingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :omnichannel_setting, 2,
    type: Google.Shopping.Merchant.Accounts.V1.OmnichannelSetting,
    json_name: "omnichannelSetting",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.UpdateOmnichannelSettingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :omnichannel_setting, 1,
    type: Google.Shopping.Merchant.Accounts.V1.OmnichannelSetting,
    json_name: "omnichannelSetting",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.RequestInventoryVerificationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.RequestInventoryVerificationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :omnichannel_setting, 1,
    type: Google.Shopping.Merchant.Accounts.V1.OmnichannelSetting,
    json_name: "omnichannelSetting"
end

defmodule Google.Shopping.Merchant.Accounts.V1.OmnichannelSettingsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.OmnichannelSettingsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetOmnichannelSetting,
      Google.Shopping.Merchant.Accounts.V1.GetOmnichannelSettingRequest,
      Google.Shopping.Merchant.Accounts.V1.OmnichannelSetting

  rpc :ListOmnichannelSettings,
      Google.Shopping.Merchant.Accounts.V1.ListOmnichannelSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1.ListOmnichannelSettingsResponse

  rpc :CreateOmnichannelSetting,
      Google.Shopping.Merchant.Accounts.V1.CreateOmnichannelSettingRequest,
      Google.Shopping.Merchant.Accounts.V1.OmnichannelSetting

  rpc :UpdateOmnichannelSetting,
      Google.Shopping.Merchant.Accounts.V1.UpdateOmnichannelSettingRequest,
      Google.Shopping.Merchant.Accounts.V1.OmnichannelSetting

  rpc :RequestInventoryVerification,
      Google.Shopping.Merchant.Accounts.V1.RequestInventoryVerificationRequest,
      Google.Shopping.Merchant.Accounts.V1.RequestInventoryVerificationResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1.OmnichannelSettingsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.OmnichannelSettingsService.Service
end
