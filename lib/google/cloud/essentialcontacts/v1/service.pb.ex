defmodule Google.Cloud.Essentialcontacts.V1.Contact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :email, 2, type: :string, deprecated: false

  field :notification_category_subscriptions, 3,
    repeated: true,
    type: Google.Cloud.Essentialcontacts.V1.NotificationCategory,
    json_name: "notificationCategorySubscriptions",
    enum: true,
    deprecated: false

  field :language_tag, 4, type: :string, json_name: "languageTag", deprecated: false

  field :validation_state, 8,
    type: Google.Cloud.Essentialcontacts.V1.ValidationState,
    json_name: "validationState",
    enum: true,
    deprecated: false

  field :validate_time, 9, type: Google.Protobuf.Timestamp, json_name: "validateTime"
end

defmodule Google.Cloud.Essentialcontacts.V1.ListContactsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Essentialcontacts.V1.ListContactsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contacts, 1, repeated: true, type: Google.Cloud.Essentialcontacts.V1.Contact
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Essentialcontacts.V1.GetContactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Essentialcontacts.V1.DeleteContactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Essentialcontacts.V1.CreateContactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :contact, 2, type: Google.Cloud.Essentialcontacts.V1.Contact, deprecated: false
end

defmodule Google.Cloud.Essentialcontacts.V1.UpdateContactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contact, 2, type: Google.Cloud.Essentialcontacts.V1.Contact, deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Essentialcontacts.V1.ComputeContactsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contacts, 1, repeated: true, type: Google.Cloud.Essentialcontacts.V1.Contact
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Essentialcontacts.V1.SendTestMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use GRPC.Service,
    name: "google.cloud.essentialcontacts.v1.EssentialContactsService",
    protoc_gen_elixir_version: "0.15.0"

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
