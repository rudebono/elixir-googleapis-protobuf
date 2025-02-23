defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemChangeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LINE_ITEM_CHANGE_TYPE_UNSPECIFIED, 0
  field :LINE_ITEM_CHANGE_TYPE_CREATE, 1
  field :LINE_ITEM_CHANGE_TYPE_UPDATE, 2
  field :LINE_ITEM_CHANGE_TYPE_CANCEL, 3
  field :LINE_ITEM_CHANGE_TYPE_REVERT_CANCELLATION, 4
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemChangeState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LINE_ITEM_CHANGE_STATE_UNSPECIFIED, 0
  field :LINE_ITEM_CHANGE_STATE_PENDING_APPROVAL, 1
  field :LINE_ITEM_CHANGE_STATE_APPROVED, 2
  field :LINE_ITEM_CHANGE_STATE_COMPLETED, 3
  field :LINE_ITEM_CHANGE_STATE_REJECTED, 4
  field :LINE_ITEM_CHANGE_STATE_ABANDONED, 5
  field :LINE_ITEM_CHANGE_STATE_ACTIVATING, 6
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemChangeStateReasonType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LINE_ITEM_CHANGE_STATE_REASON_TYPE_UNSPECIFIED, 0
  field :LINE_ITEM_CHANGE_STATE_REASON_TYPE_EXPIRED, 1
  field :LINE_ITEM_CHANGE_STATE_REASON_TYPE_USER_CANCELLED, 2
  field :LINE_ITEM_CHANGE_STATE_REASON_TYPE_SYSTEM_CANCELLED, 3
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.Order do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 10, type: :string, json_name: "displayName", deprecated: false

  field :line_items, 6,
    repeated: true,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItem,
    json_name: "lineItems",
    deprecated: false

  field :cancelled_line_items, 7,
    repeated: true,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItem,
    json_name: "cancelledLineItems",
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 11, type: :string
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :line_item_id, 1, type: :string, json_name: "lineItemId", deprecated: false

  field :line_item_info, 2,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemInfo,
    json_name: "lineItemInfo",
    deprecated: false

  field :pending_change, 3,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemChange,
    json_name: "pendingChange",
    deprecated: false

  field :change_history, 4,
    repeated: true,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemChange,
    json_name: "changeHistory",
    deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :change_id, 1, type: :string, json_name: "changeId", deprecated: false

  field :change_type, 2,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemChangeType,
    json_name: "changeType",
    enum: true,
    deprecated: false

  field :old_line_item_info, 3,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemInfo,
    json_name: "oldLineItemInfo",
    deprecated: false

  field :new_line_item_info, 4,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemInfo,
    json_name: "newLineItemInfo"

  field :change_state, 5,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemChangeState,
    json_name: "changeState",
    enum: true,
    deprecated: false

  field :state_reason, 6, type: :string, json_name: "stateReason", deprecated: false

  field :change_state_reason_type, 10,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemChangeStateReasonType,
    json_name: "changeStateReasonType",
    enum: true,
    deprecated: false

  field :change_effective_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "changeEffectiveTime",
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.LineItemInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :offer, 13, type: :string, deprecated: false

  field :parameters, 9,
    repeated: true,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.Parameter,
    deprecated: false

  field :subscription, 10,
    type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.Subscription,
    deprecated: false
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.Parameter.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :kind, 0

  field :int64_value, 3, type: :int64, json_name: "int64Value", oneof: 0
  field :string_value, 4, type: :string, json_name: "stringValue", oneof: 0
  field :double_value, 5, type: :double, json_name: "doubleValue", oneof: 0
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.Parameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.Parameter.Value
end

defmodule Google.Cloud.Commerce.Consumer.Procurement.V1alpha1.Subscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 1, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :auto_renewal_enabled, 2, type: :bool, json_name: "autoRenewalEnabled"
end
