defmodule Ccc.Hosted.Marketplace.V2.CustomerLicense.Editions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          edition_id: String.t(),
          seat_count: integer,
          assigned_seats: integer
        }

  defstruct edition_id: "",
            seat_count: 0,
            assigned_seats: 0

  field :edition_id, 405, type: :string, json_name: "editionId", deprecated: true
  field :seat_count, 406, type: :int32, json_name: "seatCount", deprecated: true
  field :assigned_seats, 409, type: :int32, json_name: "assignedSeats", deprecated: true
end
defmodule Ccc.Hosted.Marketplace.V2.CustomerLicense do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          state: String.t(),
          application_id: String.t(),
          editions: [Ccc.Hosted.Marketplace.V2.CustomerLicense.Editions.t()],
          id: String.t(),
          customer_id: String.t()
        }

  defstruct kind: "",
            state: "",
            application_id: "",
            editions: [],
            id: "",
            customer_id: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          edition_id: String.t()
        }

  defstruct kind: "",
            edition_id: ""

  field :kind, 1, type: :string
  field :edition_id, 901, type: :string, json_name: "editionId", deprecated: true
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotification.Expiries do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          edition_id: String.t()
        }

  defstruct kind: "",
            edition_id: ""

  field :kind, 1, type: :string
  field :edition_id, 701, type: :string, json_name: "editionId", deprecated: true
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotification.Provisions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          edition_id: String.t(),
          seat_count: integer
        }

  defstruct kind: "",
            edition_id: "",
            seat_count: 0

  field :kind, 1, type: :string
  field :edition_id, 601, type: :string, json_name: "editionId", deprecated: true
  field :seat_count, 602, type: :int64, json_name: "seatCount"
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotification.Reassignments do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          user_id: String.t(),
          type: String.t(),
          edition_id: String.t()
        }

  defstruct kind: "",
            user_id: "",
            type: "",
            edition_id: ""

  field :kind, 1, type: :string
  field :user_id, 801, type: :string, json_name: "userId"
  field :type, 802, type: :string
  field :edition_id, 803, type: :string, json_name: "editionId", deprecated: true
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          application_id: String.t(),
          timestamp: integer,
          customer_id: String.t(),
          kind: String.t(),
          provisions: [Ccc.Hosted.Marketplace.V2.LicenseNotification.Provisions.t()],
          expiries: [Ccc.Hosted.Marketplace.V2.LicenseNotification.Expiries.t()],
          reassignments: [Ccc.Hosted.Marketplace.V2.LicenseNotification.Reassignments.t()],
          deletes: [Ccc.Hosted.Marketplace.V2.LicenseNotification.Deletes.t()]
        }

  defstruct id: "",
            application_id: "",
            timestamp: 0,
            customer_id: "",
            kind: "",
            provisions: [],
            expiries: [],
            reassignments: [],
            deletes: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          notifications: [Ccc.Hosted.Marketplace.V2.LicenseNotification.t()],
          next_page_token: String.t()
        }

  defstruct kind: "",
            notifications: [],
            next_page_token: ""

  field :kind, 1, type: :string
  field :notifications, 1007, repeated: true, type: Ccc.Hosted.Marketplace.V2.LicenseNotification
  field :next_page_token, 100_602, type: :string, json_name: "nextPageToken"
end
defmodule Ccc.Hosted.Marketplace.V2.UserLicense do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          enabled: boolean,
          state: String.t(),
          edition_id: String.t(),
          customer_id: String.t(),
          application_id: String.t(),
          id: String.t(),
          user_id: String.t()
        }

  defstruct kind: "",
            enabled: false,
            state: "",
            edition_id: "",
            customer_id: "",
            application_id: "",
            id: "",
            user_id: ""

  field :kind, 1, type: :string
  field :enabled, 2, type: :bool
  field :state, 3, type: :string
  field :edition_id, 4, type: :string, json_name: "editionId", deprecated: true
  field :customer_id, 5, type: :string, json_name: "customerId"
  field :application_id, 6, type: :string, json_name: "applicationId"
  field :id, 101, type: :string
  field :user_id, 102, type: :string, json_name: "userId"
end
