defmodule Google.Cloud.Dialogflow.V2beta1.PhoneNumber.LifecycleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :LIFECYCLE_STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :DELETE_REQUESTED, 2
end

defmodule Google.Cloud.Dialogflow.V2beta1.PhoneNumber do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :phone_number, 2, type: :string, json_name: "phoneNumber", deprecated: false

  field :conversation_profile, 3,
    type: :string,
    json_name: "conversationProfile",
    deprecated: false

  field :lifecycle_state, 4,
    type: Google.Cloud.Dialogflow.V2beta1.PhoneNumber.LifecycleState,
    json_name: "lifecycleState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeletePhoneNumberRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.UndeletePhoneNumberRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListPhoneNumbersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :show_deleted, 4, type: :bool, json_name: "showDeleted", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListPhoneNumbersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :phone_numbers, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.PhoneNumber,
    json_name: "phoneNumbers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdatePhoneNumberRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :phone_number, 1,
    type: Google.Cloud.Dialogflow.V2beta1.PhoneNumber,
    json_name: "phoneNumber",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.PhoneNumbers.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.PhoneNumbers",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListPhoneNumbers,
      Google.Cloud.Dialogflow.V2beta1.ListPhoneNumbersRequest,
      Google.Cloud.Dialogflow.V2beta1.ListPhoneNumbersResponse

  rpc :UpdatePhoneNumber,
      Google.Cloud.Dialogflow.V2beta1.UpdatePhoneNumberRequest,
      Google.Cloud.Dialogflow.V2beta1.PhoneNumber

  rpc :DeletePhoneNumber,
      Google.Cloud.Dialogflow.V2beta1.DeletePhoneNumberRequest,
      Google.Cloud.Dialogflow.V2beta1.PhoneNumber

  rpc :UndeletePhoneNumber,
      Google.Cloud.Dialogflow.V2beta1.UndeletePhoneNumberRequest,
      Google.Cloud.Dialogflow.V2beta1.PhoneNumber
end

defmodule Google.Cloud.Dialogflow.V2beta1.PhoneNumbers.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.PhoneNumbers.Service
end
