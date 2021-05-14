defmodule Google.Ads.Googleads.V5.Services.UploadUserDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: {atom, any},
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V5.Services.UserDataOperation.t()]
        }

  defstruct [:metadata, :customer_id, :operations]

  oneof :metadata, 0
  field :customer_id, 1, type: :string
  field :operations, 3, repeated: true, type: Google.Ads.Googleads.V5.Services.UserDataOperation

  field :customer_match_user_list_metadata, 2,
    type: Google.Ads.Googleads.V5.Common.CustomerMatchUserListMetadata,
    oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.UserDataOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V5.Common.UserData, oneof: 0
  field :remove, 2, type: Google.Ads.Googleads.V5.Common.UserData, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.UploadUserDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          upload_date_time: Google.Protobuf.StringValue.t() | nil,
          received_operations_count: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [:upload_date_time, :received_operations_count]

  field :upload_date_time, 1, type: Google.Protobuf.StringValue
  field :received_operations_count, 2, type: Google.Protobuf.Int32Value
end

defmodule Google.Ads.Googleads.V5.Services.UserDataService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.UserDataService"

  rpc :UploadUserData,
      Google.Ads.Googleads.V5.Services.UploadUserDataRequest,
      Google.Ads.Googleads.V5.Services.UploadUserDataResponse
end

defmodule Google.Ads.Googleads.V5.Services.UserDataService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.UserDataService.Service
end
