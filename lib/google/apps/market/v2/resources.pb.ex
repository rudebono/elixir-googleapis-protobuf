defmodule Ccc.Hosted.Marketplace.V2.CustomerLicense.Editions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :edition_id, 405, type: :string, json_name: "editionId", deprecated: true
  field :seat_count, 406, type: :int32, json_name: "seatCount", deprecated: true
  field :assigned_seats, 409, type: :int32, json_name: "assignedSeats", deprecated: true
end
defmodule Ccc.Hosted.Marketplace.V2.CustomerLicense do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :kind, 1, type: :string
  field :state, 2, type: :string
  field :application_id, 3, type: :string, json_name: "applicationId"

  field :editions, 4,
    repeated: true,
    type: Ccc.Hosted.Marketplace.V2.CustomerLicense.Editions,
    deprecated: true

  field :id, 101, type: :string
  field :customer_id, 102, type: :string, json_name: "customerId"
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotification.Deletes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :kind, 1, type: :string
  field :edition_id, 901, type: :string, json_name: "editionId", deprecated: true
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotification.Expiries do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :kind, 1, type: :string
  field :edition_id, 701, type: :string, json_name: "editionId", deprecated: true
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotification.Provisions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :kind, 1, type: :string
  field :edition_id, 601, type: :string, json_name: "editionId", deprecated: true
  field :seat_count, 602, type: :int64, json_name: "seatCount"
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotification.Reassignments do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :kind, 1, type: :string
  field :user_id, 801, type: :string, json_name: "userId"
  field :type, 802, type: :string
  field :edition_id, 803, type: :string, json_name: "editionId", deprecated: true
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotification do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :id, 1, type: :string
  field :application_id, 2, type: :string, json_name: "applicationId"
  field :timestamp, 3, type: :int64
  field :customer_id, 4, type: :string, json_name: "customerId"
  field :kind, 5, type: :string

  field :provisions, 6,
    repeated: true,
    type: Ccc.Hosted.Marketplace.V2.LicenseNotification.Provisions

  field :expiries, 7, repeated: true, type: Ccc.Hosted.Marketplace.V2.LicenseNotification.Expiries

  field :reassignments, 8,
    repeated: true,
    type: Ccc.Hosted.Marketplace.V2.LicenseNotification.Reassignments

  field :deletes, 9, repeated: true, type: Ccc.Hosted.Marketplace.V2.LicenseNotification.Deletes
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotificationList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :kind, 1, type: :string
  field :notifications, 1007, repeated: true, type: Ccc.Hosted.Marketplace.V2.LicenseNotification
  field :next_page_token, 100_602, type: :string, json_name: "nextPageToken"
end
defmodule Ccc.Hosted.Marketplace.V2.UserLicense do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :kind, 1, type: :string
  field :enabled, 2, type: :bool
  field :state, 3, type: :string
  field :edition_id, 4, type: :string, json_name: "editionId", deprecated: true
  field :customer_id, 5, type: :string, json_name: "customerId"
  field :application_id, 6, type: :string, json_name: "applicationId"
  field :id, 101, type: :string
  field :user_id, 102, type: :string, json_name: "userId"
end
