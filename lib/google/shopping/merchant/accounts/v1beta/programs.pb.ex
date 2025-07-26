defmodule Google.Shopping.Merchant.Accounts.V1beta.Program.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :NOT_ELIGIBLE, 1
  field :ELIGIBLE, 2
  field :ENABLED, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Program.Requirement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :documentation_uri, 2, type: :string, json_name: "documentationUri", deprecated: false

  field :affected_region_codes, 3,
    repeated: true,
    type: :string,
    json_name: "affectedRegionCodes",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Program do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :documentation_uri, 2, type: :string, json_name: "documentationUri", deprecated: false

  field :state, 3,
    type: Google.Shopping.Merchant.Accounts.V1beta.Program.State,
    enum: true,
    deprecated: false

  field :active_region_codes, 4,
    repeated: true,
    type: :string,
    json_name: "activeRegionCodes",
    deprecated: false

  field :unmet_requirements, 5,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Program.Requirement,
    json_name: "unmetRequirements",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetProgramRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListProgramsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListProgramsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :programs, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1beta.Program
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.EnableProgramRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.DisableProgramRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ProgramsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.ProgramsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetProgram,
      Google.Shopping.Merchant.Accounts.V1beta.GetProgramRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Program

  rpc :ListPrograms,
      Google.Shopping.Merchant.Accounts.V1beta.ListProgramsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ListProgramsResponse

  rpc :EnableProgram,
      Google.Shopping.Merchant.Accounts.V1beta.EnableProgramRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Program

  rpc :DisableProgram,
      Google.Shopping.Merchant.Accounts.V1beta.DisableProgramRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Program
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ProgramsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.ProgramsService.Service
end
