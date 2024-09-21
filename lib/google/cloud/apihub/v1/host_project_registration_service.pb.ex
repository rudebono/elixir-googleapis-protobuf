defmodule Google.Cloud.Apihub.V1.CreateHostProjectRegistrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :host_project_registration_id, 2,
    type: :string,
    json_name: "hostProjectRegistrationId",
    deprecated: false

  field :host_project_registration, 3,
    type: Google.Cloud.Apihub.V1.HostProjectRegistration,
    json_name: "hostProjectRegistration",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetHostProjectRegistrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListHostProjectRegistrationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListHostProjectRegistrationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :host_project_registrations, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.HostProjectRegistration,
    json_name: "hostProjectRegistrations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.HostProjectRegistration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :gcp_project, 2, type: :string, json_name: "gcpProject", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.HostProjectRegistrationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apihub.v1.HostProjectRegistrationService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateHostProjectRegistration,
      Google.Cloud.Apihub.V1.CreateHostProjectRegistrationRequest,
      Google.Cloud.Apihub.V1.HostProjectRegistration

  rpc :GetHostProjectRegistration,
      Google.Cloud.Apihub.V1.GetHostProjectRegistrationRequest,
      Google.Cloud.Apihub.V1.HostProjectRegistration

  rpc :ListHostProjectRegistrations,
      Google.Cloud.Apihub.V1.ListHostProjectRegistrationsRequest,
      Google.Cloud.Apihub.V1.ListHostProjectRegistrationsResponse
end

defmodule Google.Cloud.Apihub.V1.HostProjectRegistrationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.HostProjectRegistrationService.Service
end