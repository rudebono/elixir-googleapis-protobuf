defmodule Google.Cloud.Licensemanager.V1.LicenseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LICENSE_TYPE_UNSPECIFIED, 0
  field :LICENSE_TYPE_PER_MONTH_PER_USER, 1
  field :LICENSE_TYPE_BRING_YOUR_OWN_LICENSE, 2
end

defmodule Google.Cloud.Licensemanager.V1.ActivationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTIVATION_STATE_UNSPECIFIED, 0
  field :ACTIVATION_STATE_KEY_REQUESTED, 1
  field :ACTIVATION_STATE_ACTIVATING, 2
  field :ACTIVATION_STATE_ACTIVATED, 3
  field :ACTIVATION_STATE_DEACTIVATING, 4
  field :ACTIVATION_STATE_DEACTIVATED, 5
  field :ACTIVATION_STATE_TERMINATED, 6
end

defmodule Google.Cloud.Licensemanager.V1.Configuration.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_ACTIVE, 1
  field :STATE_SUSPENDED, 2
  field :STATE_DELETED, 3
end

defmodule Google.Cloud.Licensemanager.V1.Product.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_PROVISIONING, 1
  field :STATE_RUNNING, 2
  field :STATE_TERMINATING, 3
  field :STATE_TERMINATED, 4
end

defmodule Google.Cloud.Licensemanager.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :STAGING, 2
  field :RUNNING, 3
  field :STOPPING, 4
  field :STOPPED, 5
  field :TERMINATED, 6
  field :REPAIRING, 7
end

defmodule Google.Cloud.Licensemanager.V1.Configuration.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Licensemanager.V1.Configuration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :product, 6, type: :string, deprecated: false

  field :license_type, 7,
    type: Google.Cloud.Licensemanager.V1.LicenseType,
    json_name: "licenseType",
    enum: true,
    deprecated: false

  field :current_billing_info, 8,
    type: Google.Cloud.Licensemanager.V1.BillingInfo,
    json_name: "currentBillingInfo",
    deprecated: false

  field :next_billing_info, 9,
    type: Google.Cloud.Licensemanager.V1.BillingInfo,
    json_name: "nextBillingInfo",
    deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Licensemanager.V1.Configuration.LabelsEntry,
    map: true,
    deprecated: false

  field :state, 10,
    type: Google.Cloud.Licensemanager.V1.Configuration.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.BillingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :current_billing_info, 0

  field :user_count_billing, 1,
    type: Google.Cloud.Licensemanager.V1.UserCountBillingInfo,
    json_name: "userCountBilling",
    oneof: 0,
    deprecated: false

  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.UserCountBillingInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_count, 1, type: :int32, json_name: "userCount", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.UserCountUsage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unique_user_count, 1, type: :int32, json_name: "uniqueUserCount", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.Product do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version, 2, type: :string, deprecated: false
  field :product_company, 3, type: :string, json_name: "productCompany", deprecated: false

  field :state, 4,
    type: Google.Cloud.Licensemanager.V1.Product.State,
    enum: true,
    deprecated: false

  field :sku, 5, type: :string, deprecated: false
  field :description, 6, type: :string, deprecated: false
  field :display_name, 7, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Licensemanager.V1.Instance.ProductActivationEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Licensemanager.V1.ActivationState, enum: true
end

defmodule Google.Cloud.Licensemanager.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Licensemanager.V1.Instance.LabelsEntry,
    map: true,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Licensemanager.V1.Instance.State,
    enum: true,
    deprecated: false

  field :region, 6, type: :string, deprecated: false

  field :product_activation, 7,
    repeated: true,
    type: Google.Cloud.Licensemanager.V1.Instance.ProductActivationEntry,
    json_name: "productActivation",
    map: true,
    deprecated: false

  field :license_version_id, 8, type: :string, json_name: "licenseVersionId", deprecated: false
  field :compute_instance, 9, type: :string, json_name: "computeInstance", deprecated: false
end

defmodule Google.Cloud.Licensemanager.V1.Usage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lima_instance, 1, type: :string, json_name: "limaInstance", deprecated: false
  field :users, 2, type: :int32
end
