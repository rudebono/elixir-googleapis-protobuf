defmodule Google.Cloud.Essentialcontacts.V1.Contact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          email: String.t(),
          notification_category_subscriptions: [
            [Google.Cloud.Essentialcontacts.V1.NotificationCategory.t()]
          ],
          language_tag: String.t(),
          validation_state: Google.Cloud.Essentialcontacts.V1.ValidationState.t(),
          validate_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :email,
    :notification_category_subscriptions,
    :language_tag,
    :validation_state,
    :validate_time
  ]

  field :name, 1, type: :string
  field :email, 2, type: :string

  field :notification_category_subscriptions, 3,
    repeated: true,
    type: Google.Cloud.Essentialcontacts.V1.NotificationCategory,
    enum: true

  field :language_tag, 4, type: :string
  field :validation_state, 8, type: Google.Cloud.Essentialcontacts.V1.ValidationState, enum: true
  field :validate_time, 9, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Essentialcontacts.V1.ListContactsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Essentialcontacts.V1.ListContactsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contacts: [Google.Cloud.Essentialcontacts.V1.Contact.t()],
          next_page_token: String.t()
        }

  defstruct [:contacts, :next_page_token]

  field :contacts, 1, repeated: true, type: Google.Cloud.Essentialcontacts.V1.Contact
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Essentialcontacts.V1.GetContactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Essentialcontacts.V1.DeleteContactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Essentialcontacts.V1.CreateContactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          contact: Google.Cloud.Essentialcontacts.V1.Contact.t() | nil
        }

  defstruct [:parent, :contact]

  field :parent, 1, type: :string
  field :contact, 2, type: Google.Cloud.Essentialcontacts.V1.Contact
end

defmodule Google.Cloud.Essentialcontacts.V1.UpdateContactRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contact: Google.Cloud.Essentialcontacts.V1.Contact.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:contact, :update_mask]

  field :contact, 2, type: Google.Cloud.Essentialcontacts.V1.Contact
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Essentialcontacts.V1.ComputeContactsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          notification_categories: [[Google.Cloud.Essentialcontacts.V1.NotificationCategory.t()]],
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :notification_categories, :page_size, :page_token]

  field :parent, 1, type: :string

  field :notification_categories, 6,
    repeated: true,
    type: Google.Cloud.Essentialcontacts.V1.NotificationCategory,
    enum: true

  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Essentialcontacts.V1.ComputeContactsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contacts: [Google.Cloud.Essentialcontacts.V1.Contact.t()],
          next_page_token: String.t()
        }

  defstruct [:contacts, :next_page_token]

  field :contacts, 1, repeated: true, type: Google.Cloud.Essentialcontacts.V1.Contact
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Essentialcontacts.V1.SendTestMessageRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          contacts: [String.t()],
          resource: String.t(),
          notification_category: Google.Cloud.Essentialcontacts.V1.NotificationCategory.t()
        }

  defstruct [:contacts, :resource, :notification_category]

  field :contacts, 1, repeated: true, type: :string
  field :resource, 2, type: :string

  field :notification_category, 3,
    type: Google.Cloud.Essentialcontacts.V1.NotificationCategory,
    enum: true
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
