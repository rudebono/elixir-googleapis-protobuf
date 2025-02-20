defmodule Google.Cloud.Support.V2.GetCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Support.V2.CreateCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :case, 2, type: Google.Cloud.Support.V2.Case, deprecated: false
end

defmodule Google.Cloud.Support.V2.ListCasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Support.V2.ListCasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cases, 1, repeated: true, type: Google.Cloud.Support.V2.Case
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2.SearchCasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 4, type: :string
  field :query, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Support.V2.SearchCasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cases, 1, repeated: true, type: Google.Cloud.Support.V2.Case
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2.EscalateCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :escalation, 2, type: Google.Cloud.Support.V2.Escalation
end

defmodule Google.Cloud.Support.V2.UpdateCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :case, 1, type: Google.Cloud.Support.V2.Case, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Support.V2.CloseCaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Support.V2.SearchCaseClassificationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Support.V2.SearchCaseClassificationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :case_classifications, 1,
    repeated: true,
    type: Google.Cloud.Support.V2.CaseClassification,
    json_name: "caseClassifications"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Support.V2.CaseService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.support.v2.CaseService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetCase, Google.Cloud.Support.V2.GetCaseRequest, Google.Cloud.Support.V2.Case

  rpc :ListCases,
      Google.Cloud.Support.V2.ListCasesRequest,
      Google.Cloud.Support.V2.ListCasesResponse

  rpc :SearchCases,
      Google.Cloud.Support.V2.SearchCasesRequest,
      Google.Cloud.Support.V2.SearchCasesResponse

  rpc :CreateCase, Google.Cloud.Support.V2.CreateCaseRequest, Google.Cloud.Support.V2.Case

  rpc :UpdateCase, Google.Cloud.Support.V2.UpdateCaseRequest, Google.Cloud.Support.V2.Case

  rpc :EscalateCase, Google.Cloud.Support.V2.EscalateCaseRequest, Google.Cloud.Support.V2.Case

  rpc :CloseCase, Google.Cloud.Support.V2.CloseCaseRequest, Google.Cloud.Support.V2.Case

  rpc :SearchCaseClassifications,
      Google.Cloud.Support.V2.SearchCaseClassificationsRequest,
      Google.Cloud.Support.V2.SearchCaseClassificationsResponse
end

defmodule Google.Cloud.Support.V2.CaseService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Support.V2.CaseService.Service
end
