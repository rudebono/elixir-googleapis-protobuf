defmodule Google.Cloud.Cloudcontrolspartner.V1.EkmMetadata.EkmSolution do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EKM_SOLUTION_UNSPECIFIED, 0
  field :FORTANIX, 1
  field :FUTUREX, 2
  field :THALES, 3
  field :VIRTRU, 4
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.Partner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :skus, 3, repeated: true, type: Google.Cloud.Cloudcontrolspartner.V1.Sku

  field :ekm_solutions, 4,
    repeated: true,
    type: Google.Cloud.Cloudcontrolspartner.V1.EkmMetadata,
    json_name: "ekmSolutions"

  field :operated_cloud_regions, 5,
    repeated: true,
    type: :string,
    json_name: "operatedCloudRegions"

  field :partner_project_id, 7, type: :string, json_name: "partnerProjectId"

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.GetPartnerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.Sku do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Cloudcontrolspartner.V1.EkmMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ekm_solution, 1,
    type: Google.Cloud.Cloudcontrolspartner.V1.EkmMetadata.EkmSolution,
    json_name: "ekmSolution",
    enum: true

  field :ekm_endpoint_uri, 2, type: :string, json_name: "ekmEndpointUri"
end