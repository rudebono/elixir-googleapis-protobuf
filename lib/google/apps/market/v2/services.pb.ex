defmodule Ccc.Hosted.Marketplace.V2.CustomerLicenseGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          application_id: String.t(),
          customer_id: String.t()
        }

  defstruct application_id: "",
            customer_id: ""

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :customer_id, 2, type: :string, json_name: "customerId"
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotificationListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          application_id: String.t(),
          max_results: non_neg_integer,
          start_token: String.t(),
          timestamp: non_neg_integer
        }

  defstruct application_id: "",
            max_results: 0,
            start_token: "",
            timestamp: 0

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :max_results, 2, type: :uint32, json_name: "maxResults"
  field :start_token, 3, type: :string, json_name: "startToken"
  field :timestamp, 4, type: :uint64
end
defmodule Ccc.Hosted.Marketplace.V2.UserLicenseGetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          application_id: String.t(),
          user_id: String.t()
        }

  defstruct application_id: "",
            user_id: ""

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :user_id, 2, type: :string, json_name: "userId"
end
defmodule Ccc.Hosted.Marketplace.V2.CustomerLicenseService.Service do
  @moduledoc false
  use GRPC.Service, name: "ccc.hosted.marketplace.v2.CustomerLicenseService"

  rpc :Get,
      Ccc.Hosted.Marketplace.V2.CustomerLicenseGetRequest,
      Ccc.Hosted.Marketplace.V2.CustomerLicense
end

defmodule Ccc.Hosted.Marketplace.V2.CustomerLicenseService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ccc.Hosted.Marketplace.V2.CustomerLicenseService.Service
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotificationService.Service do
  @moduledoc false
  use GRPC.Service, name: "ccc.hosted.marketplace.v2.LicenseNotificationService"

  rpc :List,
      Ccc.Hosted.Marketplace.V2.LicenseNotificationListRequest,
      Ccc.Hosted.Marketplace.V2.LicenseNotificationList
end

defmodule Ccc.Hosted.Marketplace.V2.LicenseNotificationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ccc.Hosted.Marketplace.V2.LicenseNotificationService.Service
end
defmodule Ccc.Hosted.Marketplace.V2.UserLicenseService.Service do
  @moduledoc false
  use GRPC.Service, name: "ccc.hosted.marketplace.v2.UserLicenseService"

  rpc :Get, Ccc.Hosted.Marketplace.V2.UserLicenseGetRequest, Ccc.Hosted.Marketplace.V2.UserLicense
end

defmodule Ccc.Hosted.Marketplace.V2.UserLicenseService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ccc.Hosted.Marketplace.V2.UserLicenseService.Service
end
