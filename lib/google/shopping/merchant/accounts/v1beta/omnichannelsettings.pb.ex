defmodule Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSetting.LsfType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LSF_TYPE_UNSPECIFIED, 0
  field :GHLSF, 1
  field :MHLSF_BASIC, 2
  field :MHLSF_FULL, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ReviewState.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :FAILED, 2
  field :RUNNING, 3
  field :ACTION_REQUIRED, 4
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.InventoryVerification.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTION_REQUIRED, 1
  field :INACTIVE, 5
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :SUSPENDED, 4
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :region_code, 2, type: :string, json_name: "regionCode", deprecated: false

  field :lsf_type, 12,
    type: Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSetting.LsfType,
    json_name: "lsfType",
    enum: true,
    deprecated: false

  field :in_stock, 13,
    type: Google.Shopping.Merchant.Accounts.V1beta.InStock,
    json_name: "inStock",
    deprecated: false

  field :pickup, 14, type: Google.Shopping.Merchant.Accounts.V1beta.Pickup, deprecated: false

  field :lfp_link, 5,
    type: Google.Shopping.Merchant.Accounts.V1beta.LfpLink,
    json_name: "lfpLink",
    deprecated: false

  field :odo, 6,
    type: Google.Shopping.Merchant.Accounts.V1beta.OnDisplayToOrder,
    deprecated: false

  field :about, 7, type: Google.Shopping.Merchant.Accounts.V1beta.About, deprecated: false

  field :inventory_verification, 8,
    type: Google.Shopping.Merchant.Accounts.V1beta.InventoryVerification,
    json_name: "inventoryVerification",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ReviewState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.InStock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.ReviewState.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Pickup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.ReviewState.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.LfpLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lfp_provider, 1, type: :string, json_name: "lfpProvider", deprecated: false
  field :external_account_id, 2, type: :string, json_name: "externalAccountId", deprecated: false

  field :state, 3,
    type: Google.Shopping.Merchant.Accounts.V1beta.ReviewState.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OnDisplayToOrder do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.ReviewState.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.About do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.ReviewState.State,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.InventoryVerification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.InventoryVerification.State,
    enum: true,
    deprecated: false

  field :contact, 2, type: :string, deprecated: false
  field :contact_email, 3, type: :string, json_name: "contactEmail", deprecated: false

  field :contact_state, 4,
    type: Google.Shopping.Merchant.Accounts.V1beta.ReviewState.State,
    json_name: "contactState",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetOmnichannelSettingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListOmnichannelSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListOmnichannelSettingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :omnichannel_settings, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSetting,
    json_name: "omnichannelSettings"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CreateOmnichannelSettingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :omnichannel_setting, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSetting,
    json_name: "omnichannelSetting",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UpdateOmnichannelSettingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :omnichannel_setting, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSetting,
    json_name: "omnichannelSetting",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.RequestInventoryVerificationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.RequestInventoryVerificationResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :omnichannel_setting, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSetting,
    json_name: "omnichannelSetting"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSettingsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.OmnichannelSettingsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetOmnichannelSetting,
      Google.Shopping.Merchant.Accounts.V1beta.GetOmnichannelSettingRequest,
      Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSetting

  rpc :ListOmnichannelSettings,
      Google.Shopping.Merchant.Accounts.V1beta.ListOmnichannelSettingsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ListOmnichannelSettingsResponse

  rpc :CreateOmnichannelSetting,
      Google.Shopping.Merchant.Accounts.V1beta.CreateOmnichannelSettingRequest,
      Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSetting

  rpc :UpdateOmnichannelSetting,
      Google.Shopping.Merchant.Accounts.V1beta.UpdateOmnichannelSettingRequest,
      Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSetting

  rpc :RequestInventoryVerification,
      Google.Shopping.Merchant.Accounts.V1beta.RequestInventoryVerificationRequest,
      Google.Shopping.Merchant.Accounts.V1beta.RequestInventoryVerificationResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSettingsService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Accounts.V1beta.OmnichannelSettingsService.Service
end
