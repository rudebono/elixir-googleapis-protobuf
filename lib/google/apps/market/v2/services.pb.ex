defmodule Ccc.Hosted.Marketplace.V2.CustomerLicenseGetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :customer_id, 2, type: :string, json_name: "customerId"
end
defmodule Ccc.Hosted.Marketplace.V2.LicenseNotificationListRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :max_results, 2, type: :uint32, json_name: "maxResults"
  field :start_token, 3, type: :string, json_name: "startToken"
  field :timestamp, 4, type: :uint64
end
defmodule Ccc.Hosted.Marketplace.V2.UserLicenseGetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :user_id, 2, type: :string, json_name: "userId"
end
defmodule Ccc.Hosted.Marketplace.V2.CustomerLicenseService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "ccc.hosted.marketplace.v2.CustomerLicenseService",
    protoc_gen_elixir_version: "0.10.0"

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
  use GRPC.Service,
    name: "ccc.hosted.marketplace.v2.LicenseNotificationService",
    protoc_gen_elixir_version: "0.10.0"

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
  use GRPC.Service,
    name: "ccc.hosted.marketplace.v2.UserLicenseService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :Get, Ccc.Hosted.Marketplace.V2.UserLicenseGetRequest, Ccc.Hosted.Marketplace.V2.UserLicense
end

defmodule Ccc.Hosted.Marketplace.V2.UserLicenseService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Ccc.Hosted.Marketplace.V2.UserLicenseService.Service
end
