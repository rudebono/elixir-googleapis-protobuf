defmodule Google.Cloud.Essentialcontacts.V1.NotificationCategory do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :NOTIFICATION_CATEGORY_UNSPECIFIED
          | :ALL
          | :SUSPENSION
          | :SECURITY
          | :TECHNICAL
          | :BILLING
          | :LEGAL
          | :PRODUCT_UPDATES
          | :TECHNICAL_INCIDENTS

  field :NOTIFICATION_CATEGORY_UNSPECIFIED, 0
  field :ALL, 2
  field :SUSPENSION, 3
  field :SECURITY, 5
  field :TECHNICAL, 6
  field :BILLING, 7
  field :LEGAL, 8
  field :PRODUCT_UPDATES, 9
  field :TECHNICAL_INCIDENTS, 10
end

defmodule Google.Cloud.Essentialcontacts.V1.ValidationState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VALIDATION_STATE_UNSPECIFIED | :VALID | :INVALID

  field :VALIDATION_STATE_UNSPECIFIED, 0
  field :VALID, 1
  field :INVALID, 2
end
