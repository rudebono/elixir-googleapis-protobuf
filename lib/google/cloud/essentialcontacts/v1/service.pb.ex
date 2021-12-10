defmodule Google.Cloud.Essentialcontacts.V1.Contact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          email: String.t(),
          notification_category_subscriptions: [
            Google.Cloud.Essentialcontacts.V1.NotificationCategory.t()
          ],
          language_tag: String.t(),
          validation_state: Google.Cloud.Essentialcontacts.V1.ValidationState.t(),
          validate_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            email: "",
            notification_category_subscriptions: [],
            language_tag: "",
            validation_state: :VALIDATION_STATE_UNSPECIFIED,
            validate_time: nil

  field :name, 1, type: :string
  field :email, 2, type: :string

  field :notification_category_subscriptions, 3,
    repeated: true,
    type: Google.Cloud.Essentialcontacts.V1.NotificationCategory,
    json_name: "notificationCategorySubscriptions",
    enum: true

  field :language_tag, 4, type: :string, json_name: "languageTag"

  field :validation_state, 8,
    type: Google.Cloud.Essentialcontacts.V1.ValidationState,
    json_name: "validationState",
    enum: true

  field :validate_time, 9, type: Google.Protobuf.Timestamp, json_name: "validateTime"
end
defmodule Google.Cloud.Essentialcontacts.V1.ListContactsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Essentialcontacts.V1.ListContactsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contacts: [Google.Cloud.Essentialcontacts.V1.Contact.t()],
          next_page_token: String.t()
        }

  defstruct contacts: [],
            next_page_token: ""

  field :contacts, 1, repeated: true, type: Google.Cloud.Essentialcontacts.V1.Contact
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Essentialcontacts.V1.GetContactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Essentialcontacts.V1.DeleteContactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Essentialcontacts.V1.CreateContactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          contact: Google.Cloud.Essentialcontacts.V1.Contact.t() | nil
        }

  defstruct parent: "",
            contact: nil

  field :parent, 1, type: :string, deprecated: false
  field :contact, 2, type: Google.Cloud.Essentialcontacts.V1.Contact, deprecated: false
end
defmodule Google.Cloud.Essentialcontacts.V1.UpdateContactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contact: Google.Cloud.Essentialcontacts.V1.Contact.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct contact: nil,
            update_mask: nil

  field :contact, 2, type: Google.Cloud.Essentialcontacts.V1.Contact, deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Essentialcontacts.V1.ComputeContactsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          notification_categories: [Google.Cloud.Essentialcontacts.V1.NotificationCategory.t()],
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            notification_categories: [],
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false

  field :notification_categories, 6,
    repeated: true,
    type: Google.Cloud.Essentialcontacts.V1.NotificationCategory,
    json_name: "notificationCategories",
    enum: true

  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Essentialcontacts.V1.ComputeContactsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contacts: [Google.Cloud.Essentialcontacts.V1.Contact.t()],
          next_page_token: String.t()
        }

  defstruct contacts: [],
            next_page_token: ""

  field :contacts, 1, repeated: true, type: Google.Cloud.Essentialcontacts.V1.Contact
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Essentialcontacts.V1.SendTestMessageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contacts: [String.t()],
          resource: String.t(),
          notification_category: Google.Cloud.Essentialcontacts.V1.NotificationCategory.t()
        }

  defstruct contacts: [],
            resource: "",
            notification_category: :NOTIFICATION_CATEGORY_UNSPECIFIED

  field :contacts, 1, repeated: true, type: :string, deprecated: false
  field :resource, 2, type: :string, deprecated: false

  field :notification_category, 3,
    type: Google.Cloud.Essentialcontacts.V1.NotificationCategory,
    json_name: "notificationCategory",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Essentialcontacts.V1.EssentialContactsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.essentialcontacts.v1.EssentialContactsService"

  rpc :CreateContact,
      Google.Cloud.Essentialcontacts.V1.CreateContactRequest,
      Google.Cloud.Essentialcontacts.V1.Contact

  rpc :UpdateContact,
      Google.Cloud.Essentialcontacts.V1.UpdateContactRequest,
      Google.Cloud.Essentialcontacts.V1.Contact

  rpc :ListContacts,
      Google.Cloud.Essentialcontacts.V1.ListContactsRequest,
      Google.Cloud.Essentialcontacts.V1.ListContactsResponse

  rpc :GetContact,
      Google.Cloud.Essentialcontacts.V1.GetContactRequest,
      Google.Cloud.Essentialcontacts.V1.Contact

  rpc :DeleteContact,
      Google.Cloud.Essentialcontacts.V1.DeleteContactRequest,
      Google.Protobuf.Empty

  rpc :ComputeContacts,
      Google.Cloud.Essentialcontacts.V1.ComputeContactsRequest,
      Google.Cloud.Essentialcontacts.V1.ComputeContactsResponse

  rpc :SendTestMessage,
      Google.Cloud.Essentialcontacts.V1.SendTestMessageRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Essentialcontacts.V1.EssentialContactsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Essentialcontacts.V1.EssentialContactsService.Service
end
