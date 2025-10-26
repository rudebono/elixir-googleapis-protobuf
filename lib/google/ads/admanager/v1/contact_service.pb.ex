defmodule Google.Ads.Admanager.V1.GetContactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListContactsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListContactsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contacts, 1, repeated: true, type: Google.Ads.Admanager.V1.Contact
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreateContactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :contact, 2, type: Google.Ads.Admanager.V1.Contact, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateContactsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.CreateContactRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateContactsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contacts, 1, repeated: true, type: Google.Ads.Admanager.V1.Contact
end

defmodule Google.Ads.Admanager.V1.UpdateContactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contact, 1, type: Google.Ads.Admanager.V1.Contact, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdateContactsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.UpdateContactRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdateContactsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contacts, 1, repeated: true, type: Google.Ads.Admanager.V1.Contact
end

defmodule Google.Ads.Admanager.V1.ContactService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.ContactService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetContact, Google.Ads.Admanager.V1.GetContactRequest, Google.Ads.Admanager.V1.Contact

  rpc :ListContacts,
      Google.Ads.Admanager.V1.ListContactsRequest,
      Google.Ads.Admanager.V1.ListContactsResponse

  rpc :CreateContact,
      Google.Ads.Admanager.V1.CreateContactRequest,
      Google.Ads.Admanager.V1.Contact

  rpc :BatchCreateContacts,
      Google.Ads.Admanager.V1.BatchCreateContactsRequest,
      Google.Ads.Admanager.V1.BatchCreateContactsResponse

  rpc :UpdateContact,
      Google.Ads.Admanager.V1.UpdateContactRequest,
      Google.Ads.Admanager.V1.Contact

  rpc :BatchUpdateContacts,
      Google.Ads.Admanager.V1.BatchUpdateContactsRequest,
      Google.Ads.Admanager.V1.BatchUpdateContactsResponse
end

defmodule Google.Ads.Admanager.V1.ContactService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.ContactService.Service
end
