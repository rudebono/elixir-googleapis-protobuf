defmodule Google.Ads.Admanager.V1.GetApplicationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListApplicationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListApplicationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :applications, 1, repeated: true, type: Google.Ads.Admanager.V1.Application
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.ApplicationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.ApplicationService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetApplication,
      Google.Ads.Admanager.V1.GetApplicationRequest,
      Google.Ads.Admanager.V1.Application

  rpc :ListApplications,
      Google.Ads.Admanager.V1.ListApplicationsRequest,
      Google.Ads.Admanager.V1.ListApplicationsResponse
end

defmodule Google.Ads.Admanager.V1.ApplicationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.ApplicationService.Service
end
